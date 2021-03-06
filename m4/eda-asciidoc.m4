# eda-asciidoc.m4                                                 -*-Autoconf-*-
# serial 1

dnl AsciiDoc documentation support
dnl Copyright (C) 2011  Peter Brett <peter@peter-b.co.uk>
dnl Copyright (C) 2011  Peter Clifton <pcjc2@cam.ac.uk>
dnl
dnl This library is free software; you can redistribute it and/or
dnl modify it under the terms of the GNU Lesser General Public
dnl License as published by the Free Software Foundation; either
dnl version 2.1 of the License, or (at your option) any later version.
dnl
dnl This library is distributed in the hope that it will be useful,
dnl but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
dnl Lesser General Public License for more details.
dnl
dnl You should have received a copy of the GNU Lesser General Public
dnl License along with this library; if not, write to the Free Software
dnl Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

# Check if the tools necessary for documentation generation with
# Asciidoc are available.
AC_DEFUN([AX_ASCIIDOC],
[
  AC_PREREQ([2.60])dnl
  AC_ARG_VAR([ASCIIDOC], [Path to asciidoc executable])
  AC_ARG_VAR([XSLTPROC], [Path to xsltproc executable])
  AC_ARG_VAR([A2X], [Path to a2x executable])
  AC_ARG_VAR([DBLATEX], [Path to dblatex executable])

  # Check for asciidoc
  AC_CHECK_PROG([ASCIIDOC], [asciidoc], [asciidoc], [no])
  if test "X$ASCIIDOC" = "Xno"; then
    AC_MSG_ERROR([The `asciidoc' program is required for documentation generation.])
  fi

  # Check for xsltproc
  AC_CHECK_PROG([XSLTPROC], [xsltproc], [xsltproc], [no])
  if test "X$XSLTPROC" = "Xno"; then
    AC_MSG_ERROR([The `xsltproc' XSLT stylesheet processor is required for documentation generation.])
  fi

  # Check for a2x
  AC_CHECK_PROG([A2X], [a2x], [a2x], [no])
  if test "X$A2X" = "Xno"; then
    AC_MSG_ERROR([The `a2x' AsciiDoc toolchain manager is required for documentation generation.])
  fi

  # Check for dblatex
  AC_CHECK_PROG([DBLATEX], [dblatex], [dblatex], [no])
  if test "X$DBLATEX" = "Xno"; then
    AC_MSG_ERROR([The `dblatex' Docbook XML to LaTeX convertor is required for documentation generation.])
  fi
])
