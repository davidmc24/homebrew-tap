require 'formula'

class Lazybones < Formula
  homepage 'https://github.com/pledbrook/lazybones'
  url 'http://dl.bintray.com/pledbrook/lazybones-templates/lazybones-0.5.zip'
  sha1 'c4ff553149e7b3dfde4ca8e6c9117d318320f879'

  def install
    bin.install 'bin/lazybones'
    lib.install Dir['lib/*.jar']
  end

  test do
    system "#{bin}/lazybones", "--version"
  end
end
