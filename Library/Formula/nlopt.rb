require 'formula'

class Nlopt < Formula
  url 'http://ab-initio.mit.edu/nlopt/nlopt-2.2.4.tar.gz'
  homepage 'http://ab-initio.mit.edu/wiki/index.php/NLopt'
  md5 '9c60c6380a10c6d2a06895f0e8756d4f'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-shared"
    system "make install"
  end
end
