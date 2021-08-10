[app/sources/168046368.Dockerfile]
digraph {
  "sha256:68015e44035a28c9de0cc770ea2ee31c6ec27de444e7130056d8afc3842d486e" [label="docker-image://docker.io/dougbtv/homer-base:latest" shape="ellipse"];
  "sha256:82bacb3465d117faf3bf0bdf79f1b1580cd8ca726ad59422b54059482ec7fbe1" [label="/bin/sh -c mkdir -p /usr/src/" shape="box"];
  "sha256:7f085a7f5e13d6d22ecc8d0a35b2998d9d7b5842c7931d95862c0086d5367fce" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:4eb91ce8d7d652935135dd41af59afeb931945ab8d0fdc39a265581693727a0d" [label="/bin/sh -c git clone -b 4.2 --depth 1 https://github.com/kamailio/kamailio.git kamailio" shape="box"];
  "sha256:f85216adbd13098de89ae82790b10877aa8c2ad71e941311b54e16ff6e301674" [label="mkdir{path=/usr/src/kamailio}" shape="note"];
  "sha256:dd97d3eba2298f968157fe319bd09a65a101fd3042e48fb63be97f13bbc5646d" [label="/bin/sh -c git checkout 4.2" shape="box"];
  "sha256:720e9d6595edf0d8a2087c3566aa85855cf1031c152ee54fdd5f2ebda553627f" [label="/bin/sh -c make PREFIX=$REAL_PATH FLAVOUR=kamailio include_modules=\"db_mysql sipcapture pv textops rtimer xlog sqlops htable sl siputils\" cfg" shape="box"];
  "sha256:bff56e57a9d80f14ef12cfbeacb118cccedd845fc57f9586441005b9dba6009b" [label="/bin/sh -c make all && make install" shape="box"];
  "sha256:b0ec5e73bd939dc69a297a750b19469457531ae2f4845bf75d29ee8d4e489bff" [label="/bin/sh -c mv $REAL_PATH/etc/kamailio/kamailio.cfg $REAL_PATH/etc/kamailio/kamailio.cfg.old" shape="box"];
  "sha256:9701d64154114351da631a8dafeba788efbe7fafc5b36abdd259c7640464f1ab" [label="/bin/sh -c cp modules/sipcapture/examples/kamailio.cfg $REAL_PATH/etc/kamailio/kamailio.cfg" shape="box"];
  "sha256:0198a8c2abf0634d52b99672347ee6f0f3cbb623995dd369b5bf83961c1ce559" [label="/bin/sh -c mkdir -p /etc/kamailio" shape="box"];
  "sha256:5ae30c57dd18e42470f929ea411bd00fa1fc44d789d5beb9749b66b06c70883d" [label="local://context" shape="ellipse"];
  "sha256:1747d8edcebf7eab9c9550c49140a0add48c0763ba78fdb95ef77353f0075e1a" [label="copy{src=/kamailio.cfg, dest=/etc/kamailio/kamailio.cfg}" shape="note"];
  "sha256:43efd1e0cff055e5849754daca724dcdc16a8eb4bd5ec1581241a9add9e46ab8" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:18fe09c7ee86670915330c121da928d085db5ad03a8d74492f7c52ff61f3d508" [label="sha256:18fe09c7ee86670915330c121da928d085db5ad03a8d74492f7c52ff61f3d508" shape="plaintext"];
  "sha256:68015e44035a28c9de0cc770ea2ee31c6ec27de444e7130056d8afc3842d486e" -> "sha256:82bacb3465d117faf3bf0bdf79f1b1580cd8ca726ad59422b54059482ec7fbe1" [label=""];
  "sha256:82bacb3465d117faf3bf0bdf79f1b1580cd8ca726ad59422b54059482ec7fbe1" -> "sha256:7f085a7f5e13d6d22ecc8d0a35b2998d9d7b5842c7931d95862c0086d5367fce" [label=""];
  "sha256:7f085a7f5e13d6d22ecc8d0a35b2998d9d7b5842c7931d95862c0086d5367fce" -> "sha256:4eb91ce8d7d652935135dd41af59afeb931945ab8d0fdc39a265581693727a0d" [label=""];
  "sha256:4eb91ce8d7d652935135dd41af59afeb931945ab8d0fdc39a265581693727a0d" -> "sha256:f85216adbd13098de89ae82790b10877aa8c2ad71e941311b54e16ff6e301674" [label=""];
  "sha256:f85216adbd13098de89ae82790b10877aa8c2ad71e941311b54e16ff6e301674" -> "sha256:dd97d3eba2298f968157fe319bd09a65a101fd3042e48fb63be97f13bbc5646d" [label=""];
  "sha256:dd97d3eba2298f968157fe319bd09a65a101fd3042e48fb63be97f13bbc5646d" -> "sha256:720e9d6595edf0d8a2087c3566aa85855cf1031c152ee54fdd5f2ebda553627f" [label=""];
  "sha256:720e9d6595edf0d8a2087c3566aa85855cf1031c152ee54fdd5f2ebda553627f" -> "sha256:bff56e57a9d80f14ef12cfbeacb118cccedd845fc57f9586441005b9dba6009b" [label=""];
  "sha256:bff56e57a9d80f14ef12cfbeacb118cccedd845fc57f9586441005b9dba6009b" -> "sha256:b0ec5e73bd939dc69a297a750b19469457531ae2f4845bf75d29ee8d4e489bff" [label=""];
  "sha256:b0ec5e73bd939dc69a297a750b19469457531ae2f4845bf75d29ee8d4e489bff" -> "sha256:9701d64154114351da631a8dafeba788efbe7fafc5b36abdd259c7640464f1ab" [label=""];
  "sha256:9701d64154114351da631a8dafeba788efbe7fafc5b36abdd259c7640464f1ab" -> "sha256:0198a8c2abf0634d52b99672347ee6f0f3cbb623995dd369b5bf83961c1ce559" [label=""];
  "sha256:0198a8c2abf0634d52b99672347ee6f0f3cbb623995dd369b5bf83961c1ce559" -> "sha256:1747d8edcebf7eab9c9550c49140a0add48c0763ba78fdb95ef77353f0075e1a" [label=""];
  "sha256:5ae30c57dd18e42470f929ea411bd00fa1fc44d789d5beb9749b66b06c70883d" -> "sha256:1747d8edcebf7eab9c9550c49140a0add48c0763ba78fdb95ef77353f0075e1a" [label=""];
  "sha256:1747d8edcebf7eab9c9550c49140a0add48c0763ba78fdb95ef77353f0075e1a" -> "sha256:43efd1e0cff055e5849754daca724dcdc16a8eb4bd5ec1581241a9add9e46ab8" [label=""];
  "sha256:5ae30c57dd18e42470f929ea411bd00fa1fc44d789d5beb9749b66b06c70883d" -> "sha256:43efd1e0cff055e5849754daca724dcdc16a8eb4bd5ec1581241a9add9e46ab8" [label=""];
  "sha256:43efd1e0cff055e5849754daca724dcdc16a8eb4bd5ec1581241a9add9e46ab8" -> "sha256:18fe09c7ee86670915330c121da928d085db5ad03a8d74492f7c52ff61f3d508" [label=""];
}

