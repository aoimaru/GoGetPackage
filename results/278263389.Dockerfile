[app/sources/278263389.Dockerfile]
digraph {
  "sha256:7f22298570d821d22d26acfb91efeb80d31fd409f65fdf86a52aa9ba05b6a294" [label="docker-image://docker.io/library/mysql:8.0.3" shape="ellipse"];
  "sha256:cc21806c48a3e088eb4fc53d0d7751fd6fad7875826a3301f8fa470c802d3b7d" [label="/bin/sh -c set -x   && apt-get update   && apt-get install -y --no-install-recommends     ca-certificates     netcat   && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man /tmp/*" shape="box"];
  "sha256:4566afa1d82402d7c44328bb4eeef293ac5bdd78b187ccfb1126963b493967c8" [label="local://context" shape="ellipse"];
  "sha256:0a1bc0ef6a6da277f13c80a263952142308c84daae31b753705bb44c137236bd" [label="copy{src=/osm, dest=/usr/local/bin/osm}" shape="note"];
  "sha256:523d05d80b212d5c6f123c246529488177cd1fe6046c782f855e2c2994da8048" [label="copy{src=/mysql-tools.sh, dest=/usr/local/bin/mysql-tools.sh}" shape="note"];
  "sha256:92fbcf827b7122f2831915e3883470c8f6dd0fd808adfe8a0486eb659bb37e8b" [label="sha256:92fbcf827b7122f2831915e3883470c8f6dd0fd808adfe8a0486eb659bb37e8b" shape="plaintext"];
  "sha256:7f22298570d821d22d26acfb91efeb80d31fd409f65fdf86a52aa9ba05b6a294" -> "sha256:cc21806c48a3e088eb4fc53d0d7751fd6fad7875826a3301f8fa470c802d3b7d" [label=""];
  "sha256:cc21806c48a3e088eb4fc53d0d7751fd6fad7875826a3301f8fa470c802d3b7d" -> "sha256:0a1bc0ef6a6da277f13c80a263952142308c84daae31b753705bb44c137236bd" [label=""];
  "sha256:4566afa1d82402d7c44328bb4eeef293ac5bdd78b187ccfb1126963b493967c8" -> "sha256:0a1bc0ef6a6da277f13c80a263952142308c84daae31b753705bb44c137236bd" [label=""];
  "sha256:0a1bc0ef6a6da277f13c80a263952142308c84daae31b753705bb44c137236bd" -> "sha256:523d05d80b212d5c6f123c246529488177cd1fe6046c782f855e2c2994da8048" [label=""];
  "sha256:4566afa1d82402d7c44328bb4eeef293ac5bdd78b187ccfb1126963b493967c8" -> "sha256:523d05d80b212d5c6f123c246529488177cd1fe6046c782f855e2c2994da8048" [label=""];
  "sha256:523d05d80b212d5c6f123c246529488177cd1fe6046c782f855e2c2994da8048" -> "sha256:92fbcf827b7122f2831915e3883470c8f6dd0fd808adfe8a0486eb659bb37e8b" [label=""];
}

