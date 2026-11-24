cask "colibri" do
  version "0.2.0-beta.5"
  sha256 "6a06bd7802080a79a7cdd26589d57fbc3d33f18eba23a371ba811620d01c6e88"

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
