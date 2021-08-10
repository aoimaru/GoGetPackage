[app/sources/178534352.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:842669e3c99c936b858800913a061ef8a6216f215305191f0231415ac60e0a3b" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:9f93acda27f140dc7779125f1a89f0a69f0ff360f6589ef3500a88a73643d9f6" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt wheezy main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:5013a6f6afd4bcdf920a31106e29471eeb06c0d561791677829afffca84cd609" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:35a064612d363b5f0f4b83ca090d2710c5662fbf72a6d46f799de68206f443f6" [label="mkdir{path=/data}" shape="note"];
  "sha256:46cfd184986e2c049aeedaff794b748cb245e43b6c108634d659dbf46c64b604" [label="sha256:46cfd184986e2c049aeedaff794b748cb245e43b6c108634d659dbf46c64b604" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:842669e3c99c936b858800913a061ef8a6216f215305191f0231415ac60e0a3b" [label=""];
  "sha256:842669e3c99c936b858800913a061ef8a6216f215305191f0231415ac60e0a3b" -> "sha256:9f93acda27f140dc7779125f1a89f0a69f0ff360f6589ef3500a88a73643d9f6" [label=""];
  "sha256:9f93acda27f140dc7779125f1a89f0a69f0ff360f6589ef3500a88a73643d9f6" -> "sha256:5013a6f6afd4bcdf920a31106e29471eeb06c0d561791677829afffca84cd609" [label=""];
  "sha256:5013a6f6afd4bcdf920a31106e29471eeb06c0d561791677829afffca84cd609" -> "sha256:35a064612d363b5f0f4b83ca090d2710c5662fbf72a6d46f799de68206f443f6" [label=""];
  "sha256:35a064612d363b5f0f4b83ca090d2710c5662fbf72a6d46f799de68206f443f6" -> "sha256:46cfd184986e2c049aeedaff794b748cb245e43b6c108634d659dbf46c64b604" [label=""];
}

