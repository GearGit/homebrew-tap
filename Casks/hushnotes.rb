cask "hushnotes" do
  version "1.1.2"
  sha256 "f3beec01b5aa438899a3b3532f3135c0e963338d680abcaec2a6c127a081feef"

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
