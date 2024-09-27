"""
Spelling
"""
# NOTE: Ignore Words in Individual Files
#  Place the following at the top of a file if there are one or more words used only in that file, multiple times
# spell-checker:ignore list of words to ignore using space delimiter

# NOTE: Ignore Words on a Specific Line
#  If a word shows up as misspelled and is only used once, follow the line with a comment:
s1 = "mispelled wordz" # spell-checker:disable-line
# A misspelling on this line and forward would not be ignored

# Alternative:
# spell-checker:disable-next-line
s2 = "mispelled wordz"
# A misspelling on this line and forward would not be ignored

# NOTE: For a particularly messy block of code, you can surround with
# spell-checker:disable
mispelled = null
wordz = null
# spell-checker:enable
# A misspelling on this line and forward would not be ignored

# Ensure Spell Checker ignores valid regex flags
regex = r"/^pattern/gmivsd"


"""
Code Highlighting Tags
"""
# TODO: Single line comment
# TODO.CATEGORY: Single line comment with category
/* TODO: Multi-line Comment (C++ Style)
 *   Additional details here
 */
# TODO: Multi-line Comment
#  Additional details here (indent with two or more leading spaces)
#  - Additional details here (leading double space)
# Normal colors resume when comment is not indented

obj = {
    "field": "Hello", # TODO: Comment
    # TODO: Hello World
    "field2": "World",
}
"""
 Comment Block
 # TODO: This should be marked
 #  and this line too because it is indented (indent with two or more leading spaces)
 #  and this line too because it is indented
 #   - This line also because we're still indented
 # But not this line because it is not indented (single space)
 Nor this line
"""


# BUG: Single Bug Line Comment
# DEBUG: Single Debug Line Comment
# BUG: Multi-line Comment
#  Inherits the colors of the tag when indented
# Normal colors resume when comment is not indented

# Make sure we don't get false positives since "debug" if an often used variable name
debug = {
    "Debug": "Not Marked"
}
debug.key = "value"

note = {
    "Note": "Not Marked"
}
note.key = "value"


# FIXME: Single FixMe Line Comment
# FIX: Single Fix Line Comment
# FIXME: Multi-line Comment
#  Inherits the colors of the tag when indented
# Normal colors resume when comment is not indented


# HACK: Single Hack Line Comment
# HACK: Multi-line Comment
#  Inherits the colors of the tag when indented
# Normal colors resume when comment is not indented


# REVIEW: Single Review Line Comment
# OPTIMIZE: Single Optimize Line Comment
# REVIEW: Multi-line Comment
#  Inherits the colors of the tag when indented
# Normal colors resume when comment is not indented

# UGLY: Single Ugly Line Comment
# UGLY: Multi-line Comment
#  Inherits the colors of the tag when indented
# Normal colors resume when comment is not indented


# NOTE: Single Note Line Comment
# NOTE: Multi-line Comment
#  Inherits the colors of the tag when indented
# Normal colors resume when comment is not indented


# IDEA: Single Idea Line Comment
# IDEA: Multi-line Comment
#  Inherits the colors of the tag when indented
# Normal colors resume when comment is not indented


# REGION: Non-Collapsible Region
s3 = "Your code in here"
# END REGION

# #region Collapsible Region
s4 =
    "Collapsible regions are supported in VS Code editor by using `region Title` and `endregion Comment` tags with a leading # char in some languages"
# #endregion Collapsible Region
