require "formula"

class Mx < Formula
  homepage 'https://github.com/demands/mx'
  url 'https://api.github.com/repos/demands/mx/tarball/v1.0.0'
  sha1 '17f7fe5d581b5ee65133248aede26bd7199149ef'

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'

    man1.install "doc/mx.1"
  end
end
