[app/sources/358429278.Dockerfile]
digraph {
  "sha256:0d082e5c9bf7b5627eb37036722e943116c9861835a9aa8bc0db63dcb6179a12" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:b610186fba3c6793a86ed7a74ad547e1ff4dddfc1e01283fd3355e2a053c3a2e" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive &&   apt-get -qq install -qq -y ruby ruby-dev ruby-bundler > /dev/null &&   apt-get -qq install -qq -y build-essential rpm > /dev/null &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2c327e86576013ffdd44170d4d03986c3a9290e64ba9ad052d44baa371eb302f" [label="/bin/sh -c gem install fpm -q > /dev/null" shape="box"];
  "sha256:21cc08ecdff2f7f5cbce1aef27ace81589ad8cfb4f1f0937d2e5ad925312971e" [label="mkdir{path=/data}" shape="note"];
  "sha256:2378e62361b2a6012e8bea984a18ef5c4ef51649ff8a7fcde0056b1a88b65517" [label="/bin/sh -c mkdir -p /data/build/usr/local/bin /data/build/var/lib/aptfile" shape="box"];
  "sha256:c61f5eaea53837a3cca55d8059c153932a8a6a51046903cd714803e1ce724ebb" [label="copy{src=/bin/aptfile, dest=/data/build/usr/local/bin/aptfile}" shape="note"];
  "sha256:b1048dd7252481c515e7503354a5fe950cb06c457f504c2b8bfd0d6fd00cb897" [label="/bin/sh -c echo \"VERSION\" > /data/build/var/lib/aptfile/VERSION     && chmod +x /data/build/usr/local/bin/aptfile" shape="box"];
  "sha256:a38369709d1e3538ff380a2d8ca9509482860084be243c8a496310d7ae75d029" [label="/bin/sh -c fpm --log warn         -s dir         -t deb         -C /data/build         --name aptfile         --version \"VERSION\"         --description \"a simple method of defining apt-get dependencies for an application\"         --maintainer \"SeatGeek <hi@seatgeek.com>\"         --vendor \"SeatGeek\"         --license \"BSD 3-Clause\"         --url \"https://github.com/seatgeek/bash-aptfile\"         --deb-no-default-config-files         ." shape="box"];
  "sha256:b9a8aff02b70b2425686fe1ffa45e58467f89617fbf28b917ae2b15794b6dc22" [label="/bin/sh -c dpkg -i /data/aptfile_\"VERSION\"_amd64.deb &&     dpkg -s aptfile &&     aptfile -v" shape="box"];
  "sha256:593bea0c70b717ed538f6a21bf2f8f1e1dbe6581868cc1df95bf58a47ca30338" [label="sha256:593bea0c70b717ed538f6a21bf2f8f1e1dbe6581868cc1df95bf58a47ca30338" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" [label=""];
  "sha256:c7c62693d44d638a28c5983ac44ac3bc6cdc1913647ac095a83ccbc3b597d093" -> "sha256:b610186fba3c6793a86ed7a74ad547e1ff4dddfc1e01283fd3355e2a053c3a2e" [label=""];
  "sha256:b610186fba3c6793a86ed7a74ad547e1ff4dddfc1e01283fd3355e2a053c3a2e" -> "sha256:2c327e86576013ffdd44170d4d03986c3a9290e64ba9ad052d44baa371eb302f" [label=""];
  "sha256:2c327e86576013ffdd44170d4d03986c3a9290e64ba9ad052d44baa371eb302f" -> "sha256:21cc08ecdff2f7f5cbce1aef27ace81589ad8cfb4f1f0937d2e5ad925312971e" [label=""];
  "sha256:21cc08ecdff2f7f5cbce1aef27ace81589ad8cfb4f1f0937d2e5ad925312971e" -> "sha256:2378e62361b2a6012e8bea984a18ef5c4ef51649ff8a7fcde0056b1a88b65517" [label=""];
  "sha256:2378e62361b2a6012e8bea984a18ef5c4ef51649ff8a7fcde0056b1a88b65517" -> "sha256:c61f5eaea53837a3cca55d8059c153932a8a6a51046903cd714803e1ce724ebb" [label=""];
  "sha256:0d082e5c9bf7b5627eb37036722e943116c9861835a9aa8bc0db63dcb6179a12" -> "sha256:c61f5eaea53837a3cca55d8059c153932a8a6a51046903cd714803e1ce724ebb" [label=""];
  "sha256:c61f5eaea53837a3cca55d8059c153932a8a6a51046903cd714803e1ce724ebb" -> "sha256:b1048dd7252481c515e7503354a5fe950cb06c457f504c2b8bfd0d6fd00cb897" [label=""];
  "sha256:b1048dd7252481c515e7503354a5fe950cb06c457f504c2b8bfd0d6fd00cb897" -> "sha256:a38369709d1e3538ff380a2d8ca9509482860084be243c8a496310d7ae75d029" [label=""];
  "sha256:a38369709d1e3538ff380a2d8ca9509482860084be243c8a496310d7ae75d029" -> "sha256:b9a8aff02b70b2425686fe1ffa45e58467f89617fbf28b917ae2b15794b6dc22" [label=""];
  "sha256:b9a8aff02b70b2425686fe1ffa45e58467f89617fbf28b917ae2b15794b6dc22" -> "sha256:593bea0c70b717ed538f6a21bf2f8f1e1dbe6581868cc1df95bf58a47ca30338" [label=""];
}

