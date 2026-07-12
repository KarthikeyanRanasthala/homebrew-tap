class LocalFontsAgent < Formula
  desc "Serve installed system fonts through a local HTTP API"
  homepage "https://github.com/KarthikeyanRanasthala/local-fonts-agent"
  url "https://github.com/KarthikeyanRanasthala/local-fonts-agent/archive/refs/tags/local-fonts-agent-v0.1.1.tar.gz"
  sha256 "8fa9d4894dce23c2ad40de4bb70efab565fde1766fe7c0822e4496ff280b9474"
  license "MIT"
  head "https://github.com/KarthikeyanRanasthala/local-fonts-agent.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args(path: "src-tauri")
  end

  def caveats
    <<~EOS
      When using brew services, manage startup and shutdown with Homebrew.
      Do not enable "Start on Login" in the tray menu; use:
        brew services start local-fonts-agent
        brew services stop local-fonts-agent
    EOS
  end

  service do
    run opt_bin/"local-fonts-agent"
    keep_alive true
    process_type :interactive
    log_path var/"log/local-fonts-agent.log"
    error_log_path var/"log/local-fonts-agent.log"
  end

  test do
    assert_predicate bin/"local-fonts-agent", :executable?
  end
end
