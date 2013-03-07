require 'formula'

class AutopanoSiftC < Formula
  homepage 'http://wiki.panotools.org/Autopano-sift-C'
  url 'http://downloads.sourceforge.net/project/hugin/autopano-sift-C/autopano-sift-C-2.5.1/autopano-sift-C-2.5.1.tar.gz'
  sha1 'f8c5f4004ae51cb58acc5cedb065ae0ef3e19a8c'

  depends_on 'libpano'
  depends_on 'cmake' => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end

  def test
    system "#{bin}/autopano-sift-c | grep 'Version #{version} for hugin 0.7'"
  end
end
