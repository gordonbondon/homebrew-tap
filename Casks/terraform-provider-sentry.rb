cask 'terraform-provider-sentry' do
  version '0.4.0'
  sha256 '1bbce356e964c6b489d171d5e50bb3cd555c417fcb3e83fcc3f256428a199cf0'

  url "https://github.com/jianyuan/terraform-provider-sentry/releases/download/v#{version}/terraform-provider-sentry_#{version}_darwin_amd64.tar.gz"
  name 'terraform-provider-sentry'
  homepage 'https://github.com/jianyuan/terraform-provider-sentry'

  depends_on formula: 'gordonbondon/tap/tf-install-provider'

  caveats <<~EOS
    After installing, you will need to copy the provider to a place terraform can find it by running:
      tf-install-provider sentry
  EOS

  binary "#{staged_path}/terraform-provider-sentry", target: 'terraform-provider-sentry'
end
