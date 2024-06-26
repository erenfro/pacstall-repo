pkgname="insync-deb"
gives="insync"
pkgver="3.9.1.60010"
repology=("project: insync")
depends=("procps")
arch=('amd64')
codename="bullseye"
codename="$(cut -d':' -f2 <<< "${DISTRO}")"
sha256sums=("c7ec225d000932a3b7b093b9b0d3c1c69c2de2c35ac680d9a4ca95d1ca2af185")
source=("https://cdn.insynchq.com/builds/linux/${pkgver}/insync_${pkgver}-${codename}_amd64.deb")
replaces=("insync")
pkgdesc="Manage your Google Drive, OneDrive, and Dropbox files straight from your Desktop"
maintainer=("Eric Renfro <psi-jack@linux-help.org>")
# vim:set ft=sh ts=2 sw=2 et:
