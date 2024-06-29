pkgname="neovim"
pkgver="0.10.0"
pkgrel="1"
source=(
  "https://github.com/neovim/neovim/archive/refs/tags/v${pkgver}.tar.gz"
  "nview"
  "nvimdiff"

)
url='https://neovim.io/'
makedepends=("gettext" "libtool" "libtool-bin" "autoconf" "automake" "cmake" "g++" "pkg-config")
replaces=("neovim" "nvim" "neovim-runtime")
pkgdesc="Neovim is a vim fork maintained by the community"
sha256sums=(
  "372ea2584b0ea2a5a765844d95206bda9e4a57eaa1a2412a9a0726bab750f828"
  "781fe7cbcf3b06eb367af6143aef9795dea1b85125cd8535bd3e10a25eaf4090"
  "9c612682d1b7032eb09cb3a401e3ef2257c1a5d3ec995d9348ff1e1c04ba17bc"
)
maintainer=("Elsie19 <elsie19@pm.me>")
external_connection=true
repology=("project: ${pkgname}")

build() {
  cd "${_archive}"
  make CMAKE_BUILD_TYPE=Release CMAKE_INSTALL_PREFIX=/usr -j"${NCPU}"
}

package() {
  cd "${_archive}"
  make install DESTDIR="${pkgdir}"
  install -Dm644 "LICENSE.txt" -t "${pkgdir}/usr/share/licenses/${pkgname}"
  install -Dm644 "README.md" -t "${pkgdir}/usr/share/doc/${pkgname}"
  install -Dm755 "${srcdir}/nview" -t "${pkgdir}/usr/bin"
  install -Dm755 "${srcdir}/nvimdiff" -t "${pkgdir}/usr/bin"
}

post_install() {
  update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 100
  update-alternatives --install /usr/bin/view view /usr/bin/nview 100
  update-alternatives --install /usr/bin/vimdiff vimdiff /usr/bin/nvimdiff 100
}

pre_remove() {
  update-alternatives --remove vimdiff /usr/bin/nvimdiff
  update-alternatives --remove view /usr/bin/nview
  update-alternatives --remove vim /usr/bin/nvim
}
