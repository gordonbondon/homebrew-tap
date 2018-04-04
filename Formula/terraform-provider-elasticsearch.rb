class TerraformProviderElasticsearch < Formula
  desc "Manage ElasticSearch with Terraform"
  homepage "https://github.com/phillbaker/terraform-provider-elasticsearch"
  url "https://github.com/phillbaker/terraform-provider-elasticsearch/archive/v0.2.2.tar.gz"
  sha256 "ee6621435a2015f36bc4492b0ec2a7107338f9a6ffc45cb3bfdf8b8d9b7588de"
  version "0.2.2"
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
