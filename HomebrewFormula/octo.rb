# Classname should match the name of the installed package.
class Octo< Formula
  desc "Octo is a command line client for GitHub's REST API."
  homepage "https://github.com/octo-cli/octo-cli"

  # Source code archive. Each tagged release will have one
  url "https://github.com/octo-cli/octo-cli/archive/v0.1.0.zip"
  sha256 "c426b3dd431efd7f062d4182fbe773994b53ef7a2fc7e09b004e6cf1ac96f68a"
  head "https://github.com/octo-cli/octo-cli"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/octo-cli/octo-cli"
    # Copy all files from their current location (GOPATH root)
    # to $GOPATH/src/github.com/octo-cli/octo-cli
    bin_path.install Dir["*"]
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "build", "-o", bin/"octo", "-ldflags", "-X main.version=0.1.0", "."
    end
  end

  # Homebrew requires tests.
  test do
    # "2>&1" redirects standard error to stdout. The "2" at the end means "the
    # exit code should be 0".
    assert_match "0.1.0", shell_output("#{bin}/octo --version", 0)
  end
end
