[app/sources/299264801.Dockerfile]
digraph {
  "sha256:33263946b3172526a81092c496662f27f34da163d074496c342747f94d51ca36" [label="local://context" shape="ellipse"];
  "sha256:4f2928204bfa080a7f8d9cc10a3a6cc2c89ba524cbc337e4912a5f45309b70b2" [label="docker-image://docker.io/lsiobase/mono:arm64v8-xenial" shape="ellipse"];
  "sha256:ab1cd934bdb848ff4d0e76818c9d5f61e1519153de5bf5c201ec28095316a455" [label="/bin/sh -c echo \"**** install jq ****\" &&  apt-get update &&  apt-get install -y \tjq &&  echo \"**** install duplicati ****\" &&  if [ -z ${DUPLICATI_RELEASE+x} ]; then \tDUPLICATI_RELEASE=$(curl -sX GET \"https://api.github.com/repos/duplicati/duplicati/releases\" \t| jq -r 'first(.[] | select(.tag_name | contains(\"beta\"))) | .tag_name');  fi &&  mkdir -p \t/app/duplicati &&   duplicati_url=$(curl -s https://api.github.com/repos/duplicati/duplicati/releases/tags/\"${DUPLICATI_RELEASE}\" |jq -r '.assets[].browser_download_url' |grep zip |grep -v signatures) &&  curl -o  /tmp/duplicati.zip -L \t\"${duplicati_url}\" &&  unzip -q /tmp/duplicati.zip -d /app/duplicati &&  echo \"**** cleanup ****\" &&  rm -rf \t/tmp/* \t/var/lib/apt/lists/* \t/var/tmp/*" shape="box"];
  "sha256:0e45c7a64c24defc04d05eb90e37c13ac6dd9a147ce492b1de19373575796a23" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:59b0e80e766c1a2234e488a434f8fbafef1f68f65a9b25fd193d51d237824920" [label="sha256:59b0e80e766c1a2234e488a434f8fbafef1f68f65a9b25fd193d51d237824920" shape="plaintext"];
  "sha256:4f2928204bfa080a7f8d9cc10a3a6cc2c89ba524cbc337e4912a5f45309b70b2" -> "sha256:ab1cd934bdb848ff4d0e76818c9d5f61e1519153de5bf5c201ec28095316a455" [label=""];
  "sha256:ab1cd934bdb848ff4d0e76818c9d5f61e1519153de5bf5c201ec28095316a455" -> "sha256:0e45c7a64c24defc04d05eb90e37c13ac6dd9a147ce492b1de19373575796a23" [label=""];
  "sha256:33263946b3172526a81092c496662f27f34da163d074496c342747f94d51ca36" -> "sha256:0e45c7a64c24defc04d05eb90e37c13ac6dd9a147ce492b1de19373575796a23" [label=""];
  "sha256:0e45c7a64c24defc04d05eb90e37c13ac6dd9a147ce492b1de19373575796a23" -> "sha256:59b0e80e766c1a2234e488a434f8fbafef1f68f65a9b25fd193d51d237824920" [label=""];
}

