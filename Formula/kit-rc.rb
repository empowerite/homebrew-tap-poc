# kit-rc - the newest release candidate of kit, for those who want it before it is stable. kit.rb is the stable one,
# which the first stable release adds. Both install bin/kit, so only one of them is installed at a time.
#
# A release workflow of empowerite/kit rewrites url and sha256 for each release candidate; do not edit them by hand.
# see: https://github.com/empowerite/kit, docs/install.md
class KitRc < Formula
  desc "Rules for AI coding agents, and checks that they followed them"
  homepage "https://github.com/empowerite/kit"
  url "https://github.com/empowerite/kit/releases/download/release/0.1.0-rc.7/kit-0.1.0-rc.7.tar.gz"
  sha256 "e64ec6d2a3185b65b448bd0fbd19aac69170e2ad67dc4010f4d5714da0cc7e79"
  license "MIT"

  # What kit stands on before it chooses a toolchain. git is not here: Homebrew needs it already.
  depends_on "bash"
  depends_on "jq"
  depends_on "yq"

  conflicts_with "kit", because: "both install kit"

  def install
    libexec.install Dir["*"]
    # The release carries kittui for four platforms; keep this machine's, which is the one kit tui picks.
    keep = "kittui-#{OS.mac? ? "darwin" : "linux"}-#{Hardware::CPU.arm? ? "arm64" : "amd64"}"
    (libexec/"libexec").glob("kittui-*").each { |f| f.unlink if f.basename.to_s != keep }
    bin.install_symlink libexec/"bin/kit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kit version")
  end
end
