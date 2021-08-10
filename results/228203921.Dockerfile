[app/sources/228203921.Dockerfile]
digraph {
  "sha256:ae7e6e7e561065e1b3497dd046af14f9f43e659f99e6f5c81a29177c07804ebe" [label="docker-image://docker.io/library/node:4.2" shape="ellipse"];
  "sha256:32167238299fd9a7adcc1cdde960bb51fc254dc26938ddc43ac5137301a4a266" [label="/bin/sh -c groupadd --system nightmare && useradd --system --create-home --gid nightmare nightmare" shape="box"];
  "sha256:ae2e8f41a95168d894b199614c3a5b833b702e321f848ccbfca932bca2989a7c" [label="/bin/sh -c apt-get update && apt-get install -y   xvfb   x11-xkb-utils   xfonts-100dpi   xfonts-75dpi   xfonts-scalable   xfonts-cyrillic   x11-apps   clang   libdbus-1-dev   libgtk2.0-dev   libnotify-dev   libgnome-keyring-dev   libgconf2-dev   libasound2-dev   libcap-dev   libcups2-dev   libxtst-dev   libxss1   libnss3-dev   gcc-multilib   g++-multilib &&     rm -rf /var/lib/apt/lists/* && \t\tfind /usr/share/doc -depth -type f ! -name copyright | xargs rm || true && \t\tfind /usr/share/doc -empty | xargs rmdir || true && \t\trm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* && \t\trm -rf /usr/share/lintian/* /usr/share/linda/* /var/cache/man/*" shape="box"];
  "sha256:bdc8590a8228fdbdac81e7580958c6304d86120230d11715da3c82bde608d045" [label="mkdir{path=/home/nightmare}" shape="note"];
  "sha256:4a238dd7754e7a7ccf58f4435c204a1cb034d65877ace6b7f74d3bde74464018" [label="local://context" shape="ellipse"];
  "sha256:cc2138fd10cd2885fed2977e7d2d6174b64eee38199abc657c2b2866e7557d4f" [label="copy{src=/package.json, dest=/home/nightmare/}" shape="note"];
  "sha256:3814375858d036d1b031a454a7e78b64f410a6673b1519bb1b20f796c2b717fa" [label="/bin/sh -c npm install" shape="box"];
  "sha256:ae057df28026db4e51eb47eabf8dc1d83248e154aebde54ca54b42a645973242" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:abb84a6a7801f630cd132ddcde2a5b2a59316ea6937a723cb846e577547c318f" [label="sha256:abb84a6a7801f630cd132ddcde2a5b2a59316ea6937a723cb846e577547c318f" shape="plaintext"];
  "sha256:ae7e6e7e561065e1b3497dd046af14f9f43e659f99e6f5c81a29177c07804ebe" -> "sha256:32167238299fd9a7adcc1cdde960bb51fc254dc26938ddc43ac5137301a4a266" [label=""];
  "sha256:32167238299fd9a7adcc1cdde960bb51fc254dc26938ddc43ac5137301a4a266" -> "sha256:ae2e8f41a95168d894b199614c3a5b833b702e321f848ccbfca932bca2989a7c" [label=""];
  "sha256:ae2e8f41a95168d894b199614c3a5b833b702e321f848ccbfca932bca2989a7c" -> "sha256:bdc8590a8228fdbdac81e7580958c6304d86120230d11715da3c82bde608d045" [label=""];
  "sha256:bdc8590a8228fdbdac81e7580958c6304d86120230d11715da3c82bde608d045" -> "sha256:cc2138fd10cd2885fed2977e7d2d6174b64eee38199abc657c2b2866e7557d4f" [label=""];
  "sha256:4a238dd7754e7a7ccf58f4435c204a1cb034d65877ace6b7f74d3bde74464018" -> "sha256:cc2138fd10cd2885fed2977e7d2d6174b64eee38199abc657c2b2866e7557d4f" [label=""];
  "sha256:cc2138fd10cd2885fed2977e7d2d6174b64eee38199abc657c2b2866e7557d4f" -> "sha256:3814375858d036d1b031a454a7e78b64f410a6673b1519bb1b20f796c2b717fa" [label=""];
  "sha256:3814375858d036d1b031a454a7e78b64f410a6673b1519bb1b20f796c2b717fa" -> "sha256:ae057df28026db4e51eb47eabf8dc1d83248e154aebde54ca54b42a645973242" [label=""];
  "sha256:4a238dd7754e7a7ccf58f4435c204a1cb034d65877ace6b7f74d3bde74464018" -> "sha256:ae057df28026db4e51eb47eabf8dc1d83248e154aebde54ca54b42a645973242" [label=""];
  "sha256:ae057df28026db4e51eb47eabf8dc1d83248e154aebde54ca54b42a645973242" -> "sha256:abb84a6a7801f630cd132ddcde2a5b2a59316ea6937a723cb846e577547c318f" [label=""];
}

