[app/sources/178534365.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:842669e3c99c936b858800913a061ef8a6216f215305191f0231415ac60e0a3b" [label="/bin/sh -c apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399" shape="box"];
  "sha256:9f93acda27f140dc7779125f1a89f0a69f0ff360f6589ef3500a88a73643d9f6" [label="/bin/sh -c echo \"deb http://download.rethinkdb.com/apt wheezy main\" > /etc/apt/sources.list.d/rethinkdb.list" shape="box"];
  "sha256:dc18e3983c5782d7e6b3ac077126da43303b08bd14e7db2c368a9e94b23bdb5d" [label="/bin/sh -c apt-get update \t&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a04a847c82e81f787f96d178252e59c359dddae27541fb91195a577cb297df88" [label="mkdir{path=/data}" shape="note"];
  "sha256:b8ea5ee800d81257b327c0a5661fe8d62e76e1e43ee5ae13018b736f9b405453" [label="sha256:b8ea5ee800d81257b327c0a5661fe8d62e76e1e43ee5ae13018b736f9b405453" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:842669e3c99c936b858800913a061ef8a6216f215305191f0231415ac60e0a3b" [label=""];
  "sha256:842669e3c99c936b858800913a061ef8a6216f215305191f0231415ac60e0a3b" -> "sha256:9f93acda27f140dc7779125f1a89f0a69f0ff360f6589ef3500a88a73643d9f6" [label=""];
  "sha256:9f93acda27f140dc7779125f1a89f0a69f0ff360f6589ef3500a88a73643d9f6" -> "sha256:dc18e3983c5782d7e6b3ac077126da43303b08bd14e7db2c368a9e94b23bdb5d" [label=""];
  "sha256:dc18e3983c5782d7e6b3ac077126da43303b08bd14e7db2c368a9e94b23bdb5d" -> "sha256:a04a847c82e81f787f96d178252e59c359dddae27541fb91195a577cb297df88" [label=""];
  "sha256:a04a847c82e81f787f96d178252e59c359dddae27541fb91195a577cb297df88" -> "sha256:b8ea5ee800d81257b327c0a5661fe8d62e76e1e43ee5ae13018b736f9b405453" [label=""];
}

