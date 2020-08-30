class Verbula < Formula
  include Language::Python::Virtualenv

  desc "Script to rehearse your vocabulary"
  homepage "https://github.com/aimileus/verbula"
  url "https://github.com/aimileus/verbula/archive/v1.0.0.tar.gz"
  sha256 "99564373cd0aeb9e59c3aa856a31080504feb37516a9655d0405f735ed5ce0ec"

  depends_on "python"

  resource "Unidecode" do
    url "https://files.pythonhosted.org/packages/b1/d6/7e2a98e98c43cf11406de6097e2656d31559f788e9210326ce6544bd7d40/Unidecode-1.1.1.tar.gz"
    sha256 "2b6aab710c2a1647e928e36d69c21e76b453cd455f4e2621000e54b2a9b8cce8"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "true"
  end
end
