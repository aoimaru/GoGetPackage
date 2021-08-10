[app/sources/246055045.Dockerfile]
digraph {
  "sha256:0c8bb85d42c575432ef3c57688b547e4c2df5f769e578103b25c15f1a7580f44" [label="local://context" shape="ellipse"];
  "sha256:e057417d4d0626c363640ba68035113ebf8ab42c7e311c70181b7197bd673eac" [label="docker-image://docker.io/crystallang/crystal:0.29.0" shape="ellipse"];
  "sha256:fccc11acd3ea373e91194345a14a7f44eeb40ff1c467a097778786ec3ab205eb" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:777ccbd839161339c240d638337ccc01591b477f2dcdb1051c2f28ce3bb7cc93" [label="copy{src=/src, dest=/usr/src/app/src}" shape="note"];
  "sha256:73fc1d3a5909d745f0ad2a98130b95118737873baa3105413d816e81548b6fac" [label="copy{src=/shard.yml, dest=/usr/src/app/}" shape="note"];
  "sha256:8d7ff0c5f118c74c7aad3e3d8b5e5eb4b381053f5b45a7930aad69abbb9943da" [label="/bin/sh -c shards build --release --no-debug" shape="box"];
  "sha256:3911f13dc713f0ec89239dc45757ed3d57beac8604308b88804266be5e5b2764" [label="sha256:3911f13dc713f0ec89239dc45757ed3d57beac8604308b88804266be5e5b2764" shape="plaintext"];
  "sha256:e057417d4d0626c363640ba68035113ebf8ab42c7e311c70181b7197bd673eac" -> "sha256:fccc11acd3ea373e91194345a14a7f44eeb40ff1c467a097778786ec3ab205eb" [label=""];
  "sha256:fccc11acd3ea373e91194345a14a7f44eeb40ff1c467a097778786ec3ab205eb" -> "sha256:777ccbd839161339c240d638337ccc01591b477f2dcdb1051c2f28ce3bb7cc93" [label=""];
  "sha256:0c8bb85d42c575432ef3c57688b547e4c2df5f769e578103b25c15f1a7580f44" -> "sha256:777ccbd839161339c240d638337ccc01591b477f2dcdb1051c2f28ce3bb7cc93" [label=""];
  "sha256:777ccbd839161339c240d638337ccc01591b477f2dcdb1051c2f28ce3bb7cc93" -> "sha256:73fc1d3a5909d745f0ad2a98130b95118737873baa3105413d816e81548b6fac" [label=""];
  "sha256:0c8bb85d42c575432ef3c57688b547e4c2df5f769e578103b25c15f1a7580f44" -> "sha256:73fc1d3a5909d745f0ad2a98130b95118737873baa3105413d816e81548b6fac" [label=""];
  "sha256:73fc1d3a5909d745f0ad2a98130b95118737873baa3105413d816e81548b6fac" -> "sha256:8d7ff0c5f118c74c7aad3e3d8b5e5eb4b381053f5b45a7930aad69abbb9943da" [label=""];
  "sha256:8d7ff0c5f118c74c7aad3e3d8b5e5eb4b381053f5b45a7930aad69abbb9943da" -> "sha256:3911f13dc713f0ec89239dc45757ed3d57beac8604308b88804266be5e5b2764" [label=""];
}

