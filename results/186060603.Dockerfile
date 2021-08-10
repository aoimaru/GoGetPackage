[app/sources/186060603.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:ba8b7b9b9ec75ff50aaf9838db08e7b0a9399efa75e7c2339c0baca374a1e386" [label="/bin/sh -c apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get install -y   ruby wget build-essential &&  cd /tmp &&  wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz &&  tar -xzvf ruby-install-0.5.0.tar.gz &&  cd ruby-install-0.5.0/ &&  make install &&  ruby-install jruby 1.7.16 &&  PATH=/opt/rubies/jruby-1.7.16/bin:$PATH gem install bundler &&  apt-get clean &&  DEBIAN_FRONTEND=noninteractive apt-get remove --purge -y ruby wget build-essential &&  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:64d700c21c5dce3dcd83d543765b53398e63cf2be24576f562d0a296f14287a3" [label="local://context" shape="ellipse"];
  "sha256:1444abd919bb6582b9f01079b3d074835b958613a89a3d531627af34eec66dda" [label="copy{src=/ruby.sh, dest=/etc/profile.d/ruby.sh}" shape="note"];
  "sha256:3ad4752d7c2174271cebc5751e14b1edcb079567af5f367bed2260f0e4d4c1d4" [label="sha256:3ad4752d7c2174271cebc5751e14b1edcb079567af5f367bed2260f0e4d4c1d4" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:ba8b7b9b9ec75ff50aaf9838db08e7b0a9399efa75e7c2339c0baca374a1e386" [label=""];
  "sha256:ba8b7b9b9ec75ff50aaf9838db08e7b0a9399efa75e7c2339c0baca374a1e386" -> "sha256:1444abd919bb6582b9f01079b3d074835b958613a89a3d531627af34eec66dda" [label=""];
  "sha256:64d700c21c5dce3dcd83d543765b53398e63cf2be24576f562d0a296f14287a3" -> "sha256:1444abd919bb6582b9f01079b3d074835b958613a89a3d531627af34eec66dda" [label=""];
  "sha256:1444abd919bb6582b9f01079b3d074835b958613a89a3d531627af34eec66dda" -> "sha256:3ad4752d7c2174271cebc5751e14b1edcb079567af5f367bed2260f0e4d4c1d4" [label=""];
}

