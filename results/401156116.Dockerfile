[app/sources/401156116.Dockerfile]
digraph {
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" [label="docker-image://gcr.io/oss-fuzz-base/base-builder@sha256:bf1e92fe80dccfaf45d0968c52bc68412dd7b0b3a792c6e623608ad9a44cfd92" shape="ellipse"];
  "sha256:eaf9ed769f351560d63953978dae184eccbccaabdabfb529224d13bc1b4b8d95" [label="/bin/sh -c apt-get update &&     apt-get install -y make autoconf automake libtool" shape="box"];
  "sha256:698573b68ec7891634a9370df565e726ae848e89ccb06610db81bc8cc3ac474f" [label="/bin/sh -c git clone --depth 1 https://github.com/madler/zlib.git" shape="box"];
  "sha256:44334fb960fc0c4ec092420cb8e5a1e7207f7cb9ca958876b8836c9881145d49" [label="/bin/sh -c git clone --depth 1 https://github.com/glennrp/libpng.git" shape="box"];
  "sha256:8690668912f8a6a108e7b5ddeac58d7dabb6e443f63ac97b3f2c4a69f11cfbf9" [label="/bin/sh -c cp libpng/contrib/oss-fuzz/build.sh $SRC" shape="box"];
  "sha256:25342f9671e19c55e0f2da31b332e1713793ea12394d5fb43cc2b6134bbf7739" [label="mkdir{path=/src/libpng}" shape="note"];
  "sha256:f06dad33cc96eba07edd68ac007ddde9f26f6070820f2f6a90e7ceb6578326c0" [label="sha256:f06dad33cc96eba07edd68ac007ddde9f26f6070820f2f6a90e7ceb6578326c0" shape="plaintext"];
  "sha256:a12df75446ebf790ff79cae14801b087e47c679740d4fed1421c672c6384c8c6" -> "sha256:eaf9ed769f351560d63953978dae184eccbccaabdabfb529224d13bc1b4b8d95" [label=""];
  "sha256:eaf9ed769f351560d63953978dae184eccbccaabdabfb529224d13bc1b4b8d95" -> "sha256:698573b68ec7891634a9370df565e726ae848e89ccb06610db81bc8cc3ac474f" [label=""];
  "sha256:698573b68ec7891634a9370df565e726ae848e89ccb06610db81bc8cc3ac474f" -> "sha256:44334fb960fc0c4ec092420cb8e5a1e7207f7cb9ca958876b8836c9881145d49" [label=""];
  "sha256:44334fb960fc0c4ec092420cb8e5a1e7207f7cb9ca958876b8836c9881145d49" -> "sha256:8690668912f8a6a108e7b5ddeac58d7dabb6e443f63ac97b3f2c4a69f11cfbf9" [label=""];
  "sha256:8690668912f8a6a108e7b5ddeac58d7dabb6e443f63ac97b3f2c4a69f11cfbf9" -> "sha256:25342f9671e19c55e0f2da31b332e1713793ea12394d5fb43cc2b6134bbf7739" [label=""];
  "sha256:25342f9671e19c55e0f2da31b332e1713793ea12394d5fb43cc2b6134bbf7739" -> "sha256:f06dad33cc96eba07edd68ac007ddde9f26f6070820f2f6a90e7ceb6578326c0" [label=""];
}

