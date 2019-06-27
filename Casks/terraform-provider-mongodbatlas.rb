cask 'terraform-provider-mongodbatlas' do
  version '1.1.0'
  sha256 '7589a1b0c7d7fbe5e842326f978e5c8bffa0b6b908f6b17f8fdbe5a2d7c4568d'

  url "https://github.com/akshaykarle/terraform-provider-mongodbatlas/releases/download/v#{version}/terraform-provider-mongodbatlas_v#{version}_darwin_amd64"
  name 'terraform-provider-mongodbatlas'
  homepage 'https://github.com/akshaykarle/terraform-provider-mongodbatlas'

  depends_on formula: 'gordonbondon/tap/tf-install-provider'

  caveats <<~EOS
    After installing, you will need to copy the provider to a place terraform can find it by running:
      tf-install-provider mongodbatlas
  EOS

  binary "#{staged_path}/terraform-provider-mongodbatlas_v#{version}_darwin_amd64", target: 'terraform-provider-mongodbatlas'
end
