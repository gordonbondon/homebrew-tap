class TerraformProviderElasticsearch < Formula
  desc "Manage ElasticSearch with Terraform"
  homepage "https://github.com/phillbaker/terraform-provider-elasticsearch"
  url "https://github.com/phillbaker/terraform-provider-elasticsearch/archive/v0.1.0.tar.gz"
  sha256 "3313aeda1e9e4be766189de9dc189b6d95396859f88a85fae8a6c629c67b6352"
  version "0.1.0"
  head "https://github.com/phillbaker/terraform-provider-elasticsearch.git"

  depends_on "gordonbondon/tap/tf-install-provider"
  depends_on "glide" => :build
  depends_on "go" => :build

  def install
    ENV["GLIDE_HOME"] = HOMEBREW_CACHE/"glide_home/#{name}"
    ENV["GOPATH"] = buildpath

    dir = buildpath/"src/github.com/phillbaker/terraform-provider-elasticsearch"
    dir.install buildpath.children
    cd dir do
      system "glide", "install"
      system "go", "build", "-o", bin/"terraform-provider-elasticsearch"
      prefix.install_metafiles
    end
  end

  def caveats; <<~EOS
    After installing, you will need to copy the provider to a place terraform can find it by running:

      $ tf-install-provider elasticsearch
    EOS
  end

  test do
    system "#{bin}/terraform-provider-elasticsearch; [[ $? -eq 1 ]]"
  end
end
