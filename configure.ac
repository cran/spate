## 
## This file was made by adapting the corresponding 
## file in the 'fftw' R package.
##
## Process this file with autoconf to produce a configure script.
##

AC_PREREQ(2.61)

## ---[ VERSION ]-------------------------------------------------------------

AC_INIT()
### AC_CONFIG_AUX_DIR(src/build/autoconf)

## pick up compiler as will be used by R CMD INSTALL/SHLIB
if test -n "${R_HOME}"; then
  CC=`${R_HOME}/bin/R CMD config CC`
  CPP=`${R_HOME}/bin/R CMD config CPP`
  CFLAGS=`${R_HOME}/bin/R CMD config CFLAGS`
fi

AC_PROG_CPP
AC_PROG_CC

if test `uname` = "Darwin" ; then
  darwin="yes"
else
  darwin="no"
fi

## --- FFTW 3 ----------------------------------------------------------------
PKG_CHECK_MODULES(FFTW, fftw3)

## --- Output ----------------------------------------------------------------
AC_SUBST(FFTW_CFLAGS)
AC_SUBST(FFTW_LIBS)

AC_SUBST(CPPFLAGS)
AC_SUBST(LIBS)

AC_OUTPUT(src/Makevars)
