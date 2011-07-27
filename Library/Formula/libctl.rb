require 'formula'

class Libctl < Formula
  url 'http://ab-initio.mit.edu/libctl/libctl-3.1.tar.gz'
  homepage 'http://ab-initio.mit.edu/wiki/index.php/Libctl'
  md5 '173fdc658b652a4ddfb983efc849e760'

  depends_on 'guile'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
