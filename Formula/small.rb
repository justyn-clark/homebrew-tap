# typed: false
# frozen_string_literal: true

class Small < Formula
  desc "Command-line interface for the SMALL protocol"
  homepage "https://github.com/justyn-clark/small-protocol"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-darwin-amd64.tar.gz"
      sha256 "05892b1f15b38b340dbca3da437bc68d652ef2709db5dcd18c8a0385a3c5bd0b"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-darwin-arm64.tar.gz"
      sha256 "9587da983dad5dc0e13266d197b34f7ee38f946de568a1237d891e823cc68fe6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-linux-amd64.tar.gz"
      sha256 "3bf743a76013aaa3b6ee3dbc8c15f8d5215caa24c4fe29dbd440555276936b59"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-linux-arm64.tar.gz"
      sha256 "e14a4669d9ff40bc86470c2da07daab012f1d66e11527a4e68b6177837747185"
    end
  end

  def install
    bin.install "small"
  end

  test do
    system "#{bin}/small", "version"
  end
end
