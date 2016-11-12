require "formula"

class Project < Formula
  homepage 'https://github.com/demands/project'
  url 'https://api.github.com/repos/demands/project/tarball/v0.1.0'
  sha256 'd3efa596154ad41214fd0911c32adece74553b4a3b6e3768355c561ab97977a5'

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/project", install_dir
    system "chmod", "a+x", "#{install_dir}/project"
  end

end
