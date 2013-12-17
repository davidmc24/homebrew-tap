require 'formula'

class Lazybones < Formula
  homepage 'https://github.com/pledbrook/lazybones'
  url 'http://dl.bintray.com/pledbrook/lazybones-templates/lazybones-0.4.zip'
  sha1 'fbba31014a28a0e3ed3317b55f5adf0f5eafb6fd'

  def install
    bin.install 'bin/lazybones'
    lib.install Dir['lib/*.jar']
  end

  test do
    system "#{bin}/lazybones", "--version"
  end
end
