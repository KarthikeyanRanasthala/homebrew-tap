class Lot < Formula
  desc "Inspect Lottie and dotLottie files in the terminal"
  homepage "https://github.com/KarthikeyanRanasthala/lot"
  url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.2.0/lot-0.2.0-source.tar.gz"
  sha256 "82fc435e5c4b12dc5ece4dc6221ccab4a36f43e0c9aa621b9de84c8cd1b955c6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Inspect Lottie", shell_output("#{bin}/lot --help")
  end
end
