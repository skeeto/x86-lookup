.POSIX:
EMACS = emacs
BATCH = $(EMACS) -batch -Q -L .

compile: x86-lookup.elc

clean:
	rm -f x86-lookup.elc

.SUFFIXES: .el .elc
.el.elc:
	$(BATCH) -f batch-byte-compile $^
