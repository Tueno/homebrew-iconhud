class Iconhud < Formula
  desc ""
  homepage "https://github.com/Tueno/IconHUD"
  url "https://github.com/Tueno/IconHUD/archive/1.1.zip"
  sha256 "a7ec9f0578996fe0db93423028da97d631a1824153b58be34a40ad7fb917c1b2"

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
