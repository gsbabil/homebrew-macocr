class Macocr < Formula
  desc "OCR command line utility for MacOS 10.15+ using the VNRecognizeTextRequest API"
  homepage "https://github.com/gsbabil/MacOCR"
  url "https://github.com/gsbabil/MacOCR/archive/1.0.2.tar.gz"
  sha256 "f9fbf0f54625262775655ecf2568add1044152c07a4b252c9ef0c43bd8f11180"

  def install
    system "swift", "build",
      "--configuration", "release",
      "--disable-sandbox"
    bin.install ".build/x86_64-apple-macosx/release/macocr"
  end

  test do
    system "#{bin}/macocr", "Dock", "Dock"
  end
end
