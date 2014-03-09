require "formula"

class Project < Formula
  homepage "https://github.com/demands/project"
  url "https://github.com/demands/project/archive/v0.0.1.tar.gz"
  sha1 "1c9dfa0d72878b196619ced99bcf299de59cd713"

  def install
    install_dir = "#{prefix}/bin"
    system "mkdir", "-p", install_dir
    system "cp", "./bin/project", install_dir
    system "chmod", "a+x", "#{install_dir}/project"
  end

end
