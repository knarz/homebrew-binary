class Ngrok2 < Formula
  desc "Secure tunnels to localhost"
  homepage "https://ngrok.com/"
  version "2.1.3"

  if MacOS.prefer_64_bit?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-amd64.zip"
    sha256 "863ebc05824329d288977d275d2ab90e554780a053019ae2bbadb317a1abf607"
  else
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-darwin-386.zip"
    sha256 "4dce4c66a5eb83394fa4f1173897c4d7557287b867b8991ca8558ee03635a889"
  end

  bottle :unneeded

  def install
    bin.install "ngrok"
  end

  test do
    assert_equal "ngrok version #{version}\n", shell_output("#{bin}/ngrok -version")
  end
end
