require 'formula'

class Meep < Formula
  url 'http://ab-initio.mit.edu/meep/meep-1.1.1.tar.gz'
  homepage 'http://ab-initio.mit.edu/wiki/index.php/Meep'
  md5 '415e0cd312b6caa22b5dd612490e1ccf'

  depends_on 'harminv'
  depends_on 'libctl'
  depends_on 'hdf5'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
