class Brandmint < Formula
  include Language::Python::Virtualenv

  desc "Unified brand creation orchestrator (text + visuals + campaigns)"
  homepage "https://github.com/Sheshiyer/brandmint-oracle-aleph"
  url "https://github.com/Sheshiyer/brandmint-oracle-aleph/archive/refs/tags/v5.0.1-rc.1.tar.gz"
  sha256 "6db35397be63fdf82d8a293193f8dfa5be029eb0901274c8b75a9f38c0e01aa7"
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
