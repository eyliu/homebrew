require 'formula'

class Harminv < Formula
  url 'http://ab-initio.mit.edu/harminv/harminv-1.3.1.tar.gz'
  homepage 'http://ab-initio.mit.edu/wiki/index.php/Harminv'
  md5 'd3f49f1c90856b3b2e8b77dc4a99c37a'

  def install
    ENV.fortran
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--with-blas=-framework Accelerate"
    system "make install"
  end
end
