cask 'terraform-provider-mongodbatlas' do
  version '1.1.1'
  sha256 '6197a07b7b9f1aa7e05d2be382ea7bbd2dce9e43c35e40db8ab65282a921bb2e'

  url "https://github.com/koalificationio/terraform-provider-mongodbatlas/releases/download/v#{version}-rc/terraform-provider-mongodbatlas_v#{version}_darwin_amd64"
  name 'terraform-provider-mongodbatlas'
  homepage 'https://github.com/koalificationio/terraform-provider-mongodbatlas'

  depends_on formula: 'gordonbondon/tap/tf-install-provider'

  caveats <<~EOS
    After installing, you will need to copy the provider to a place terraform can find it by running:
      tf-install-provider mongodbatlas
  EOS

  binary "#{staged_path}/terraform-provider-mongodbatlas_v#{version}_darwin_amd64", target: 'terraform-provider-mongodbatlas'
end
