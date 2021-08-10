[app/sources/427279323.Dockerfile]
digraph {
  "sha256:f700c54f5b4f7975a21cbbee7b306c864ffd773d5bebaff8da7e7cf3c93082dd" [label="docker-image://docker.io/dockerfile/java:oracle-java8" shape="ellipse"];
  "sha256:2078cdcf19b5a8e1f30211151d3d0e814aaad0e42e8b6735ffaf29266d7ef82e" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:33cf838a96b8a7bb4695be2f8216a5089dbb9ab615638eaf8b6dcdc6d263bf53" [label="local://context" shape="ellipse"];
  "sha256:893726aeafe1e3c9a27b7141b30684da586b7f4f2f75f208e6fb0174c1f7396b" [label="copy{src=/target/uberjar/birdwatch-0.1.0-SNAPSHOT-standalone.jar, dest=/srv/birdwatch-clj.jar}" shape="note"];
  "sha256:979d73d54659514a7e20cbbe9de24ae6e9af8c403c0fef61722cfb01463ecbb3" [label="copy{src=/twitterconf.edn, dest=/srv/twitterconf.edn}" shape="note"];
  "sha256:81cf88622e584dd971dec6baa7e690ea587b4e4456c4cfc21a8e570cb39df856" [label="sha256:81cf88622e584dd971dec6baa7e690ea587b4e4456c4cfc21a8e570cb39df856" shape="plaintext"];
  "sha256:f700c54f5b4f7975a21cbbee7b306c864ffd773d5bebaff8da7e7cf3c93082dd" -> "sha256:2078cdcf19b5a8e1f30211151d3d0e814aaad0e42e8b6735ffaf29266d7ef82e" [label=""];
  "sha256:2078cdcf19b5a8e1f30211151d3d0e814aaad0e42e8b6735ffaf29266d7ef82e" -> "sha256:893726aeafe1e3c9a27b7141b30684da586b7f4f2f75f208e6fb0174c1f7396b" [label=""];
  "sha256:33cf838a96b8a7bb4695be2f8216a5089dbb9ab615638eaf8b6dcdc6d263bf53" -> "sha256:893726aeafe1e3c9a27b7141b30684da586b7f4f2f75f208e6fb0174c1f7396b" [label=""];
  "sha256:893726aeafe1e3c9a27b7141b30684da586b7f4f2f75f208e6fb0174c1f7396b" -> "sha256:979d73d54659514a7e20cbbe9de24ae6e9af8c403c0fef61722cfb01463ecbb3" [label=""];
  "sha256:33cf838a96b8a7bb4695be2f8216a5089dbb9ab615638eaf8b6dcdc6d263bf53" -> "sha256:979d73d54659514a7e20cbbe9de24ae6e9af8c403c0fef61722cfb01463ecbb3" [label=""];
  "sha256:979d73d54659514a7e20cbbe9de24ae6e9af8c403c0fef61722cfb01463ecbb3" -> "sha256:81cf88622e584dd971dec6baa7e690ea587b4e4456c4cfc21a8e570cb39df856" [label=""];
}

