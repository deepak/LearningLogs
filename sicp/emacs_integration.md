# emacs for scheme

## how to pretty-print

can use 'M-x indent-region' like all the other emacs modes
but is there any way to pretty-print an expression or file ?

## see scheme doc

have to load scheme docs i guess. distrubuted as info files ?

## special forms

SICP says scheme syntax has a few special forms ?
does it make sense to syntax highlight them ?

## last value in repl

can we get the last value in the scheme REPL ?
like "_" in ruby's irb

## load file

'C-x C-l' is to load file into the inferior-scheme process.

see scheme-mode docs on how to:
- load sexp
- load region of code
- clear image and start over. must be something in the scheme REPL.
  scheme like LISP, stores an image to disk. so even though you kill the
  scheme inferior-process, and start it again. the image is loaded again.

MIT-scheme has 'scheme-compile-file' as well
need to try it out
compiling 'define.scm' creates:
- define.bin
- define.bci
- define.c
- define.o
- define.so
