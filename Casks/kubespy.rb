cask 'kubespy' do
  version '0.3.0'
  sha256 'ff80b99aacb401c5370fc816568b9f9ff4a927c2d6b6a8f5b9d3a809b800cee8'

  url "https://github.com/pulumi/kubespy/releases/download/v#{version}/kubespy_darwin-amd64"
  name 'kubespy'
  homepage 'https://github.com/pulumi/kubespy'

  binary 'kubespy_darwin-amd64', target: 'kubespy'
end
