# Jump to x86 documentation from Emacs

Requirements:

* `pdftotext` command line program from Poppler. On Linux, this
  program is probably already installed.
* [Intel 64 and IA-32 Architecture Software Developer Manual][pdf].
  Any PDF that contains the full instruction set reference will work.

Set `x86-lookup-pdf` to the path of your instruction set PDF (from the
above link), then use `M-x x86-lookup`. It will open the PDF at the
page for the chosen mnemonic. An index will be built before the first
lookup (takes about 10 seconds).

Suggested key binding:

~~~el
(global-set-key (kbd "C-h x") #'x86-lookup)
~~~

To customize PDF display, see `x86-lookup-browse-pdf-function`. There
are a number of functions available targeting popular PDF readers.
Pull requests with support for additional PDF readers are welcome.


[pdf]: http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html
