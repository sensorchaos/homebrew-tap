class Sensorchaos < Formula
  desc "CLI tool for simulating sensor degradation scenarios against mobile apps"
  homepage "https://sensorchaos.com"
  version "0.1.1"
  license "Commercial"

  on_macos do
    on_arm do
      url "https://releases.sensorchaos.com/v#{version}/sensorchaos-darwin-arm64.zip"
      sha256 "0c758adde15d53cb8615f64afd06803bb918ebeb61f4e5c840e021e196da149a"
    end

    on_intel do
      url "https://releases.sensorchaos.com/v#{version}/sensorchaos-darwin-x64.zip"
      sha256 "PLACEHOLDER_DARWIN_X64"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.sensorchaos.com/v#{version}/sensorchaos-linux-x64.zip"
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
