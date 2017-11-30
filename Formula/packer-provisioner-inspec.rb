class PackerProvisionerInspec < Formula
  desc "Run InSpec tests in Packer"
  homepage "https://github.com/devinturner/packer-provisioner-inspec"
  url "https://github.com/devinturner/packer-provisioner-inspec/archive/develop.zip"
  sha256 "4fe74bb213db40363576592c8d05054ba099a1805fd8b92308c9875ccfaf43d1"
  version "0.0.1"
  head "https://github.com/devinturner/packer-provisioner-inspec.git"

  depends_on "go" => :build
  depends_on "godep" => :build

  def install
    ENV["GOPATH"] = buildpath
    dir = buildpath/"src/github.com/devinturner/packer-provisioner-inspec"
    dir.install buildpath.children
    cd dir do
      system "godep", "restore"
      system "go", "build", "-o", bin/"packer-provisioner-inspec"
      prefix.install_metafiles
    end
  end

  test do
    lines = "#{bin}/packer-provisioner-inspec"
    assert_match "Please do not execute plugins directly", lines
  end
end
