/**************************************************************
 * Spelling
 *************************************************************/
// NOTE: Case Names
//  Misspelled case keywords are ignore if they are all upper or lower case
switch (statement.toUpperCase()) {
    case "CHANGEDTO":
    case "changedto":
    case "ChangedTo":
    default:
        break;
}

// NOTE: Ignore Words in Individual Files
//  Place the following at the top of a file if there are one or more words used only in that file, multiple times
// spell-checker:ignore list of words to ignore using space delimiter

// NOTE: Ignore Words on a Specific Line
//  If a word shows up as misspelled and is only used once, follow the line with a comment:
const s1 = "mispelled wordz"; // spell-checker:disable-line
// A misspelling on this line and forward would not be ignored

// Alternative:
// spell-checker:disable-next-line
const s2 = "mispelled wordz";
// A misspelling on this line and forward would not be ignored

// NOTE: For a particularly messy block of code, you can surround with
// spell-checker:disable
const mispelled = null;
const wordz = null;
// spell-checker:enable
// A misspelling on this line and forward would not be ignored

// Ensure Spell Checker ignores valid regex flags
const regex = "/^pattern/gmivsd";

/**************************************************************
 * ES Lint Warnings (JavaScript)
 *************************************************************/
// NOTE: If you are confident that an ESLint warning does not apply to code that is being marked as a lint error, 
//  then you can override it by placing the following comment before the line in question
// eslint-disable-next-line lint-warning-name

// NOTE: In a *very rare* case, a specific lint warning can be disabled for a block of code (or an entire file).
//  After placing the following comment (must be C++ style), that rule will remain disabled until the end fo the file,
//  or until explicitly re-enabled
/* eslint-disable lint-warning-name */
/* eslint-enable lint-warning-name */

// NOTE: If multiple warnings need to be disabled or ignored, a CSV list can be used with the comments

/**************************************************************
 * Code Highlighting Tags
 *************************************************************/
// TODO: Single line comment
// TODO.CATEGORY: Single line comment with category
/* TODO: Multi-line Comment (C++ Style)
 *   Additional details here
 */
// TODO: Multi-line Comment
//  Additional details here
// Normal colors resume when comment is not indented

const obj = {
    "field": "Hello", // TODO: Comment
    // TODO: Hello World
    "field2": "World",
};
/* Comment Block
 * TODO: This should be marked
 *  and this line too because it is indented (double space)
 * But not this line because it is not indented
 */

// Other styles are also supported like:
// <!-- TODO: HTML Style Comments -->
// # TODO: Python/Bash Style comments


// BUG: Single Bug Line Comment
// DEBUG: Single Debug Line Comment
/* Bug: Multi-line Comment (C++ Style)
 *  Inherits the colors of the tag when indented
 */
// BUG: Multi-line Comment
//  Inherits the colors of the tag when indented
// Normal colors resume when comment is not indented

// Make sure we don't get false positives since "debug" if an often used variable name
const debug = {
    "Debug": "Not Marked"
};
debug.key = "value";

const note = {
    "Note": "Not Marked"
};
note.key = "value";


// FIXME: Single FixMe Line Comment
// FIX: Single Fix Line Comment
/* FIXME: Multi-line Comment (C++ Style)
 *  Inherits the colors of the tag when indented
 */
// FIXME: Multi-line Comment
//  Inherits the colors of the tag when indented
// Normal colors resume when comment is not indented


// HACK: Single Hack Line Comment
/* HACK: Multi-line Comment (C++ Style)
 *  Inherits the colors of the tag when indented
 */
// HACK: Multi-line Comment
//  Inherits the colors of the tag when indented
// Normal colors resume when comment is not indented


// REVIEW: Single Review Line Comment
// OPTIMIZE: Single Optimize Line Comment
/* REVIEW: Multi-line Comment (C++ Style)
 *  Inherits the colors of the tag when indented
 */
// REVIEW: Multi-line Comment
//  Inherits the colors of the tag when indented
// Normal colors resume when comment is not indented

// UGLY: Single Ugly Line Comment
/* UGLY: Multi-line Comment (C++ Style)
 *  Inherits the colors of the tag when indented
 */
// UGLY: Multi-line Comment
//  Inherits the colors of the tag when indented
// Normal colors resume when comment is not indented


// NOTE: Single Note Line Comment
/* NOTE: Multi-line Comment (C++ Style)
 *  Inherits the colors of the tag when indented
 */
// NOTE: Multi-line Comment
//  Inherits the colors of the tag when indented
// Normal colors resume when comment is not indented


// IDEA: Single Idea Line Comment
/* IDEA: Multi-line Comment (C++ Style)
 *  Inherits the colors of the tag when indented
 */
// IDEA: Multi-line Comment
//  Inherits the colors of the tag when indented
// Normal colors resume when comment is not indented


// REGION: Non-Collapsible Region
const s3 = "Your code in here";
// END REGION

// #region Collapsible Region
const s4 =
    "Collapsible regions are supported in VS Code editor by using `region Title` and `endregion Comment` tags with a leading # char in some languages";
// #endregion Collapsible Region
