# To see all color options:
# for i in {0..7}; do echo -e "\e[0;3${i}m Color ${i} (0;3${i}) \e[00m"; echo -e "\e[1;3${i}m Bright Color ${i} (1;3${i}) \e[00m"; done
#   Black        (0;30)
#   Dark Gray    (1;30)
#   Red          (0;31)
#   Pink         (1;31)
#   Light Green  (0;32)
#   Green        (1;32)
#   Brown        (0;33)
#   Tan          (1;33)
#   Blue         (0;34)
#   Light Blue   (1;34)
#   Purple       (0;35)
#   Fuscia       (1;35)
#   Dark Cyan    (0;36)
#   Cyan         (1;36)
#   Light Gray   (0;37)
#   White        (1;37)


# Range - {2..7}
# Explicit - {2,4,6}
for colors in {2,4,6}{2,4,6}{2,3,4,6,7}{7..7}; do
  t=${colors:0:1}
  u=${colors:1:1}
  h=${colors:2:1}
  p=${colors:3:1}
  if [[ "${t}" == "${u}" || "${t}" == "${h}" || "${t}" == "${p}" || "${u}" == "${h}" || "${u}" == "${p}" || "${h}" == "${p}" ]]; then continue; fi
  
  
  # Regular Colors
  # echo -e "\e[0;3${t}m[15:22:01]\e[00m \e[0;3${u}moitcosaundj0\e[00m@\e[0;3${h}mvansmappwbcns01\e[00m \e[0;3${p}m$(pwd)\e[00m>\$ "
  echo -e "\e[0;3${t}m[15:22:01]\e[00m \e[0;3${u}moitcosaundj0\e[00m@\e[0;3${h}mvansmappwbcns01\e[00m \e[0;3${p}m$(pwd)\e[00m>\$ echo Hello\n"
  echo "t: \e[0;3${t}m, u: \e[0;3${u}m, h: \e[0;3${h}m, p: \e[0;3${p}m"
  
  # Bright colors
  if [[ "${t}" == "7" || "${u}" == "7" || "${h}" == "7" || "${p}" == "7" ]]; then continue; fi # Skip white
  # echo -e "\e[1;3${t}m[15:22:01]\e[00m \e[1;3${u}moitcosaundj0\e[00m@\e[1;3${h}mvansmappwbcns01\e[00m \e[1;3${p}m$(pwd)\e[00m>\$ "
  echo -e "\e[1;3${t}m[15:22:01]\e[00m \e[1;3${u}moitcosaundj0\e[00m@\e[1;3${h}mvansmappwbcns01\e[00m \e[1;3${p}m$(pwd)\e[00m>\$ echo Hello\n"
  echo "t: \e[1;3${t}m, u: \e[1;3${u}m, h: \e[1;3${h}m, p: \e[1;3${p}m"
done


# export PS1='\[\e[0;32m\][\t]\[\e[0m\] \[\e[0;36m\]\u\[\e[0m\]@\[\e[0;34m\]\h\[\e[0m\] \[\e[0;37m\]\w\[\e[0m\]\[\e[0;32m\]>\$\[\e[0m\] '
# export PS2='           \[\e[0;32m\]>\[\e[m\]  '
# export PS4='           \[\e[0;32m\]+\[\e[m\]  '


loopCount=0
echo "" > /tmp/ColorPromptPreview.ansi
for a in {0,1}; do
  for b in {32,33,34,36}; do # Time
    for c in {0,1}; do
      for d in {32,34,36}; do # User
        for e in {0,1}; do
          for f in {32,34,36}; do # Host
            for g in {0,1}; do
              for i in {31..37}; do # Path
                tc="${a};${b}"
                uc="${c};${d}"
                hc="${e};${f}"
                pc="${g};${i}"

                if [[ "${tc}" == "${uc}" || "${tc}" == "${ch}" || "${tc}" == "${pc}" || "${uc}" == "${hc}" || "${uc}" == "${pc}" || "${hc}" == "${pc}" ]]; then continue; fi

                # echo -e "\e[${tc}m[15:22:01]\e[00m \e[${uc}moitcosaundj0\e[00m@\e[${hc}mvansmappwbcns01\e[00m \e[${pc}m$(pwd)\e[00m>\$    = [${tc}m [${uc}m [${hc}m [${pc}m" >> /tmp/ColorPromptPreview.ansi
                echo -e "\e[0;${tc};3m[15:22:01] \e[0;${uc}moitcosaundj0\e[0m@\e[0;${hc}mvansmappwbcns01 \e[0;${pc};3m$(pwd)\e[0m>\$    = [${tc}m [${uc}m [${hc}m [${pc}m" >> /tmp/ColorPromptPreview.ansi
                ((loopCount++))
              done
            done
          done
        done
      done
    done
  done
done
echo "Total loops: ${loopCount}"