cask "anthropics-portrait-pro-studio-12" do
  version "12.5.2"
  sha256 "b4aa004ca361b01743c752825803b9f44428cd0e0c8fbcfe253b079d7e9c134a"

  url "https://cloudfrontsecure.anthropics.com/#{version}/PortraitProStudioSetup64.dmg"
  name "anthropics-portrait-pro-studio"
  desc "Portrait photography retouching software developed by Anthropics Technology and initially released in 2006."
  homepage "https://www.anthropics.com/portraitpro/"

  livecheck do
    skip "Very outdated version, no updates expected"
  end

  caveats "Package is old and not signed with a recognised identity; Cask is for download only"

  stage_only true
end