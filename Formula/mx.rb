require "formula"

class Mx < Formula
  homepage 'https://github.com/demands/mx'
  url 'https://api.github.com/repos/demands/mx/tarball/v0.8.1'
  sha1 '1276274d2466eb4a53af3b94de9d08053a49e4ec'

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'

    man1.install "doc/mx.1"
  end
end
