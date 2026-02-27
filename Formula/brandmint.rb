class Brandmint < Formula
  include Language::Python::Virtualenv

  desc "Unified brand creation orchestrator (text + visuals + campaigns)"
  homepage "https://github.com/Sheshiyer/brandmint-oracle-aleph"
  url "https://github.com/Sheshiyer/brandmint-oracle-aleph/archive/refs/tags/v4.2.1.tar.gz"
  sha256 "5043f0d2a1529ea7ee7f8b6ba2ce29b916058e2132039c2145297daa898ab703"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath
    bin.install_symlink bin/"brandmint" => "bm"
  end

  test do
    assert_match "Brandmint", shell_output("#{bin}/bm --help")
  end
end
