$certs = Get-ChildItem Cert:\LocalMachine\Root
$bundleFile = "CABundle.pem"

# Initialize the file (Careful to not use \r\n chars)
Set-Content -NoNewline -Path $bundleFile ""

foreach ($cert in $certs) {
	$certBytes = $cert.Export([System.Security.Cryptography.X509Certificates.X509ContentType]::Cert)
	$base64Cert = [System.Convert]::ToBase64String($certBytes)
	
	# Split every 76 chars
	#$wrappedB64Cert = $base64Cert -split "(.{1,76})" | ForEach-Object { $_.Trim() }
	$wrappedB64Cert = $base64Cert -split "(.{1,76})" | Where-Object { $_ -ne "" }
	
	# Extract only the CN value from the string
	$cn = ($cert.Subject -split ", " | Where-Object {$_ -like "CN=*"}) -replace "CN=", ""
	
	# Write the certificate to the file with the standard PEM format headers
	#Add-Content -Path $bundleFile -Value $cert.Subject -NoNewline
	Add-Content -Path $bundleFile -Value $cn -NoNewline
	Add-Content -Path $bundleFile -Value "`n" -NoNewline
	# Add-Content -Path $bundleFile -Value "======================================================="
	Add-Content -Path $bundleFile -Value ("=" * $cn.Length) -NoNewline
	Add-Content -Path $bundleFile -Value "`n" -NoNewline
	Add-Content -Path $bundleFile -Value "-----BEGIN CERTIFICATE-----" -NoNewline
	Add-Content -Path $bundleFile -Value "`n" -NoNewline
	
	foreach ($line in $wrappedB64Cert) {
		Add-Content -Path $bundleFile -Value $line -NoNewline
		Add-Content -Path $bundleFile -Value "`n" -NoNewline
	}
	Add-Content -Path $bundleFile -Value "-----END CERTIFICATE-----`n" -NoNewline
	Add-Content -Path $bundleFile -Value "`n" -NoNewline
	
}