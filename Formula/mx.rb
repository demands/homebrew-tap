require "formula"

class Mx < Formula
  homepage "https://github.com/demands/mx"
  url "https://github.com/demands/mx/archive/v0.5.0.tar.gz"
  sha1 "c1a234391229ae6bfedf4607b337fba35fbfb8f8"

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'
  end
end
