[app/sources/147005416.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:deb17fab9cdce2db871eaae419b5c7ecfb31d14871ebb818dfe027453e8313c9" [label="/bin/sh -c apt update && apt upgrade -y" shape="box"];
  "sha256:4166eb9b376c4c39c1c7f3bae8ee2c99dedf7f5a77bf3aea64a06be296060c50" [label="/bin/sh -c apt install -y socat" shape="box"];
  "sha256:9dad151a363e90ba55007ec1261a36ca6e1ebc5ebd0e66308b2dc789b9aef7f9" [label="/bin/sh -c pip install pycrypto" shape="box"];
  "sha256:cbcf5b5398c8dc30073111742d749b694af4cae77c8057f72c822b5927a7047e" [label="mkdir{path=/root}" shape="note"];
  "sha256:80c6a7a8054f6286c960f97c52fc2fd8b9b4790531cb15ff7f193eab47c0e4e8" [label="local://context" shape="ellipse"];
  "sha256:25d2cf933cbe4ba5dc0c5a16d3d3f2a864525a44f9d9213db2ba2c4c79e7570c" [label="copy{src=/flag, dest=/root/}" shape="note"];
  "sha256:d55bcf8df18f8680645108d453a5de2f0dc6c47f358c68f142323d9ce7b27b95" [label="copy{src=/server.py, dest=/root/}" shape="note"];
  "sha256:bf9eda916008b5cb50aa9f1eac64269978584b2d9f7263036f5e7e8b9b9e3449" [label="sha256:bf9eda916008b5cb50aa9f1eac64269978584b2d9f7263036f5e7e8b9b9e3449" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:deb17fab9cdce2db871eaae419b5c7ecfb31d14871ebb818dfe027453e8313c9" [label=""];
  "sha256:deb17fab9cdce2db871eaae419b5c7ecfb31d14871ebb818dfe027453e8313c9" -> "sha256:4166eb9b376c4c39c1c7f3bae8ee2c99dedf7f5a77bf3aea64a06be296060c50" [label=""];
  "sha256:4166eb9b376c4c39c1c7f3bae8ee2c99dedf7f5a77bf3aea64a06be296060c50" -> "sha256:9dad151a363e90ba55007ec1261a36ca6e1ebc5ebd0e66308b2dc789b9aef7f9" [label=""];
  "sha256:9dad151a363e90ba55007ec1261a36ca6e1ebc5ebd0e66308b2dc789b9aef7f9" -> "sha256:cbcf5b5398c8dc30073111742d749b694af4cae77c8057f72c822b5927a7047e" [label=""];
  "sha256:cbcf5b5398c8dc30073111742d749b694af4cae77c8057f72c822b5927a7047e" -> "sha256:25d2cf933cbe4ba5dc0c5a16d3d3f2a864525a44f9d9213db2ba2c4c79e7570c" [label=""];
  "sha256:80c6a7a8054f6286c960f97c52fc2fd8b9b4790531cb15ff7f193eab47c0e4e8" -> "sha256:25d2cf933cbe4ba5dc0c5a16d3d3f2a864525a44f9d9213db2ba2c4c79e7570c" [label=""];
  "sha256:25d2cf933cbe4ba5dc0c5a16d3d3f2a864525a44f9d9213db2ba2c4c79e7570c" -> "sha256:d55bcf8df18f8680645108d453a5de2f0dc6c47f358c68f142323d9ce7b27b95" [label=""];
  "sha256:80c6a7a8054f6286c960f97c52fc2fd8b9b4790531cb15ff7f193eab47c0e4e8" -> "sha256:d55bcf8df18f8680645108d453a5de2f0dc6c47f358c68f142323d9ce7b27b95" [label=""];
  "sha256:d55bcf8df18f8680645108d453a5de2f0dc6c47f358c68f142323d9ce7b27b95" -> "sha256:bf9eda916008b5cb50aa9f1eac64269978584b2d9f7263036f5e7e8b9b9e3449" [label=""];
}

