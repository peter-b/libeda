dnl                                                      -*-Autoconf-*-
dnl Process this file with autoconf to generate configure.
dnl
dnl The AX_* macros are defined in files in the top-level m4
dnl directory.

#####################################################################
# Set up configuration system
#####################################################################

AC_INIT([libeda], [0.1], [geda-bug@seul.org])
AC_PREREQ([2.60])

AC_CONFIG_SRCDIR([Makefile.am]) # FIXME
AC_CONFIG_AUX_DIR([build-tools])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_HEADER([config.h])

AM_INIT_AUTOMAKE([foreign])

#####################################################################
# Check for misc other tools
#####################################################################

AX_ASCIIDOC

#####################################################################
# Generate output
#####################################################################

AC_CONFIG_FILES([
  Makefile
  Documentation/Makefile
  ])

AC_OUTPUT
