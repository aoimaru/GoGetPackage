[app/sources/275225326.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:60e8e94ae123efcd934e4124924a87567d5a4ff80a5b182adb4d8a5dd0b9699e" [label="/bin/sh -c mkdir -p \"$HTTPD_PREFIX\" \t&& chown www-data:www-data \"$HTTPD_PREFIX\"" shape="box"];
  "sha256:fa6e656dcf5147621d8c350305c4b081771741cd8e957f7d46e81cbe50d87feb" [label="mkdir{path=/usr/local/apache2}" shape="note"];
  "sha256:ee308a6ecb0421de1e2c84f5a42f28c1d810f11a5c83a0f1901ab69ab39f4e14" [label="/bin/sh -c apt-get update \t&& apt-get install apache2 php5 -y \t&&  apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c7dbb557b18920a195b3a158283ae690802e59b1046d51f49e1a9210bc101e46" [label="local://context" shape="ellipse"];
  "sha256:c07eb9fbf0c2abb911e8aa429a2bb5c68c20e1bcf106a3aa4bb557419fe71902" [label="copy{src=/*.php, dest=/var/www/html/}" shape="note"];
  "sha256:983a190be76ea8d3457d7d9cfb29616e62c94df3bdd474cb0583d6d101c9605b" [label="copy{src=/index.html, dest=/var/www/html/}" shape="note"];
  "sha256:0643b2814a6244894aa9b3e1a59bfe0e92865881e0039e4f4632717dec8fb305" [label="copy{src=/httpd-foreground, dest=/usr/local/bin/}" shape="note"];
  "sha256:49fd3d5446682895e142309248f5a5f14b5a65052247736399ad5b7d94bd6f7b" [label="sha256:49fd3d5446682895e142309248f5a5f14b5a65052247736399ad5b7d94bd6f7b" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:60e8e94ae123efcd934e4124924a87567d5a4ff80a5b182adb4d8a5dd0b9699e" [label=""];
  "sha256:60e8e94ae123efcd934e4124924a87567d5a4ff80a5b182adb4d8a5dd0b9699e" -> "sha256:fa6e656dcf5147621d8c350305c4b081771741cd8e957f7d46e81cbe50d87feb" [label=""];
  "sha256:fa6e656dcf5147621d8c350305c4b081771741cd8e957f7d46e81cbe50d87feb" -> "sha256:ee308a6ecb0421de1e2c84f5a42f28c1d810f11a5c83a0f1901ab69ab39f4e14" [label=""];
  "sha256:ee308a6ecb0421de1e2c84f5a42f28c1d810f11a5c83a0f1901ab69ab39f4e14" -> "sha256:c07eb9fbf0c2abb911e8aa429a2bb5c68c20e1bcf106a3aa4bb557419fe71902" [label=""];
  "sha256:c7dbb557b18920a195b3a158283ae690802e59b1046d51f49e1a9210bc101e46" -> "sha256:c07eb9fbf0c2abb911e8aa429a2bb5c68c20e1bcf106a3aa4bb557419fe71902" [label=""];
  "sha256:c07eb9fbf0c2abb911e8aa429a2bb5c68c20e1bcf106a3aa4bb557419fe71902" -> "sha256:983a190be76ea8d3457d7d9cfb29616e62c94df3bdd474cb0583d6d101c9605b" [label=""];
  "sha256:c7dbb557b18920a195b3a158283ae690802e59b1046d51f49e1a9210bc101e46" -> "sha256:983a190be76ea8d3457d7d9cfb29616e62c94df3bdd474cb0583d6d101c9605b" [label=""];
  "sha256:983a190be76ea8d3457d7d9cfb29616e62c94df3bdd474cb0583d6d101c9605b" -> "sha256:0643b2814a6244894aa9b3e1a59bfe0e92865881e0039e4f4632717dec8fb305" [label=""];
  "sha256:c7dbb557b18920a195b3a158283ae690802e59b1046d51f49e1a9210bc101e46" -> "sha256:0643b2814a6244894aa9b3e1a59bfe0e92865881e0039e4f4632717dec8fb305" [label=""];
  "sha256:0643b2814a6244894aa9b3e1a59bfe0e92865881e0039e4f4632717dec8fb305" -> "sha256:49fd3d5446682895e142309248f5a5f14b5a65052247736399ad5b7d94bd6f7b" [label=""];
}

