cask 'terraform-provider-ansible' do
  version '0.0.4'
  sha256 '323319c7f7093a10b089cd94496b96a98b1b240f01f5e3555af095164bae087a'

  url "https://github.com/nbering/terraform-provider-ansible/releases/download/v#{version}/terraform-provider-ansible-darwin_amd64.zip"
  name 'terraform-provider-ansible'
  homepage 'https://github.com/nbering/terraform-provider-ansible'

  depends_on formula: 'gordonbondon/tap/tf-install-provider'

  caveats <<~EOS
    After installing, you will need to copy the provider to a place terraform can find it by running:
      tf-install-provider ansible
  EOS

  binary "#{staged_path}/darwin_amd64/terraform-provider-ansible_v#{version}", target: 'terraform-provider-ansible'
end
