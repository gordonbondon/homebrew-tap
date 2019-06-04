cask 'container-structure-test' do
  version '1.8.0'
  sha256 '14e94f75112a8e1b08a2d10f2467d27db0b94232a276ddd1e1512593a7b7cf5a'

  url "https://storage.googleapis.com/container-structure-test/v#{version}/container-structure-test-darwin-amd64"
  name 'container-structure-test'
  homepage 'https://github.com/GoogleContainerTools/container-structure-test'

  binary 'container-structure-test-darwin-amd64', target: 'container-structure-test'
end
