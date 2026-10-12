cask "hushnotes" do
  version "1.1.3"
  sha256 "466e90e1aac94a955d02fcf7ed627139bf8f13c109dd1d8fa04a6c5c796aebf8"

  url "https://hushnotes.app/download/HushNotes-#{version}.zip"
  name "HushNotes"
  desc "Sticky notes that float on top of every app"
  homepage "https://hushnotes.app/"

  livecheck do
    url "https://hushnotes.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "HushNotes.app"

  zap trash: [
    "~/Library/Application Support/com.juncolab.hushnotes",
    "~/Library/Caches/com.juncolab.hushnotes",
    "~/Library/HTTPStorages/com.juncolab.hushnotes",
    "~/Library/Preferences/com.juncolab.hushnotes.plist",
    "~/Library/Saved Application State/com.juncolab.hushnotes.savedState",
  ]
end
