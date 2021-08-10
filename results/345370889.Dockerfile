[app/sources/345370889.Dockerfile]
digraph {
  "sha256:e3605939ccc059b2981f6a6b2718b6e59772ba3145788a130de660d66d93c695" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-debian:buster-run" shape="ellipse"];
  "sha256:dfca902eee8714354846507756ec15240417cfbbbca80dede61099f147faf704" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5d7728a12c1a4f89e44bcf66e425c2b906acf048311549652e5c85a20209a289" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:87b29b98f92b085f576046dd0b50c5047f85bdbe4165f0d10048c539cc7eeb10" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:59774feacc3e7d54f4c5acc7e9cd526c652b0a545b55ba14a252374213bac541" [label="mkdir{path=/go}" shape="note"];
  "sha256:ab0b730ac83eadf60098fd9cf08a2828be01e0662a8cc85978ebdd97445b232e" [label="sha256:ab0b730ac83eadf60098fd9cf08a2828be01e0662a8cc85978ebdd97445b232e" shape="plaintext"];
  "sha256:e3605939ccc059b2981f6a6b2718b6e59772ba3145788a130de660d66d93c695" -> "sha256:dfca902eee8714354846507756ec15240417cfbbbca80dede61099f147faf704" [label=""];
  "sha256:dfca902eee8714354846507756ec15240417cfbbbca80dede61099f147faf704" -> "sha256:5d7728a12c1a4f89e44bcf66e425c2b906acf048311549652e5c85a20209a289" [label=""];
  "sha256:5d7728a12c1a4f89e44bcf66e425c2b906acf048311549652e5c85a20209a289" -> "sha256:87b29b98f92b085f576046dd0b50c5047f85bdbe4165f0d10048c539cc7eeb10" [label=""];
  "sha256:87b29b98f92b085f576046dd0b50c5047f85bdbe4165f0d10048c539cc7eeb10" -> "sha256:59774feacc3e7d54f4c5acc7e9cd526c652b0a545b55ba14a252374213bac541" [label=""];
  "sha256:59774feacc3e7d54f4c5acc7e9cd526c652b0a545b55ba14a252374213bac541" -> "sha256:ab0b730ac83eadf60098fd9cf08a2828be01e0662a8cc85978ebdd97445b232e" [label=""];
}

