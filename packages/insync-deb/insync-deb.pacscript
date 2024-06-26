pkgname="insync-deb"
gives="insync"
pkgver="3.9.1.60010"
repology=("project: insync")
depends=("procps")
arch=('amd64')
codename="bullseye"
codename="$(cut -d':' -f2 <<< "${DISTRO}")"
case "${codename}" in
  sid | testing) codename="trixie" ;;
  devel | oracular) codename="noble" ;;
  *) ;;
esac
sha256sums=("c9a9e261648d36b2c049f74317fff99692c39b7ca6bf8546fdf32b95dc80580a")
sha565sums_devel=("c9a9e261648d36b2c049f74317fff99692c39b7ca6bf8546fdf32b95dc80580a")
sha565sums_oracular=("c9a9e261648d36b2c049f74317fff99692c39b7ca6bf8546fdf32b95dc80580a")
sha256sums_noble=("c9a9e261648d36b2c049f74317fff99692c39b7ca6bf8546fdf32b95dc80580a")
sha256sums_sid=("f204f6c4b65aff3accdd7dc05d33af1de94ed2d176c3fdffa8ecb0db007df2e6")
sha256sums_trixie=("f204f6c4b65aff3accdd7dc05d33af1de94ed2d176c3fdffa8ecb0db007df2e6")
sha256sums_bookworm=("c7ec225d000932a3b7b093b9b0d3c1c69c2de2c35ac680d9a4ca95d1ca2af185")
source=("https://cdn.insynchq.com/builds/linux/${pkgver}/insync_${pkgver}-${codename}_amd64.deb")
replaces=("insync")
pkgdesc="Manage your Google Drive, OneDrive, and Dropbox files straight from your Desktop"
maintainer=("Eric Renfro <psi-jack@linux-help.org>")
# vim:set ft=sh ts=2 sw=2 et:
