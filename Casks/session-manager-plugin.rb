cask 'session-manager-plugin' do
  version '1.0.37.0'
  sha256 '4c04afb88081a23984cea5ca9fe2060045f8f4c96785e2771585b797631b6f16'

  url "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/mac/sessionmanager-bundle.zip"
  name 'session-manager-plugin'
  homepage 'https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html#install-plugin-macos'

  binary "#{staged_path}/sessionmanager-bundle/bin/session-manager-plugin", target: 'session-manager-plugin'
end
