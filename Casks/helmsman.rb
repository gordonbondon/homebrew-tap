cask 'helmsman' do
  version '1.10.0'
  sha256 '06061170acc69f26785aac073a4e9da2a05de9699d69f6d34f775ef4299ba3f1'

  url "https://github.com/Praqma/helmsman/releases/download/v#{version}/Helmsman_#{version}_darwin_amd64.tar.gz"
  name 'helmsman'
  homepage 'https://github.com/Praqma/helmsman'

  binary 'helmsman'
end
