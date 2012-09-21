Translation from SVN to Git of `book/svn.html` from a July 21, 2012
checkout of the SVN repository.

Build the page,

    $ make

and then view in a browser.

    $ firefox version-control.html

The build step uses `parse-template.py`, which executes shell commands
embedded in `version-control.html.tempate`, because I'm not consistent
enough at copy-pasting to keep the HTML up to date by hand.
