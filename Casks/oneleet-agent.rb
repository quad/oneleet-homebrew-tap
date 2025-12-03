cask "oneleet-agent" do
  version "2.0.0-beta.17"
  sha256 "bf31335d25f156f4a805c2f7b13b5e365ac68bcc40260953be6df18789bbae8e"

  url "https://downloads.oneleet.com/agent/macos/Oneleet-#{version}.dmg"
  name "Oneleet"
  desc "Monitors your system for security and compliance"
  homepage "https://www.oneleet.com/"

  livecheck do
    url "https://downloads.oneleet.com/agent/macos/beta-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Oneleet.app"

  zap trash: "~/Library/Application Support/Oneleet Agent"
end
