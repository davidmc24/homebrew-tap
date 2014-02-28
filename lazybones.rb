require 'formula'

class Lazybones < Formula
  homepage 'https://github.com/pledbrook/lazybones'
  url 'http://dl.bintray.com/pledbrook/lazybones-templates/lazybones-0.6.zip'
  sha1 'da7aa335ef582c971ec649f189bdedb2adba8c13'

  def install
    bin.install 'bin/lazybones'
    lib.install Dir['lib/*.jar']
  end

  test do
    system "#{bin}/lazybones", "--version"
  end
end
