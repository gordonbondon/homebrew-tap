cask 'terraform-provider-ansible' do
  version '1.0.3'
  sha256 'a31852e97fa908eb1521d9c64c9929c32156bf0917fd421863b62da3d7814a4f'

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
