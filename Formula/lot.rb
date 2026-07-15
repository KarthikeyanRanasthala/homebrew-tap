class Lot < Formula
  desc "Inspect Lottie and dotLottie files in the terminal"
  homepage "https://github.com/KarthikeyanRanasthala/lot"
  url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.2.2/lot-0.2.2-source.tar.gz"
  sha256 "6a03b09748a797830b70ebd3ce659f3f8aa31dc4c982945744069c0e052e79aa"
  license "MIT"

  bottle do
    root_url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.2.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "dae08fd467ddb082c8b0b13344a8423f27d8f2f93556834b48108226b75d2df0"
    sha256 cellar: :any_skip_relocation, tahoe:       "2be81ff61ab540a5e06dddf94fff4ce0f7e8eeb8733cf990a5e6ad9e85bfe498"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Inspect Lottie", shell_output("#{bin}/lot --help")
  end
end
