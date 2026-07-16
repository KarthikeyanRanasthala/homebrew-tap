class Lot < Formula
  desc "Inspect Lottie and dotLottie files in the terminal"
  homepage "https://github.com/KarthikeyanRanasthala/lot"
  url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.3.0/lot-0.3.0-source.tar.gz"
  sha256 "89c511d051ea94631e5aac4484950a466bd3e1218996914aded6d4b1bb4bed71"
  license "MIT"

  bottle do
    root_url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.3.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "25e10bd8400c6df638fb4c576f8cf47af6282b8247267200e9bc570e6734cf0d"
    sha256 cellar: :any_skip_relocation, tahoe:       "d7b4463fe83ac61f6eeb89ee2b5d0d0336501fd77c7550c653b913531405fb84"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Inspect Lottie", shell_output("#{bin}/lot --help")
  end
end
