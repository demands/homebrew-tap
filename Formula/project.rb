require "formula"

class Project < Formula
  homepage 'https://github.com/demands/project'
  url 'https://api.github.com/repos/demands/project/tarball/v0.1.0'
  sha1 'b757fb2536ae26c9c952ff2c5b57e2c69682177c'

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/project", install_dir
    system "chmod", "a+x", "#{install_dir}/project"
  end

end
