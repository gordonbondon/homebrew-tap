cask 'helmsman' do
  version '1.7.3'
  sha256 '1663076e4d73d008948d68e481f95eb66fd81fd1d2204680854a76b2cdeafc3f'

  url "https://github.com/Praqma/helmsman/releases/download/v#{version}/Helmsman_#{version}_darwin_amd64.tar.gz"
  name 'helmsman'
  homepage 'https://github.com/Praqma/helmsman'

  binary 'helmsman'
end
