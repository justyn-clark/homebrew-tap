# typed: false
# frozen_string_literal: true

class Devports < Formula
  desc "CLI for managing local development ports and configured service URLs"
  homepage "https://github.com/justyn-clark/devports"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/justyn-clark/devports/releases/download/v#{version}/devports-v0.1.5-darwin-amd64.tar.gz"
      sha256 "0255df4107c89de4189681c50e5c93daa12aa8ca9e504597d6d089b12e9c7f30"
    end

    on_arm do
      url "https://github.com/justyn-clark/devports/releases/download/v#{version}/devports-v0.1.5-darwin-arm64.tar.gz"
      sha256 "0c78409a6f69c760b07f534800d18e1d8ab4b538e6db90677b834efe13f509e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/justyn-clark/devports/releases/download/v#{version}/devports-v0.1.5-linux-amd64.tar.gz"
      sha256 "2ee2a8104b50ec0d71d84ab5271800ce4ecabef7945a9d8c289ee0cf9e92a3e4"
    end

    on_arm do
      url "https://github.com/justyn-clark/devports/releases/download/v#{version}/devports-v0.1.5-linux-arm64.tar.gz"
      sha256 "80c46928910fa9f41cec00f094ebdf273efb4162c80694ca1c9b82a330956437"
    end
  end

  def install
    bin.install "devports"
  end

  test do
    system "#{bin}/devports", "--version"
  end
end
