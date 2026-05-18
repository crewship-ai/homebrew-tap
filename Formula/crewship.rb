class Crewship < Formula
  desc "AI Agent Orchestration Platform -- manage AI virtual employees in crews"
  homepage "https://crewship.ai"
  version "0.1.0-beta.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/crewship-ai/crewship/releases/download/v0.1.0-beta.2/crewship_0.1.0-beta.2_darwin_amd64.tar.gz"
      sha256 "677aec7aa6c70e552506c69dea089325b424d3fcae58d75597f294bfb845e959"

      def install
        bin.install "crewship"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/crewship-ai/crewship/releases/download/v0.1.0-beta.2/crewship_0.1.0-beta.2_darwin_arm64.tar.gz"
      sha256 "da6251c7abcf23ca61b50ceebc0bf5a8609a00e3ec5178570580c88ddba620e7"

      def install
        bin.install "crewship"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/crewship-ai/crewship/releases/download/v0.1.0-beta.2/crewship_0.1.0-beta.2_linux_amd64.tar.gz"
      sha256 "8b6df4f3b932fb02d38ec859d6a3dc0ad4f2348f0f0059587180a18fed434ad7"

      def install
        bin.install "crewship"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/crewship-ai/crewship/releases/download/v0.1.0-beta.2/crewship_0.1.0-beta.2_linux_arm64.tar.gz"
      sha256 "c5f6f55965470ddc99768c715e7d3a03ffbf86cd84f1ab5264e9f7b85e313a1b"

      def install
        bin.install "crewship"
      end
    end
  end

  test do
    system "#{bin}/crewship", "version"
  end
end
