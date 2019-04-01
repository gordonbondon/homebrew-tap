cask 'scenery' do
  version '0.1.4'
  sha256 '32ffc8aa537c23fa6378e32ff8d61ddf9e18f806521e4609df2835378482d343'

  url "https://github.com/dmlittle/scenery/releases/download/v#{version}/scenery-v#{version}-darwin-amd64"
  name 'scenery'
  homepage 'https://github.com/dmlittle/scenery'

  binary "scenery-v#{version}-darwin-amd64", target: 'scenery'
end
