#!/bin/bash

#
# Script to regenerate all the GNU auto* gunk.
# Run this from the top directory of the source tree.
#
# If it looks like I don't know what I'm doing here, you're right.
#

set -e

echo "cleaning up"
rm -rf autom4te*.cache scripts aclocal.m4 configure config.log config.status .deps stamp-h1 scripts Makefile{,.in}
chmod -R u+w pullrpms-*.* 2>/dev/null || true
rm -rf *.o pullrpms{,.{8,spec,sh},-*.*{,.tar.gz}}
if [ "${1}" = '-C' ]; then
    exit 0
fi

ACLOCAL="aclocal"
AUTOMAKE="automake"
AUTOCONF="autoconf"

echo "running aclocal"
mkdir -p scripts
${ACLOCAL} ${ACLOCAL_ARGS} -I scripts

echo "running automake"
${AUTOMAKE} --add-missing -c --foreign

echo "running autoconf"
${AUTOCONF} -f -i

if [ "${1}" = '-c' ]; then
    echo "running configure"
    ./configure
fi

