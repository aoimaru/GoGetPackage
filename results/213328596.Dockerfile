[app/sources/213328596.Dockerfile]
digraph {
  "sha256:519b5e0eb45c7bb3288ac6e3307b1db0399788aebf4fcc7df602124bfb1a2a0a" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:1bc576f1e88655dc13f68e659bfaa5e76bd2da6e590dece213d4718dc920375e" [label="/bin/sh -c set -x     && apt-get update     && apt-get install -y psmisc cron python python-pip     && pip install --upgrade pip     && pip install flask gunicorn supervisor==3.3.2     && mkdir -p /htdocs/templates" shape="box"];
  "sha256:8f4e496d7f72342f95aebdd034efadfe5710ad57ef4bfe40bf32a653effd9c37" [label="copy{src=/src/app.py, dest=/htdocs/app.py}" shape="note"];
  "sha256:25b6fd57756141fc8f8e509117e0fb79dcf3e7485c0a1282b8cb37430d7d26a6" [label="copy{src=/src/index.html, dest=/htdocs/templates/index.html}" shape="note"];
  "sha256:293de5c5bfd6b87d8361a13ab4782de72f275c32b42cde0ea6c8ec5e9f912a84" [label="copy{src=/src/supervisor.conf, dest=/etc/supervisor.conf}" shape="note"];
  "sha256:a0f2bc9c2293b45f5d115515a03936fcb794f1001d5b2617dfa9df4d88eab6f3" [label="copy{src=/src/start.sh, dest=/start.sh}" shape="note"];
  "sha256:6dd62ed67fd6ef6f2af17eba6f166a282087140b7dda391e406966b40b0a00ae" [label="copy{src=/src/daemon.sh, dest=/daemon.sh}" shape="note"];
  "sha256:49b3c489730d53c4828f629ea01e83ea9fd4f7243dcf531b685c802221cc18ba" [label="copy{src=/src/root, dest=/var/spool/cron/crontabs/root}" shape="note"];
  "sha256:eac3cce941bc8b700f54f9538e7607654d3e57d44fed277759ddc94a4c43aef4" [label="/bin/sh -c chmod a+x /start.sh /daemon.sh     && rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:d21f5a017910863610f3575bad23b1e04449bed3e3992dca9bf451a90604128e" [label="sha256:d21f5a017910863610f3575bad23b1e04449bed3e3992dca9bf451a90604128e" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:1bc576f1e88655dc13f68e659bfaa5e76bd2da6e590dece213d4718dc920375e" [label=""];
  "sha256:1bc576f1e88655dc13f68e659bfaa5e76bd2da6e590dece213d4718dc920375e" -> "sha256:8f4e496d7f72342f95aebdd034efadfe5710ad57ef4bfe40bf32a653effd9c37" [label=""];
  "sha256:519b5e0eb45c7bb3288ac6e3307b1db0399788aebf4fcc7df602124bfb1a2a0a" -> "sha256:8f4e496d7f72342f95aebdd034efadfe5710ad57ef4bfe40bf32a653effd9c37" [label=""];
  "sha256:8f4e496d7f72342f95aebdd034efadfe5710ad57ef4bfe40bf32a653effd9c37" -> "sha256:25b6fd57756141fc8f8e509117e0fb79dcf3e7485c0a1282b8cb37430d7d26a6" [label=""];
  "sha256:519b5e0eb45c7bb3288ac6e3307b1db0399788aebf4fcc7df602124bfb1a2a0a" -> "sha256:25b6fd57756141fc8f8e509117e0fb79dcf3e7485c0a1282b8cb37430d7d26a6" [label=""];
  "sha256:25b6fd57756141fc8f8e509117e0fb79dcf3e7485c0a1282b8cb37430d7d26a6" -> "sha256:293de5c5bfd6b87d8361a13ab4782de72f275c32b42cde0ea6c8ec5e9f912a84" [label=""];
  "sha256:519b5e0eb45c7bb3288ac6e3307b1db0399788aebf4fcc7df602124bfb1a2a0a" -> "sha256:293de5c5bfd6b87d8361a13ab4782de72f275c32b42cde0ea6c8ec5e9f912a84" [label=""];
  "sha256:293de5c5bfd6b87d8361a13ab4782de72f275c32b42cde0ea6c8ec5e9f912a84" -> "sha256:a0f2bc9c2293b45f5d115515a03936fcb794f1001d5b2617dfa9df4d88eab6f3" [label=""];
  "sha256:519b5e0eb45c7bb3288ac6e3307b1db0399788aebf4fcc7df602124bfb1a2a0a" -> "sha256:a0f2bc9c2293b45f5d115515a03936fcb794f1001d5b2617dfa9df4d88eab6f3" [label=""];
  "sha256:a0f2bc9c2293b45f5d115515a03936fcb794f1001d5b2617dfa9df4d88eab6f3" -> "sha256:6dd62ed67fd6ef6f2af17eba6f166a282087140b7dda391e406966b40b0a00ae" [label=""];
  "sha256:519b5e0eb45c7bb3288ac6e3307b1db0399788aebf4fcc7df602124bfb1a2a0a" -> "sha256:6dd62ed67fd6ef6f2af17eba6f166a282087140b7dda391e406966b40b0a00ae" [label=""];
  "sha256:6dd62ed67fd6ef6f2af17eba6f166a282087140b7dda391e406966b40b0a00ae" -> "sha256:49b3c489730d53c4828f629ea01e83ea9fd4f7243dcf531b685c802221cc18ba" [label=""];
  "sha256:519b5e0eb45c7bb3288ac6e3307b1db0399788aebf4fcc7df602124bfb1a2a0a" -> "sha256:49b3c489730d53c4828f629ea01e83ea9fd4f7243dcf531b685c802221cc18ba" [label=""];
  "sha256:49b3c489730d53c4828f629ea01e83ea9fd4f7243dcf531b685c802221cc18ba" -> "sha256:eac3cce941bc8b700f54f9538e7607654d3e57d44fed277759ddc94a4c43aef4" [label=""];
  "sha256:eac3cce941bc8b700f54f9538e7607654d3e57d44fed277759ddc94a4c43aef4" -> "sha256:d21f5a017910863610f3575bad23b1e04449bed3e3992dca9bf451a90604128e" [label=""];
}

