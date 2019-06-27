cask 'terraform-provider-slack' do
  version '0.1.0'
  sha256 'a2f781eb7f75893961116ed3ad3e97ebe374ae39756614debd0fa7ad97b59e89'

  url "https://github.com/janitors/terraform-provider-slack/releases/download/v#{version}/terraform-provider-slack-darwin-amd64"
  name 'terraform-provider-slack'
  homepage 'https://github.com/janitors/terraform-provider-slack'

  depends_on formula: 'gordonbondon/tap/tf-install-provider'

  caveats <<~EOS
    After installing, you will need to copy the provider to a place terraform can find it by running:
      tf-install-provider slack
  EOS

  binary "#{staged_path}/terraform-provider-slack-darwin-amd64", target: 'terraform-provider-slack'
end
