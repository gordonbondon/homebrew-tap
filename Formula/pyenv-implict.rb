class PyenvImplict < Formula
  desc "Allow pyenv to guess the python version from the program name"
  homepage "https://github.com/concordusapps/pyenv-implict"
  head "https://github.com/concordusapps/pyenv-implict.git"

  bottle :unneeded

  depends_on "pyenv"

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match "pyenv-implict", shell_output("pyenv hooks which")
  end
end
