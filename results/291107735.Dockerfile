[app/sources/291107735.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:eb8405110b8d4df2741ee08c2a34e4b96d82ca54870a3c5f6c778c0983e71996" [label="/bin/sh -c apt-get update  && apt-get install -y telnet  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:31b58d8f64dc0e950ab9550069e65ebae4dd82b1ad2839fa33495d8dc652b312" [label="/bin/sh -c curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini" shape="box"];
  "sha256:015feaa99de77edb651c119a8d43cf8841570ddc8492fd8fa3d79d03cd888a9d" [label="/bin/sh -c pip3 install --upgrade --no-cache-dir setuptools pip virtualenv" shape="box"];
  "sha256:56ed2c37f99f730e7f6c885b7a3c9162705535c01410604a39ef1ed21a5251fa" [label="/bin/sh -c pip3 install --no-cache-dir pyats==${PYATS_VERSION} genie==${GENIE_VERSION}" shape="box"];
  "sha256:1abf5c318d78b522674eb5dd093ec197b1451090bde03bab33e2b771110fce3a" [label="/bin/sh -c pip3 install --no-cache-dir pyats.robot==${PYATS_ROBOT_VERSION}                                 genie.libs.robot==${GENIE_ROBOT_VERSION}                                 unicon[robot]" shape="box"];
  "sha256:1b33705c3989ee0a1ecbaa5fc0140bfbf9530a6eef65dc7d63ba1fe836b0d403" [label="/bin/sh -c virtualenv --system-site-packages ${WORKSPACE}  && mkdir ${WORKSPACE}/users && chmod 775 ${WORKSPACE}/users  && ln -s /usr/local/examples ${WORKSPACE}/examples  && ln -s /usr/local/templates ${WORKSPACE}/templates  && ln -s /usr/local/genie_yamls ${WORKSPACE}/genie_yamls" shape="box"];
  "sha256:8d1c3396b108f0ee0dd157bc2471cbedc11d189fb9fdac501d52c6bc28978a52" [label="local://context" shape="ellipse"];
  "sha256:96749206b9fcdf2f752736aa6201720d78e28897d1728cd5c06b2406a1b1f2cb" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:718d31d4d2329e62b2e9ad7dfa55050da8e706238739368f6504aeed15e32339" [label="mkdir{path=/pyats}" shape="note"];
  "sha256:f18bc3c3e6ecccd30b7be3ce6867f7fcf5b7403b46a8d20434db3f46458d8d14" [label="sha256:f18bc3c3e6ecccd30b7be3ce6867f7fcf5b7403b46a8d20434db3f46458d8d14" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:eb8405110b8d4df2741ee08c2a34e4b96d82ca54870a3c5f6c778c0983e71996" [label=""];
  "sha256:eb8405110b8d4df2741ee08c2a34e4b96d82ca54870a3c5f6c778c0983e71996" -> "sha256:31b58d8f64dc0e950ab9550069e65ebae4dd82b1ad2839fa33495d8dc652b312" [label=""];
  "sha256:31b58d8f64dc0e950ab9550069e65ebae4dd82b1ad2839fa33495d8dc652b312" -> "sha256:015feaa99de77edb651c119a8d43cf8841570ddc8492fd8fa3d79d03cd888a9d" [label=""];
  "sha256:015feaa99de77edb651c119a8d43cf8841570ddc8492fd8fa3d79d03cd888a9d" -> "sha256:56ed2c37f99f730e7f6c885b7a3c9162705535c01410604a39ef1ed21a5251fa" [label=""];
  "sha256:56ed2c37f99f730e7f6c885b7a3c9162705535c01410604a39ef1ed21a5251fa" -> "sha256:1abf5c318d78b522674eb5dd093ec197b1451090bde03bab33e2b771110fce3a" [label=""];
  "sha256:1abf5c318d78b522674eb5dd093ec197b1451090bde03bab33e2b771110fce3a" -> "sha256:1b33705c3989ee0a1ecbaa5fc0140bfbf9530a6eef65dc7d63ba1fe836b0d403" [label=""];
  "sha256:1b33705c3989ee0a1ecbaa5fc0140bfbf9530a6eef65dc7d63ba1fe836b0d403" -> "sha256:96749206b9fcdf2f752736aa6201720d78e28897d1728cd5c06b2406a1b1f2cb" [label=""];
  "sha256:8d1c3396b108f0ee0dd157bc2471cbedc11d189fb9fdac501d52c6bc28978a52" -> "sha256:96749206b9fcdf2f752736aa6201720d78e28897d1728cd5c06b2406a1b1f2cb" [label=""];
  "sha256:96749206b9fcdf2f752736aa6201720d78e28897d1728cd5c06b2406a1b1f2cb" -> "sha256:718d31d4d2329e62b2e9ad7dfa55050da8e706238739368f6504aeed15e32339" [label=""];
  "sha256:718d31d4d2329e62b2e9ad7dfa55050da8e706238739368f6504aeed15e32339" -> "sha256:f18bc3c3e6ecccd30b7be3ce6867f7fcf5b7403b46a8d20434db3f46458d8d14" [label=""];
}

