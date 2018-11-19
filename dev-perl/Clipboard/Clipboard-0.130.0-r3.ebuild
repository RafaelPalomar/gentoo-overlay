# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR=KING
DIST_VERSION=0.13
inherit perl-module virtualx

DESCRIPTION="Copy and paste with any OS"

SLOT="0"
KEYWORDS="amd64 arm ppc ppc64 x86"
IUSE=""

# See bug 521890.
PATCHES=(
	"${FILESDIR}"/"${P}"-insecure-tempfile.patch
	"${FILESDIR}"/"${P}"-no-dot-inc.patch
	"${FILESDIR}"/"${P}"-Adding-compatibility-xclip.patch
)

RDEPEND="
x11-misc/xclip
dev-perl/File-Which
"

src_test() {
	virtx perl-module_src_test
}
