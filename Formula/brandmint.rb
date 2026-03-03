class Brandmint < Formula
  include Language::Python::Virtualenv

  desc "Unified brand creation orchestrator (text + visuals + campaigns)"
  homepage "https://github.com/Sheshiyer/brandmint-oracle-aleph"
  url "https://github.com/Sheshiyer/brandmint-oracle-aleph/archive/refs/tags/v4.4.0.tar.gz"
  sha256 "0d24726f324f17242eab8f49052a72525a8c8ddfca0fc40eebfcf38f2892e11c"
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
