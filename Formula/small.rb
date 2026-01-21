# typed: false
# frozen_string_literal: true

class Small < Formula
  desc "SMALL CLI - Command line interface for the SMALL protocol"
  homepage "https://github.com/justyn-clark/small-dist"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/justyn-clark/small-dist/releases/download/v#{version}/small_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64_SHA256"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-dist/releases/download/v#{version}/small_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_ARM64_SHA256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/justyn-clark/small-dist/releases/download/v#{version}/small_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA256"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-dist/releases/download/v#{version}/small_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
    end
  end

  def install
    bin.install "small"
  end

  test do
    system "#{bin}/small", "version"
  end
end
