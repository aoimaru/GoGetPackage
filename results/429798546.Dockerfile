[app/sources/429798546.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:17f23ad7d2cee9078b8186e1f8eb4dc61563dbba4a5525f9a68ab1ffec094f77" [label="/bin/sh -c apt-get update && sudo apt-get -y upgrade" shape="box"];
  "sha256:09aa867433da596eef3dc854826bb5d0352a79ce33f78a140897cd3d8ea40b32" [label="/bin/sh -c apt-get install -y exim4" shape="box"];
  "sha256:1bc771dfadc0bf57e27a6547583483c917df309e8a3b0f27826c3ab7a49d66d9" [label="/bin/sh -c apt-get install -y xtail" shape="box"];
  "sha256:20867474177c88afac3818ac62572e9c4074728353bf1d37ef75d3703150e98f" [label="/bin/sh -c rm -rf /etc/exim4 && mkdir -p /etc/exim4" shape="box"];
  "sha256:58b3225bdec0197b8deb5028cc4e82871d752dcc051af59934e827757ceb905d" [label="local://context" shape="ellipse"];
  "sha256:18feb6a2895f10f94b4ab99c3883e8aa5ca3ef30187330fb9af2b7a735df10cf" [label="copy{src=/exim4.conf, dest=/etc/exim4/exim4.conf}" shape="note"];
  "sha256:66eb790e90f9ba31035c0dc04206673bd5297ed0a5c8a1e858f6fee5fce01d37" [label="copy{src=/start.sh, dest=/exim}" shape="note"];
  "sha256:1bf26423743b275cc946b0e17957f707c9624e20bf50d8528900121a36b0afe5" [label="/bin/sh -c chmod +x /exim" shape="box"];
  "sha256:99ad000b0833db6d953c5bfa290b9686bfc4b653e5b1e56e9677ed49abbb7b2d" [label="sha256:99ad000b0833db6d953c5bfa290b9686bfc4b653e5b1e56e9677ed49abbb7b2d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:17f23ad7d2cee9078b8186e1f8eb4dc61563dbba4a5525f9a68ab1ffec094f77" [label=""];
  "sha256:17f23ad7d2cee9078b8186e1f8eb4dc61563dbba4a5525f9a68ab1ffec094f77" -> "sha256:09aa867433da596eef3dc854826bb5d0352a79ce33f78a140897cd3d8ea40b32" [label=""];
  "sha256:09aa867433da596eef3dc854826bb5d0352a79ce33f78a140897cd3d8ea40b32" -> "sha256:1bc771dfadc0bf57e27a6547583483c917df309e8a3b0f27826c3ab7a49d66d9" [label=""];
  "sha256:1bc771dfadc0bf57e27a6547583483c917df309e8a3b0f27826c3ab7a49d66d9" -> "sha256:20867474177c88afac3818ac62572e9c4074728353bf1d37ef75d3703150e98f" [label=""];
  "sha256:20867474177c88afac3818ac62572e9c4074728353bf1d37ef75d3703150e98f" -> "sha256:18feb6a2895f10f94b4ab99c3883e8aa5ca3ef30187330fb9af2b7a735df10cf" [label=""];
  "sha256:58b3225bdec0197b8deb5028cc4e82871d752dcc051af59934e827757ceb905d" -> "sha256:18feb6a2895f10f94b4ab99c3883e8aa5ca3ef30187330fb9af2b7a735df10cf" [label=""];
  "sha256:18feb6a2895f10f94b4ab99c3883e8aa5ca3ef30187330fb9af2b7a735df10cf" -> "sha256:66eb790e90f9ba31035c0dc04206673bd5297ed0a5c8a1e858f6fee5fce01d37" [label=""];
  "sha256:58b3225bdec0197b8deb5028cc4e82871d752dcc051af59934e827757ceb905d" -> "sha256:66eb790e90f9ba31035c0dc04206673bd5297ed0a5c8a1e858f6fee5fce01d37" [label=""];
  "sha256:66eb790e90f9ba31035c0dc04206673bd5297ed0a5c8a1e858f6fee5fce01d37" -> "sha256:1bf26423743b275cc946b0e17957f707c9624e20bf50d8528900121a36b0afe5" [label=""];
  "sha256:1bf26423743b275cc946b0e17957f707c9624e20bf50d8528900121a36b0afe5" -> "sha256:99ad000b0833db6d953c5bfa290b9686bfc4b653e5b1e56e9677ed49abbb7b2d" [label=""];
}

