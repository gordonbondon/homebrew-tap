cask 'helmsman' do
  version '1.8.0'
  sha256 '90fcba81720dca6653994a614d1bd04c994320e5012b10f74bad9c83b684c3c3'

  url "https://github.com/Praqma/helmsman/releases/download/v#{version}/Helmsman_#{version}_darwin_amd64.tar.gz"
  name 'helmsman'
  homepage 'https://github.com/Praqma/helmsman'

  binary 'helmsman'
end
