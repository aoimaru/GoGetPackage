[app/sources/240179615.Dockerfile]
digraph {
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" [label="docker-image://docker.io/library/debian:jessie-slim" shape="ellipse"];
  "sha256:caceb404c5c1d705a0d86c6450fde00ca86279bd8d5e8d9a205435e05be88e32" [label="local://context" shape="ellipse"];
  "sha256:22782a0b661427626283c206b04bb982dd62a1cf5a4b184ffe84128990e8341e" [label="copy{src=/assets, dest=/usr/local}" shape="note"];
  "sha256:d890ee9ac21b345432c949badd98aea93c4720c548ea4a48736b365f2a202836" [label="/bin/sh -c apt-get update &&     apt-get install -y apt-utils clamav clamav-daemon curl inotify-tools supervisor host tar wget chkconfig &&     mkdir -p /var/log/supervisor &&     mkdir -p /var/log/cron &&     cd /usr/local/ && chmod +x *.sh && sync &&     cd /usr/local/bin && chmod +x *.sh && sync &&     /usr/local/install_maldet.sh &&     /usr/local/install_antivirus.sh &&     apt-get -y remove curl apt-utils &&     rm -rf /var/cache/* &&     freshclam &&     maldet -u -d" shape="box"];
  "sha256:f80cc1f5140a1cf1376a970841e4ff82a8357eba89ab5ed62d89d58f7b28e74e" [label="sha256:f80cc1f5140a1cf1376a970841e4ff82a8357eba89ab5ed62d89d58f7b28e74e" shape="plaintext"];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" -> "sha256:22782a0b661427626283c206b04bb982dd62a1cf5a4b184ffe84128990e8341e" [label=""];
  "sha256:caceb404c5c1d705a0d86c6450fde00ca86279bd8d5e8d9a205435e05be88e32" -> "sha256:22782a0b661427626283c206b04bb982dd62a1cf5a4b184ffe84128990e8341e" [label=""];
  "sha256:22782a0b661427626283c206b04bb982dd62a1cf5a4b184ffe84128990e8341e" -> "sha256:d890ee9ac21b345432c949badd98aea93c4720c548ea4a48736b365f2a202836" [label=""];
  "sha256:d890ee9ac21b345432c949badd98aea93c4720c548ea4a48736b365f2a202836" -> "sha256:f80cc1f5140a1cf1376a970841e4ff82a8357eba89ab5ed62d89d58f7b28e74e" [label=""];
}

