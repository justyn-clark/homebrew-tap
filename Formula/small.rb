# typed: false
# frozen_string_literal: true

class Small < Formula
  desc "Command-line interface for the SMALL protocol"
  homepage "https://github.com/justyn-clark/small-protocol"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.0_Darwin_x86_64.tar.gz"
      sha256 "b027e0122f9a4b9af7af4ab481055e72ebd1e573902447abcd641ac244f2771f"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.0_Darwin_arm64.tar.gz"
      sha256 "e10a82869773e24f0d4f95ff409150678f7d8c970126cb69c560ab1117d325d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.0_Linux_x86_64.tar.gz"
      sha256 "537600a09b45bb107198af45a0d2ac453f2cf11cf6aabf6030464576a7fdc2f2"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.0_Linux_arm64.tar.gz"
      sha256 "f736f56a00638d8c22dccd3f7ac3d750444c3498a7f2434924a445293663eb46"
    end
  end

  def install
    bin.install "small"
  end

  test do
    system "#{bin}/small", "version"
  end
end
