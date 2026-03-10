class Lucrativetext < Formula
  desc "A lightweight terminal text editor"
  homepage "https://github.com/amal-ak47/lucrativeText"
  url "https://github.com/amal-ak47/lucrativeText/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "79a25e0f7c3a1c042ed54b6f41fe051567ec81d639c40efe882ec25c270f5a16"
  license "CC-BY-NC-4.0"

  def install
    system "make", "CC=#{ENV.cc}", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_predicate bin/"lucrativeText", :exist?
  end
end