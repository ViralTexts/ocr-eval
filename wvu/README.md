# Test Evaluation on Wheeling Intelligencer

This is a test transcription of some passages from the July, 1866, Wheeling Daily Intelligencer.

The format is a series of JSON records, with newspaper page ID, cluster ID, and text transcription.  The field `fixed` is set to `true` when a record has been corrected.

The text does _not_ use XML syntax, so ampersands, angle brackets, etc., are transcribed literally as `&`, `<`, and so on.  Perhaps we'll need to change this at some point.

Garbage characters resulting from mis-recognizing horizontal and vertical rules as characters have been removed.

The LoC's OCR seems to be able to recognize a mix of large and small capitals as mixed case, so I've just transcribe it that way.  For example, MISS with the first capital letter larger should be `Miss` and not `MISS`.

No markup has been inserted to indicate font changes for italic, bold, small caps, blackletter, etc.

Some of the LoC OCR output seems to silently reassemble hyphenated words across line breaks. These have been re-separated using a literal (low-ASCII, not soft) hyphen.

Misspellings and erroneous punctuation have been retained.
