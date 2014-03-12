require "formula"

class Mx < Formula
  homepage "https://github.com/demands/mx"
  url "https://github.com/demands/mx/archive/v0.5.1.tar.gz"
  sha1 "038b259e3a718c6a24b153bfd9ba1bf8f96a1d70"

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/mx", install_dir
    system "chmod", "a+x", "#{install_dir}/mx"

    bash_completion.install 'mx-completion.bash'
  end
end
