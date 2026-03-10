class Lucrativetext < Formula
  desc "A lightweight terminal text editor"
  homepage "https://github.com/amal-ak47/lucrativeText"
  url "https://github.com/amal-ak47/lucrativeText/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "c49aa15a247b86dbfd340fff91612932f8027c30347f946852f878bbb040014c"
  license "CC-BY-NC-4.0"

  def install
    system "make", "CC=#{ENV.cc}", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_predicate bin/"lucrativeText", :exist?
  end
end