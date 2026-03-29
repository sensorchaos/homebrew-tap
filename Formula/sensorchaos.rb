class Sensorchaos < Formula
  desc "CLI tool for simulating sensor degradation scenarios against mobile apps"
  homepage "https://sensorchaos.com"
  version "0.1.0"
  license "Commercial"

  on_macos do
    on_arm do
      url "https://releases.sensorchaos.com/v#{version}/sensorchaos-darwin-arm64"
      sha256 "b5c774c6006ee1443b0df8218be7ac630f975a698f7787993a95050e01b8cc09"
    end

    on_intel do
      url "https://releases.sensorchaos.com/v#{version}/sensorchaos-darwin-x64"
      sha256 "PLACEHOLDER_DARWIN_X64"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.sensorchaos.com/v#{version}/sensorchaos-linux-x64"
      sha256 "PLACEHOLDER_LINUX_X64"
    end
  end

  def install
    bin.install Dir["sensorchaos-*"].first => "sensorchaos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sensorchaos --version")
  end
end
