[app/sources/236954254.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:60bba484e10d2c256ee310a8bfa6a1fa34604f467268629f7c72ebae47499d07" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends ca-certificates curl file g++ git locales make uuid-runtime     && apt-get clean     && rm -rf /var/lib/apt/lists/*     && localedef -i en_US -f UTF-8 en_US.UTF-8     && useradd -m -s /bin/bash linuxbrew     && echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers" shape="box"];
  "sha256:a8ed7d200b3b6e3a850a355c3c2441f11865a4a28eb4f229d3817fb34218971d" [label="mkdir{path=/home/linuxbrew}" shape="note"];
  "sha256:782523821ad2fb73166a8e521c0935d1d714683a5963d56810e3b69dd4152e9a" [label="/bin/sh -c git clone https://github.com/Homebrew/brew /home/linuxbrew/.linuxbrew/Homebrew     && mkdir /home/linuxbrew/.linuxbrew/bin     && ln -s ../Homebrew/bin/brew /home/linuxbrew/.linuxbrew/bin/     && brew config" shape="box"];
  "sha256:18b1a60c84c65dcc20b7d2b6c200c3ce2f765bad06c46cc13416d03822d0b05f" [label="sha256:18b1a60c84c65dcc20b7d2b6c200c3ce2f765bad06c46cc13416d03822d0b05f" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:60bba484e10d2c256ee310a8bfa6a1fa34604f467268629f7c72ebae47499d07" [label=""];
  "sha256:60bba484e10d2c256ee310a8bfa6a1fa34604f467268629f7c72ebae47499d07" -> "sha256:a8ed7d200b3b6e3a850a355c3c2441f11865a4a28eb4f229d3817fb34218971d" [label=""];
  "sha256:a8ed7d200b3b6e3a850a355c3c2441f11865a4a28eb4f229d3817fb34218971d" -> "sha256:782523821ad2fb73166a8e521c0935d1d714683a5963d56810e3b69dd4152e9a" [label=""];
  "sha256:782523821ad2fb73166a8e521c0935d1d714683a5963d56810e3b69dd4152e9a" -> "sha256:18b1a60c84c65dcc20b7d2b6c200c3ce2f765bad06c46cc13416d03822d0b05f" [label=""];
}

