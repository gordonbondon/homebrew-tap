cask 'scenery' do
  version '0.1.1'
  sha256 '1d01844bbfdc6f74e33a211c07478de98803ad8a0f74c92ebb73f389ad25bb00'

  url "https://github.com/dmlittle/scenery/releases/download/v#{version}/scenery-v#{version}-darwin-amd64"
  name 'scenery'
  homepage 'https://github.com/dmlittle/scenery'

  binary "scenery-v#{version}-darwin-amd64", target: 'scenery'
end
