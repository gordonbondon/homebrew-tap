class TerraformProviderElasticsearch < Formula
  desc "Manage ElasticSearch with Terraform"
  homepage "https://github.com/phillbaker/terraform-provider-elasticsearch"
  url "https://github.com/phillbaker/terraform-provider-elasticsearch/archive/v0.5.0.zip"
  sha256 "5d3e983663535f52a270ef59a29f9f1f2fda68eb1f13b547e42f5468c5660b12"
  version "0.5.0"
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
