class Uhegit < Formula
  desc "Automatic Git workspace discovery and work-session memory"
  homepage "https://github.com/tabrejansary/uhegit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tabrejansary/uhegit/releases/download/v0.1.0/uhegit-macos-aarch64"
      sha256 "sha256:a083afdd92ae9784df5ca77ace6e611314a4f41b614ff8e4eb03457cdbb93f46"
    end
    on_intel do
      url "https://github.com/tabrejansary/uhegit/releases/download/v0.1.0/uhegit-macos-x86_64"
      sha256 "sha256:6b1918c68a2b8644e912ae3fb092ee4fa9eed8d67955cb343e01381365417320"
    end
  end

  def install
    bin.install Dir["uhegit*"].first => "uhegit"
  end

  test do
    system "#{bin}/uhegit", "--version"
  end
end
