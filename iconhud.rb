class Iconhud < Formula
  desc ""
  homepage "https://github.com/Tueno/IconHUD"
  url "https://github.com/Tueno/IconHUD/archive/1.0.zip"
  sha256 "82475de0ff11ec2de2e90862a63790d7933a27c176ee4011ba25451db0ca5956"

  depends_on :xcode => ["8.0", :build]
  depends_on "ghostscript"
  depends_on "imagemagick"

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
  end

  test do
    system bin/"iconhud", "-h"
  end
end
