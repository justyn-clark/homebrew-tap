# typed: false
# frozen_string_literal: true

class Small < Formula
  desc "Command-line interface for the SMALL protocol"
  homepage "https://github.com/justyn-clark/small-protocol"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.2_Darwin_x86_64.tar.gz"
      sha256 "bbac0c7e55d71c7e2e510be11578c700e8d166d718defa5160bbaa99af4afc5f"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.2_Darwin_arm64.tar.gz"
      sha256 "42f691326bb0fca9c824ded1414e59a49c37b1a305ec58ac06269d7cc3b9308c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.2_Linux_x86_64.tar.gz"
      sha256 "aeb7e606d7efd8948692987aaca23bd9bcf877d8b75444b847715493593cd014"
    end

    on_arm do
      url "https://github.com/justyn-clark/small-protocol/releases/download/v#{version}/small-protocol_1.0.2_Linux_arm64.tar.gz"
      sha256 "062f106c07b45f93a3da7beb6e8c0197cd0c9f4081d590fc2355925fb4538b84"
    end
  end

  def install
    bin.install "small"
  end

  test do
    system "#{bin}/small", "version"
  end
end
