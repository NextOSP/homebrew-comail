cask "comail" do
  version "0.2.45"
  sha256 "1509185780d564f72cda187de3073afe3e7d9542bcb8834435b38007f5de3d5a"

  url "https://github.com/NextOSP/comail/releases/download/v#{version}/Comail_#{version}_universal.dmg"
  name "Comail"
  desc "Keyboard-first desktop email client with a local mailbox"
  homepage "https://github.com/NextOSP/comail"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Comail.app"

  zap trash: [
    "~/Library/Application Support/com.deanoss.comail",
    "~/Library/Caches/com.deanoss.comail",
    "~/Library/Logs/com.deanoss.comail",
    "~/Library/Preferences/com.deanoss.comail.plist",
    "~/Library/Saved Application State/com.deanoss.comail.savedState",
    "~/Library/WebKit/com.deanoss.comail",
  ]
end
