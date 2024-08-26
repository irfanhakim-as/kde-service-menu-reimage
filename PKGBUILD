# Maintainer: Irfan Hakim <irfanhakim.as@yahoo.com>
pkgname='kf6-service-menu-reimage'
pkgver=VERSION
pkgrel=1
pkgdesc="Manipulate images e their metadata"
arch=('any')
url="https://github.com/irfanhakim-as/kde-service-menu-reimage"
license=('GPL-3.0+')
depends=('dolphin' 'imagemagick' 'kdialog')
optdepends=('jhead: required for extracting exif data')
provides=()
conflicts=('kde-service-menu-reimage' 'kde-service-menu-reimage-mod')
replaces=()
source=("${url}/releases/download/v${pkgver}/kde-service-menu-reimage_${pkgver}_any.tar.gz")
md5sums=('SKIP')

pkgver() {
    cd "kde-service-menu-reimage_${pkgver}_any"
    source ./doc/package.conf
    echo "${__version__}"
}

package() {
	cd "kde-service-menu-reimage_${pkgver}_any"

    # determine installation paths
    bin_dir="$(qtpaths --install-prefix)/bin"
    servicemenu_dir="$(qtpaths --locate-dirs GenericDataLocation kio/servicemenus | sed 's/.*://')"
    doc_dir="$(qtpaths --install-prefix)/share/doc/kde-service-menu-reimage/"

    # install required binaries
    install -d "${bin_dir}" && \
    install -m 755 -p bin/* "${bin_dir}" && \
    # install required service menus
    install -d "${servicemenu_dir}" && \
    install -m 755 -p ServiceMenus/*.desktop "${servicemenu_dir}" && \
    # install documentation files
    install -d "${doc_dir}" && \
    install -m 644 -p doc/* "${doc_dir}"
}
