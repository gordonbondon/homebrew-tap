class Namerctl < Formula
  desc "A utility for controlling namerd"
  homepage "https://github.com/linkerd/namerctl"
  url "https://github.com/linkerd/namerctl/archive/55484b74eb771020e581aea6b569f5d20ea7c44b.zip"
  sha256 "de0b61576ccdcac7e5afc447730b18122dbb118eb06d5c8f8dba4516c57b80f1"
  head "https://github.com/linkerd/namerctl.git"
  version "0.8.7"

  depends_on "go" => :build
  # depends_on "dep" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["PATH"]  = "#{ENV["PATH"]}:#{ENV["GOPATH"]}/bin"
    (buildpath/"src/github.com/linkerd/namerctl").install buildpath.children
    cd "src/github.com/linkerd/namerctl" do
      system "go", "build", "-o", bin/"namerctl"
      prefix.install_metafiles
    end
  end

  test do
    system bin/"namerctl", "--help"
  end
end
