require "formula"

class Mx < Formula
  homepage 'https://github.com/demands/mx'
  url 'https://api.github.com/repos/demands/mx/tarball/v0.8.2'
  sha1 'dc42fa516d1c4b7428a2f537950ef992517fef23'

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'

    man1.install "doc/mx.1"
  end
end
