[app/sources/476176360.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:28e0c3cb36679b4b33fa06f9fe79a8d52542bed1cf87576601be7e7deb4f967f" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:08782808e17b5056b931d18e4da1aeef95957896bc1e59a8d81f56999cd0af79" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9" shape="box"];
  "sha256:6966816b255aee547b6e5122a856b2f2a414f0dff7f722c281f16b87dfb64d99" [label="/bin/sh -c echo \"deb http://repos.azulsystems.com/ubuntu stable main\" >> /etc/apt/sources.list.d/zulu.list" shape="box"];
  "sha256:a79c062288954a55dc47109ba16687ad703e87297d097b63a0727d375e7b7bce" [label="/bin/sh -c apt-get -qq update" shape="box"];
  "sha256:3c3eb9ba2c312123c8401327609a654e84337bbea375b324f54d2e6183ef1dfa" [label="/bin/sh -c apt-get -qqy install zulu-6=6.12.0.2" shape="box"];
  "sha256:14c48fefe765e4d012131c30d666b31010a88ebba6cb8d940c006db98f94218b" [label="sha256:14c48fefe765e4d012131c30d666b31010a88ebba6cb8d940c006db98f94218b" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:28e0c3cb36679b4b33fa06f9fe79a8d52542bed1cf87576601be7e7deb4f967f" [label=""];
  "sha256:28e0c3cb36679b4b33fa06f9fe79a8d52542bed1cf87576601be7e7deb4f967f" -> "sha256:08782808e17b5056b931d18e4da1aeef95957896bc1e59a8d81f56999cd0af79" [label=""];
  "sha256:08782808e17b5056b931d18e4da1aeef95957896bc1e59a8d81f56999cd0af79" -> "sha256:6966816b255aee547b6e5122a856b2f2a414f0dff7f722c281f16b87dfb64d99" [label=""];
  "sha256:6966816b255aee547b6e5122a856b2f2a414f0dff7f722c281f16b87dfb64d99" -> "sha256:a79c062288954a55dc47109ba16687ad703e87297d097b63a0727d375e7b7bce" [label=""];
  "sha256:a79c062288954a55dc47109ba16687ad703e87297d097b63a0727d375e7b7bce" -> "sha256:3c3eb9ba2c312123c8401327609a654e84337bbea375b324f54d2e6183ef1dfa" [label=""];
  "sha256:3c3eb9ba2c312123c8401327609a654e84337bbea375b324f54d2e6183ef1dfa" -> "sha256:14c48fefe765e4d012131c30d666b31010a88ebba6cb8d940c006db98f94218b" [label=""];
}

