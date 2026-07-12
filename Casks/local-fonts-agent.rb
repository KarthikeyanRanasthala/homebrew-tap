cask "local-fonts-agent" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "e54a0a9b13cf4b7f05b2f7e6972f6d2413629fe2a1de3908562ab1fd667e90b4",
         intel: "60be85e9993e42276de41d50f50344b69e8bedca43bfc683caf8a61b02c1c699"

  url "https://github.com/KarthikeyanRanasthala/local-fonts-agent/releases/download/local-fonts-agent-v#{version}/Local.Fonts.Agent_#{version}_#{arch}.dmg"
  name "Local Fonts Agent"
  desc "Serve installed system fonts through a local HTTP API"
  homepage "https://github.com/KarthikeyanRanasthala/local-fonts-agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Local Fonts Agent.app"

  zap trash: [
    "~/Library/Caches/sh.karthikeyan.local-fonts-agent",
    "~/Library/Logs/sh.karthikeyan.local-fonts-agent",
    "~/Library/Preferences/sh.karthikeyan.local-fonts-agent.plist",
    "~/Library/Saved Application State/sh.karthikeyan.local-fonts-agent.savedState",
  ]
end
