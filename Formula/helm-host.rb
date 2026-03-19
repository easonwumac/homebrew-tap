class HelmHost < Formula
  desc "AI agent relay — monitor and control Codex sessions from your iPhone"
  homepage "https://github.com/easonwumac/Helm"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-aarch64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_AARCH64"
    end
    on_intel do
      url "https://github.com/easonwumac/Helm/releases/download/v#{version}/hostd-macos-x86_64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_X86_64"
    end
  end

  def install
    bin.install "hostd"
  end

  test do
    system "#{bin}/hostd", "--version"
  end
end
