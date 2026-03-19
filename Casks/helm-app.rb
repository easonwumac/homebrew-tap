cask "helm-app" do
  version "0.1.0"
  sha256 "REPLACE_WITH_SHA256_DMG"

  url "https://github.com/easonwumac/Helm/releases/download/v#{version}/Helm-#{version}.dmg"
  name "Helm"
  desc "macOS menu bar app for monitoring AI agents"
  homepage "https://github.com/easonwumac/Helm"

  app "Helm.app"
end
