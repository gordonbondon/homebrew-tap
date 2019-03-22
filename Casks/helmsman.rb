cask 'helmsman' do
  version '1.8.1'
  sha256 'fd2d2c750960ba331ee99f590db2f65f8a075872754480a1768c95587f8cbee4'

  url "https://github.com/Praqma/helmsman/releases/download/v#{version}/Helmsman_#{version}_darwin_amd64.tar.gz"
  name 'helmsman'
  homepage 'https://github.com/Praqma/helmsman'

  binary 'helmsman'
end
