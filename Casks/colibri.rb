cask "colibri" do
  version "0.2.0-beta.2"
  sha256 "90c4fb92b5da735abcb63215673214e3290546449cc80af2f59dcad42f4148d6"

  url "https://github.com/jusevasa/colibri/releases/download/v#{version}/Colibri-#{version}.zip"
  name "Colibrí"
  desc "Terminal para correr varios agentes de código en pestañas"
  homepage "https://github.com/jusevasa/colibri"

  depends_on macos: :monterey

  app "Colibri.app"

  zap trash: [
    "~/.config/colibri",
    "~/Library/Caches/colibri",
    "~/Library/Logs/Colibri",
    "~/Library/Preferences/io.github.jusevasa.colibri.plist",
    "~/Library/Saved Application State/io.github.jusevasa.colibri.savedState",
  ]
end
