<!DOCTYPE html>
<html lang="en">

<head>
    <title>Code Highlighting Tags</title>
</head>

<body>
    {{-- -----------------------------------------------------------
    ---- Code Highlighting Tags
    ------------------------------------------------------------- --}}
    {{-- TODO: Single line comment --}}

    {{-- TODO.CATEGORY: Single line comment with category --}}

    {{-- TODO: Multi-line Comment
      -  Additional details here (indent with dash followed by two or more spaces)
      -  More details here (double space)
      - Resume normal colors when only single space is used or no dash
      --}}
    {{-- Normal colors resume when comment is not indented --}}

    <div>
        <h1>Hello World</h1> {{-- TODO: Comment --}}
        {{-- TODO: Hello World --}}
    </div>

    {{-- BUG: Single Bug Line Comment --}}
    {{-- DEBUG: Single Debug Line Comment --}}
    {{-- Bug: Multi-line Comment
      -  Inherits the colors of the tag when indented by two or more spaces after a dash
    --}}
    {{-- Normal colors resume when comment is not indented --}}

    {{-- FIXME: Single FixMe Line Comment --}}
    {{-- FIX: Single Fix Line Comment --}}
    {{-- FIXME: Multi-line Comment
      -  Inherits the colors of the tag when indented by two or more spaces after a dash
    --}}
    {{-- Normal colors resume when comment is not indented --}}


    {{-- HACK: Single Hack Line Comment --}}
    {{-- HACK: Multi-line Comment
      -  Inherits the colors of the tag when indented by two or more spaces after a dash
    --}}
    {{-- Normal colors resume when comment is not indented --}}


    {{-- REVIEW: Single Review Line Comment --}}
    {{-- OPTIMIZE: Single Optimize Line Comment
    {{--   REVIEW: Multi-line Comment
      -  Inherits the colors of the tag when indented by two or more spaces after a dash
    --}}
    {{-- Normal colors resume when comment is not indented --}}

    {{-- UGLY: Single Ugly Line Comment --}}
    {{-- UGLY: Multi-line Comment
      -  Inherits the colors of the tag when indented by two or more spaces after a dash
    --}}
    {{-- Normal colors resume when comment is not indented --}}


    {{-- NOTE: Single Note Line Comment --}}
    {{-- NOTE: Multi-line Comment
      -  Inherits the colors of the tag when indented by two or more spaces after a dash
    --}}
    {{-- Normal colors resume when comment is not indented --}}


    {{-- IDEA: Single Idea Line Comment --}}
    {{-- IDEA: Multi-line Comment
      -  Inherits the colors of the tag when indented by two or more spaces after a dash
    --}}
    {{-- Normal colors resume when comment is not indented --}}


    {{-- REGION: Non-Collapsible Region --}}
    $s3 = "Your code in here";
    {{-- END REGION --}}
</body>

</html>
