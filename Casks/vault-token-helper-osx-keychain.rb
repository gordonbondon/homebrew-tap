cask 'vault-token-helper-osx-keychain' do
  version '0.1.0'

  url "https://github.com/sethvargo/vault-token-helper-osx-keychain/releases/download/v#{version}/vault-token-helper.dmg"
  sha256 '40b3ab5e52328ca3608fe6a055693bf64313a68c097a5bd443fc0fea07eb5131'

  name 'Vault Token Helper Keychain'
  homepage 'https://github.com/sethvargo/vault-token-helper-osx-keychain'

  binary 'vault-token-helper'

  caveats <<~EOS
    After installing, you will need to configure vault to use this plugin in ~/.vault:
        token_helper = "/usr/local/bin/vault-token-helper"
  EOS
end
