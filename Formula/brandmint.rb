class Brandmint < Formula
  include Language::Python::Virtualenv

  desc "Unified brand creation orchestrator (text + visuals + campaigns)"
  homepage "https://github.com/Sheshiyer/brandmint-oracle-aleph"
  url "https://github.com/Sheshiyer/brandmint-oracle-aleph/archive/refs/tags/v4.3.0.tar.gz"
  sha256 "603604cb4b71b88bbc8ce7cd5660ca4f50b5238509c6e07555a3132d1ad79a3e"
  license "MIT"

  depends_on "python@3.11"

  def install
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install buildpath
    venv.pip_install %w[
      click
      annotated-doc
      shellingham
      typing-extensions
      markdown-it-py
      mdurl
      pygments
      typer
      rich
      pydantic
      pyyaml
      python-dotenv
      requests
      fal-client
    ]

    bin.install_symlink libexec/"bin/brandmint"
    bin.install_symlink libexec/"bin/bm"
  end

  test do
    assert_match "Brandmint", shell_output("#{bin}/bm --help")
  end
end
