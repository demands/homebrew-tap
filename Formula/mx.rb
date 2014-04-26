require "formula"

class Mx < Formula
  homepage "https://github.com/demands/mx"
  url "https://github.com/demands/mx/archive/v0.5.2.tar.gz"
  sha1 "cc2e6770034c75b2bb4e5829112cf5fe8ac843b7"

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'

    man1.install "doc/mx.1"
  end
end
