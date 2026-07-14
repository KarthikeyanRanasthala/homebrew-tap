class Lot < Formula
  desc "Inspect Lottie and dotLottie files in the terminal"
  homepage "https://github.com/KarthikeyanRanasthala/lot"
  url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.2.1/lot-0.2.1-source.tar.gz"
  sha256 "ced290e4009bce6a9dd25886bd13ca1222dd8c54f8d1cac4a007d8edf39a5af4"
  license "MIT"

  bottle do
    root_url "https://github.com/KarthikeyanRanasthala/lot/releases/download/v0.2.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe: "c4b9bcf4d89c1816713ac232aaab747ebf02676bab76e993c25764f0896e16f6"
    sha256 cellar: :any_skip_relocation, tahoe: "8d6faab1853bec004c15934a593ad7dd233d1da85f561d52c9d243f8f9c56ebb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Inspect Lottie", shell_output("#{bin}/lot --help")
  end
end
