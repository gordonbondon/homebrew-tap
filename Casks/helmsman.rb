cask 'helmsman' do
  version '1.7.4'
  sha256 '505f6c5fb3f8549ce71f49b816e97cdc7172b3737c4e93e481efde401eae86e8'

  url "https://github.com/Praqma/helmsman/releases/download/v#{version}/Helmsman_#{version}_darwin_amd64.tar.gz"
  name 'helmsman'
  homepage 'https://github.com/Praqma/helmsman'

  binary 'helmsman'
end
