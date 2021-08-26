class ClairScanner < Formula
  desc "Docker containers vulnerability scan"
  homepage "https://github.com/arminc/clair-scanner"
  url "https://github.com/arminc/clair-scanner/releases/download/v12/clair-scanner_darwin_amd64"
  version "12"
  sha256 "75a66562c7464c7ce07607897148aa2da440f3d44b9d400ecb7a1475a6896759"

  def install
    bin.install "clair-scanner_darwin_amd64" => "clair-scanner"
  end

  test do
    system "#{bin}/clair-scanner", "-h"
  end
end
