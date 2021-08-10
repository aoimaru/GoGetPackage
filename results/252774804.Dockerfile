[app/sources/252774804.Dockerfile]
digraph {
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" [label="docker-image://docker.io/library/ruby:2.3.1" shape="ellipse"];
  "sha256:dad7939adbda7766722fd0aa8c2f3eabf76c6e9cf59ca78280bd5b591ae18d47" [label="/bin/sh -c apt-get update -qq && apt-get install -y $DEPENDS && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:00dba50b0ade97bece9b7c7bbf450184505b67be17e67d5e84bf0bce1d59cdc4" [label="local://context" shape="ellipse"];
  "sha256:ee7a6e410b8f2a089ffbc984cc9e0b03e7d61299904572af1d0a8b5fd6056518" [label="copy{src=/xvfb.init, dest=/etc/init.d/xvfb}" shape="note"];
  "sha256:0dad057c7f91860d97ab2eb272bdda623bf23c18b035b750a652c499c13675f2" [label="/bin/sh -c chmod +x /etc/init.d/xvfb" shape="box"];
  "sha256:9a71cbcfe29e60b1b0dde4382015d9cedb99ea8627b17e57b66a0aed80cf9a06" [label="/bin/sh -c update-rc.d xvfb defaults" shape="box"];
  "sha256:662cd9314a2822fee20def6653b072137bdb3daf5bca4e0b1f2e8ce54b56bc29" [label="mkdir{path=/home/rails/webapp}" shape="note"];
  "sha256:f60d80369d4915b60049c04f12507918f84b3b1f203665c5eca5f9a04febe097" [label="copy{src=/Gemfile, dest=/home/rails/webapp/Gemfile}" shape="note"];
  "sha256:2eb8e92ac79ab6ca8afe274d7afe6bb1ad96868ebd64d5195f7b03de76117578" [label="copy{src=/Gemfile.lock, dest=/home/rails/webapp/Gemfile.lock}" shape="note"];
  "sha256:29386d8be311d56b6d8bc1cfb29e85f78ea76084a398687a0e4b5250de65a04f" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:494e4782deb369e98e76d3b43af144cb8aac1381c1d76819f65daab5a5eddd26" [label="sha256:494e4782deb369e98e76d3b43af144cb8aac1381c1d76819f65daab5a5eddd26" shape="plaintext"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" -> "sha256:dad7939adbda7766722fd0aa8c2f3eabf76c6e9cf59ca78280bd5b591ae18d47" [label=""];
  "sha256:dad7939adbda7766722fd0aa8c2f3eabf76c6e9cf59ca78280bd5b591ae18d47" -> "sha256:ee7a6e410b8f2a089ffbc984cc9e0b03e7d61299904572af1d0a8b5fd6056518" [label=""];
  "sha256:00dba50b0ade97bece9b7c7bbf450184505b67be17e67d5e84bf0bce1d59cdc4" -> "sha256:ee7a6e410b8f2a089ffbc984cc9e0b03e7d61299904572af1d0a8b5fd6056518" [label=""];
  "sha256:ee7a6e410b8f2a089ffbc984cc9e0b03e7d61299904572af1d0a8b5fd6056518" -> "sha256:0dad057c7f91860d97ab2eb272bdda623bf23c18b035b750a652c499c13675f2" [label=""];
  "sha256:0dad057c7f91860d97ab2eb272bdda623bf23c18b035b750a652c499c13675f2" -> "sha256:9a71cbcfe29e60b1b0dde4382015d9cedb99ea8627b17e57b66a0aed80cf9a06" [label=""];
  "sha256:9a71cbcfe29e60b1b0dde4382015d9cedb99ea8627b17e57b66a0aed80cf9a06" -> "sha256:662cd9314a2822fee20def6653b072137bdb3daf5bca4e0b1f2e8ce54b56bc29" [label=""];
  "sha256:662cd9314a2822fee20def6653b072137bdb3daf5bca4e0b1f2e8ce54b56bc29" -> "sha256:f60d80369d4915b60049c04f12507918f84b3b1f203665c5eca5f9a04febe097" [label=""];
  "sha256:00dba50b0ade97bece9b7c7bbf450184505b67be17e67d5e84bf0bce1d59cdc4" -> "sha256:f60d80369d4915b60049c04f12507918f84b3b1f203665c5eca5f9a04febe097" [label=""];
  "sha256:f60d80369d4915b60049c04f12507918f84b3b1f203665c5eca5f9a04febe097" -> "sha256:2eb8e92ac79ab6ca8afe274d7afe6bb1ad96868ebd64d5195f7b03de76117578" [label=""];
  "sha256:00dba50b0ade97bece9b7c7bbf450184505b67be17e67d5e84bf0bce1d59cdc4" -> "sha256:2eb8e92ac79ab6ca8afe274d7afe6bb1ad96868ebd64d5195f7b03de76117578" [label=""];
  "sha256:2eb8e92ac79ab6ca8afe274d7afe6bb1ad96868ebd64d5195f7b03de76117578" -> "sha256:29386d8be311d56b6d8bc1cfb29e85f78ea76084a398687a0e4b5250de65a04f" [label=""];
  "sha256:29386d8be311d56b6d8bc1cfb29e85f78ea76084a398687a0e4b5250de65a04f" -> "sha256:494e4782deb369e98e76d3b43af144cb8aac1381c1d76819f65daab5a5eddd26" [label=""];
}

