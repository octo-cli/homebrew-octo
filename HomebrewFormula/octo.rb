# This file was generated by GoReleaser. DO NOT EDIT.
class Octo < Formula
  desc "cli client for GitHub"
  homepage "https://github.com/octo-cli/octo-cli"
  version "0.13.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/octo-cli/octo-cli/releases/download/v0.13.0/octo-cli_0.13.0_Darwin_x86_64.tar.gz"
    sha256 "5588d9126eb921a2e55514ebab39a52049820ea6b860e865d9f95925bd87b7d2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/octo-cli/octo-cli/releases/download/v0.13.0/octo-cli_0.13.0_Linux_x86_64.tar.gz"
      sha256 "30bde4bc9e60fe0f65e648850d9af4a0f44e69ab0da9bad9b2785d9f7c1ffba0"
    end
  end

  def install
    bin.install "octo"
  end
end
