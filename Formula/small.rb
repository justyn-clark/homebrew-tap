# typed: false
# frozen_string_literal: true

class Small < Formula
  desc "Command-line interface for the SMALL protocol"
  homepage "https://github.com/justyn-clark/small-protocol"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-darwin-amd64.tar.gz"
      sha256 "e6c27b19bb1ad3b19ccae3f9bdd5fc9b4075ccc959012e67fe036d36e3cadefd"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-darwin-arm64.tar.gz"
      sha256 "01ce3bc71b0d9ef2019f5dbe4299b6e7090400253b60b1f688b5c0e678621366"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-linux-amd64.tar.gz"
      sha256 "ed770f1f44139a4837c4c6905de66ba62d90481de19d607c23fa8527f3cf96e5"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-v#{version}-linux-arm64.tar.gz"
      sha256 "d1034b32715b2e58e79905801235d739efa7b260da1e3576bd5f2c7c04b428f0"
    end
  end

  def install
    bin.install "small"
  end

  test do
    system "#{bin}/small", "version"
  end
end
