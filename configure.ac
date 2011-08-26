#
# pullrpms - Build an RPM repository from transitively resolved dependencies 
# 
# Copyright 2011 Archie L. Cobbs <archie@dellroad.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# $Id$
#

AC_INIT([pullrpms Build an RPM repository from transitively resolved dependencies], [1.0], [http://code.google.com/p/pullrpms/], [pullrpms])
AC_CONFIG_AUX_DIR(scripts)
AM_INIT_AUTOMAKE
dnl AM_MAINTAINER_MODE
AC_PREREQ(2.59)
AC_REVISION($Id$)
AC_PREFIX_DEFAULT(/usr)
AC_PROG_MAKE_SET

# Get git revision suffix
[GIT_SUFFIX=`echo '$Id$' | sed -e 's/^.Id: \([0-9a-f]\{8\}\).*$/\1/g'`]
AC_SUBST(GIT_SUFFIX)

# Configuration of directory names
AC_ARG_WITH([cachedir], [specify cache subdirectory name], [CACHEDIR="$withval"], [CACHEDIR="cache"])
AC_ARG_WITH([reposdir], [specify repos subdirectory name], [REPOSDIR="$withval"], [REPOSDIR="repos"])
AC_SUBST(CACHEDIR)
AC_SUBST(REPOSDIR)

# Check for required programs
AC_PROG_INSTALL
AC_PATH_PROG([ZYPPER], [zypper], [], [])
if test -z "${ZYPPER}"; then
    AC_MSG_ERROR[zypper not found];
fi
AC_PATH_PROG([CREATEREPO], [createrepo], [], [])
if test -z "${CREATEREPO}"; then
    AC_MSG_ERROR[createrepo not found];
fi

# Generated files
AC_CONFIG_FILES(Makefile)

# Go
AC_OUTPUT
