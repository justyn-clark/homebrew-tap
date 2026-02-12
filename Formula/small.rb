# typed: false
# frozen_string_literal: true

class Small < Formula
  desc "Command-line interface for the SMALL protocol"
  homepage "https://github.com/justyn-clark/small-protocol"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.1_Darwin_x86_64.tar.gz"
      sha256 "655c00bb9bbf6001896450cd2b2165d68da8fd98837e4cca1b49782982a919c7"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.1_Darwin_arm64.tar.gz"
      sha256 "78b46429290979bcc1dfd92e8c4acbbe6744f46f34f30b72c55079f5d3931a15"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.1_Linux_x86_64.tar.gz"
      sha256 "668920f37e7e220d045f0c09b33f411e104c1a4e70b33ac7570abb222e9bd62a"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.1_Linux_arm64.tar.gz"
      sha256 "721d2bb9122addc2a83fac867b537f0f9ddd7430b07ebd4fd1d4bec52753e2fe"
    end
  end

  def install
    bin.install "small"
  end

  test do
    system "#{bin}/small", "version"
  end
end
