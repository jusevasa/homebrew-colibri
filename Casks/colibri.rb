cask "colibri" do
  version "0.2.0-beta.7"
  sha256 "a3a29f938b55ebf66a973296ed369918aa7062c528355ce48fb2bea13b6f7a9f"

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
