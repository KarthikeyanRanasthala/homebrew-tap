class Lot < Formula
  desc "Inspect Lottie and dotLottie files in the terminal"
  homepage "https://github.com/KarthikeyanRanasthala/lot"
  url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.3.1/lot-0.3.1-source.tar.gz"
  sha256 "78af59e29af772c4e8066c18331cd04ed00acdcdcdacf8e8b39b9dea3cd3dd8f"
  license "MIT"

  bottle do
    root_url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.3.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "a63183b3e4111a305549a8af814aa6c6020d8a48128ddd9aa966300638166d19"
    sha256 cellar: :any_skip_relocation, tahoe:       "066ac6060323bf7eb9e683988f1b0a92e83e5fb409139b62ad979641bdf9d4ad"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Inspect Lottie", shell_output("#{bin}/lot --help")
  end
end
