class TfInstallProvider < Formula
  desc "Helper utility to install terraform providers"
  homepage "https://gist.github.com/gordonbondon/63b4247d248fa876d40a1559149aab6f"
  url "https://gist.github.com/gordonbondon/63b4247d248fa876d40a1559149aab6f/archive/f9f91194bb1ab68e8c76ec58513e1c6623647690.zip"
  version "1.0.9"
  sha256 "c2e67bd668df981e7b1a03fecd0bb02c24d53420143f36abdd0f3ac3537335b2"

  depends_on "coreutils"

  def install
    bin.install "tf-install-provider"
  end
end
