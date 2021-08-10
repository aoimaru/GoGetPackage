[app/sources/390848812.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:30f899d3e286705b1375a2f9d3a9bb9ffa0dcaac22e833cbb696b60d86086b27" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential wget git python3-pip" shape="box"];
  "sha256:b1243c57650329cfa74044aea77503649d3931d997b6232a57e499961539628e" [label="/bin/sh -c if [ \"$TOOLCHAIN_FLAVOR\" = \"src\" ]; then         apt-get install -y autoconf autogen bison dejagnu                            flex flip gawk git gperf gzip nsis                            openssh-client p7zip-full perl python-dev                            libisl-dev tcl tofrodos zip                            texinfo texlive texlive-extra-utils;     fi" shape="box"];
  "sha256:ce4c0718b9b07304658b2ff85167ef89f526fcadd25cb950937f50de8996518c" [label="/bin/sh -c if [ \"$EMULATOR\" = 1 ]; then         apt-get install -y libsdl2-dev libsdl2-image-dev;     fi" shape="box"];
  "sha256:9336da7c456cca789bcebddb6bc16df830164fe50860dbe8a76af204f92c38ae" [label="/bin/sh -c cd /opt && wget $TOOLCHAIN_URL" shape="box"];
  "sha256:424512f9a5191c458812140f1437da6ad2c21b64f759be54c6a6d76662630206" [label="/bin/sh -c cd /opt && echo \"$TOOLCHAIN_HASH_linux $TOOLCHAIN_LONGVER-linux.tar.bz2\\n$TOOLCHAIN_HASH_src $TOOLCHAIN_LONGVER-src.tar.bz2\" | sha256sum -c --ignore-missing" shape="box"];
  "sha256:96856aef53f2750f9d7d3b6512363ca598178abe43106cb31890a32de5d308e5" [label="/bin/sh -c cd /opt && tar xfj $TOOLCHAIN_LONGVER-$TOOLCHAIN_FLAVOR.tar.bz2" shape="box"];
  "sha256:5ab475fc8187c9c7fbaa8715ff239aaec9900caa72e2984b6c7dd9476bf93a01" [label="/bin/sh -c if [ \"$TOOLCHAIN_FLAVOR\" = \"src\" ]; then         pushd /opt/$TOOLCHAIN_LONGVER ;         ./install-sources.sh --skip_steps=mingw32 ;         ./build-prerequisites.sh --skip_steps=mingw32 ;         ./build-toolchain.sh --skip_steps=mingw32,manual ;         popd ;     fi" shape="box"];
  "sha256:d56755bc38c36f4c412e9aed1e7e6b1ff43d6bc4c6c6728d8ca18aa181980421" [label="/bin/sh -c wget \"https://github.com/google/protobuf/releases/download/v${PROTOBUF_VERSION}/protoc-${PROTOBUF_VERSION}-linux-x86_64.zip\"" shape="box"];
  "sha256:317f0f4c8e99e7d5adffd1ee41f72562214854170b6c4fe4a78079cd3966675e" [label="/bin/sh -c echo \"${PROTOBUF_HASH} protoc-${PROTOBUF_VERSION}-linux-x86_64.zip\" | sha256sum -c" shape="box"];
  "sha256:6ea5076dc997d23608205a2c4061fabdf197912a33cb0bbb7cde3323f252d226" [label="/bin/sh -c $PYTHON -m zipfile -e \"protoc-${PROTOBUF_VERSION}-linux-x86_64.zip\" /usr/local && chmod 755 /usr/local/bin/protoc" shape="box"];
  "sha256:fd9c0fedfba91cfe887791e25e6fe69e5ff56bc8c3af6f13cd844bc14c464e86" [label="/bin/sh -c $PYTHON -m pip install pipenv" shape="box"];
  "sha256:e0117329ac07705c3e56700f8e55104daae41fa94eff0115962a0e2b77b40e10" [label="sha256:e0117329ac07705c3e56700f8e55104daae41fa94eff0115962a0e2b77b40e10" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:30f899d3e286705b1375a2f9d3a9bb9ffa0dcaac22e833cbb696b60d86086b27" [label=""];
  "sha256:30f899d3e286705b1375a2f9d3a9bb9ffa0dcaac22e833cbb696b60d86086b27" -> "sha256:b1243c57650329cfa74044aea77503649d3931d997b6232a57e499961539628e" [label=""];
  "sha256:b1243c57650329cfa74044aea77503649d3931d997b6232a57e499961539628e" -> "sha256:ce4c0718b9b07304658b2ff85167ef89f526fcadd25cb950937f50de8996518c" [label=""];
  "sha256:ce4c0718b9b07304658b2ff85167ef89f526fcadd25cb950937f50de8996518c" -> "sha256:9336da7c456cca789bcebddb6bc16df830164fe50860dbe8a76af204f92c38ae" [label=""];
  "sha256:9336da7c456cca789bcebddb6bc16df830164fe50860dbe8a76af204f92c38ae" -> "sha256:424512f9a5191c458812140f1437da6ad2c21b64f759be54c6a6d76662630206" [label=""];
  "sha256:424512f9a5191c458812140f1437da6ad2c21b64f759be54c6a6d76662630206" -> "sha256:96856aef53f2750f9d7d3b6512363ca598178abe43106cb31890a32de5d308e5" [label=""];
  "sha256:96856aef53f2750f9d7d3b6512363ca598178abe43106cb31890a32de5d308e5" -> "sha256:5ab475fc8187c9c7fbaa8715ff239aaec9900caa72e2984b6c7dd9476bf93a01" [label=""];
  "sha256:5ab475fc8187c9c7fbaa8715ff239aaec9900caa72e2984b6c7dd9476bf93a01" -> "sha256:d56755bc38c36f4c412e9aed1e7e6b1ff43d6bc4c6c6728d8ca18aa181980421" [label=""];
  "sha256:d56755bc38c36f4c412e9aed1e7e6b1ff43d6bc4c6c6728d8ca18aa181980421" -> "sha256:317f0f4c8e99e7d5adffd1ee41f72562214854170b6c4fe4a78079cd3966675e" [label=""];
  "sha256:317f0f4c8e99e7d5adffd1ee41f72562214854170b6c4fe4a78079cd3966675e" -> "sha256:6ea5076dc997d23608205a2c4061fabdf197912a33cb0bbb7cde3323f252d226" [label=""];
  "sha256:6ea5076dc997d23608205a2c4061fabdf197912a33cb0bbb7cde3323f252d226" -> "sha256:fd9c0fedfba91cfe887791e25e6fe69e5ff56bc8c3af6f13cd844bc14c464e86" [label=""];
  "sha256:fd9c0fedfba91cfe887791e25e6fe69e5ff56bc8c3af6f13cd844bc14c464e86" -> "sha256:e0117329ac07705c3e56700f8e55104daae41fa94eff0115962a0e2b77b40e10" [label=""];
}

