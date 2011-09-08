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

dist_bin_SCRIPTS=   pullrpms

man_MANS=           pullrpms.8

pkgdata_DATA=       zypp.conf.in

docdir=             $(datadir)/doc/packages/$(PACKAGE)

doc_DATA=           CHANGES COPYING README INSTALL

EXTRA_DIST=         CHANGES pullrpms.in pullrpms.8.in pullrpms.spec.in zypp.conf.in

subst=              sed \
			-e 's|@PACKAGE[@]|$(PACKAGE)|g' \
			-e 's|@PACKAGE_VERSION[@]|$(PACKAGE_VERSION)|g' \
			-e 's|@REPOSDIR[@]|$(REPOSDIR)|g' \
			-e 's|@CACHEDIR[@]|$(CACHEDIR)|g' \
			-e 's|@ZYPPER[@]|$(ZYPPER)|g' \
			-e 's|@CREATEREPO[@]|$(CREATEREPO)|g' \
			-e 's|@pkgdatadir[@]|$(pkgdatadir)|g' \
			-e 's|@bindir[@]|$(bindir)|g' \
			-e 's|@mandir[@]|$(mandir)|g'

SUFFIXES=           .in
.in:
		    rm -f $@; $(subst) < $< >$@

DISTCLEANFILES=     pullrpms pullrpms.8 pullrpms.spec

