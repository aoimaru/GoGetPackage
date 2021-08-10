[app/sources/253286692.Dockerfile]
digraph {
  "sha256:a9434f0a23b7a660590253a6cff3894b70ba14fee56db277556f6f8355aab383" [label="docker-image://docker.io/selenoid/base:5.0" shape="ellipse"];
  "sha256:76e64733787d0c5cf06841ad61fdee94fc25937a617669aec7559a1be0427eca" [label="/bin/sh -c ( [ \"$CLEANUP\" != \"true\" ] && rm -f /etc/apt/apt.conf.d/docker-clean ) || true &&         wget -O- http://deb.opera.com/archive.key | apt-key add - &&         echo 'deb http://deb.opera.com/opera-stable/ stable non-free' > /etc/apt/sources.list.d/opera-blink.list &&         apt-get update &&         apt-get -y --no-install-recommends install opera-stable=$VERSION &&         opera --version &&         rm /etc/apt/sources.list.d/opera-stable.list &&         ($CLEANUP && rm -Rf /tmp/* && rm -Rf /var/lib/apt/lists/*) || true" shape="box"];
  "sha256:77e79529c115712961159eb353d5c952c1508d44bb7d9b16710878f08e8e8fbd" [label="sha256:77e79529c115712961159eb353d5c952c1508d44bb7d9b16710878f08e8e8fbd" shape="plaintext"];
  "sha256:a9434f0a23b7a660590253a6cff3894b70ba14fee56db277556f6f8355aab383" -> "sha256:76e64733787d0c5cf06841ad61fdee94fc25937a617669aec7559a1be0427eca" [label=""];
  "sha256:76e64733787d0c5cf06841ad61fdee94fc25937a617669aec7559a1be0427eca" -> "sha256:77e79529c115712961159eb353d5c952c1508d44bb7d9b16710878f08e8e8fbd" [label=""];
}

