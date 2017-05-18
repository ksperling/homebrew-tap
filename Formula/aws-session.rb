class AwsSession < Formula
  desc ""
  homepage "https://github.com/ksperling/aws-session"
  url "https://github.com/ksperling/aws-session/archive/v1.1.0.tar.gz"
  sha256 "412b59daeed6e4e0c05560ffe8e87224f576a27ac42475b5dc270cc1aa6adb54"

  depends_on "awscli" => :run

  def install
    bin.install "aws-session"
  end

  test do
    system bin/"aws-session", "--help"
  end
end
