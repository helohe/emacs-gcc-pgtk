

#+TITLE: emacs-gcc-pgtk - Dockerfile for building emacs.deb with native-comp and pure GTK


[!][Build deb package with Docker image](https://github.com/helohe/emacs-gcc-pgtk/actions/workflows/deploy.yml/badge.svg)](https://github.com/helohe/emacs-gcc-pgtk/actions/workflows/deploy.yml)

* Summary
This repository shows a Dockerfile to create a emacs deb package with native compilation and pure GTK for Debian Testing. 

** Notes:
1. The deb package can be found in [[https://github.com/konstare/emacs-gcc-pgtk/actions/workflows/deploy.yml?query=is%3Acompleted][GitHub Action]].
2. The emacs source files are [[https://git.savannah.gnu.org/cgit/emacs.git/log/][here]].
3. no xwidgets
4. no imagemagick. Emacs now supports resizing and rotating of images without ImageMagick.
5. all =.el= files are compiled. ~make NATIVE_FULL_AOT=1~
6. The emacs is built with sqlite, webp
** The package is compiled with flags:
+ --with-native-compilation
+ --with-pgtk
+ --with-mailutils
+ --without-xwidgets
+ --with-modules
+ --with-json
+ --without-makeinfo
+ --with-xinput2
+ CFLAGS="-O2 -pipe"

* Installation 1: Use [[https://github.com/konstare/emacs-gcc-pgtk/actions][GitHub Actions]]
The deb package with this recipe is built by =github= and can be found in [[https://github.com/konstare/emacs-gcc-pgtk/actions/workflows/deploy.yml?query=is%3Acompleted][GitHub Action]].


If the deb package is too old: 
1. fork the project
2. In =GitHub Actions= allow and run manually the workflow.
   
* Installation 2: Compile on your own computer
** Requirements
1. docker
** Compilation 
#+begin_src bash
git clone https://github.com/konstare/emacs-gcc-pgtk
cd emacs-gcc-pgtk
./build.sh
#+end_src
