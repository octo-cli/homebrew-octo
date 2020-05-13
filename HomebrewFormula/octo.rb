# This file was generated by GoReleaser. DO NOT EDIT.
class Octo < Formula
  desc "cli client for GitHub"
  homepage "https://github.com/octo-cli/octo-cli"
  version "0.12.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/octo-cli/octo-cli/releases/download/v0.12.0/octo-cli_0.12.0_Darwin_x86_64.tar.gz"
    sha256 "a04a7c4bf647d44e59abc7ac0f12a825a232722b4197925abfabf48b7074f626"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/octo-cli/octo-cli/releases/download/v0.12.0/octo-cli_0.12.0_Linux_x86_64.tar.gz"
      sha256 "3bd2a59e53425558522b59c210a9b097b6c3d118c186b696bcea726595ebf55a"
    end
  end

  def install
    bin.install "octo"
  end
end
