[app/sources/273508079.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3efb1c0181043bd64b245b613831093551a8731964b543c17d17595c8a1dbb6a" [label="/bin/sh -c apt-get -qq update --fix-missing" shape="box"];
  "sha256:0ba8d600d4fd184dd3ae46a9c0bef108f678ed2dd8b047c93ca69d4936cd2868" [label="/bin/sh -c apt-get -qq install nodejs npm" shape="box"];
  "sha256:2d0a8b96a6513e11597526d14aabab10c189e3a559b48179a1a6cc0980737d8c" [label="/bin/sh -c ln -s /usr/bin/nodejs /usr/bin/node" shape="box"];
  "sha256:aa78ba74e439aff9ec3fa8007e46b02439af909accb84c44e863c87c80076083" [label="/bin/sh -c mkdir -p /var/log/nodeapp" shape="box"];
  "sha256:7775af979bc040196368c7a7e3ed20bf0aa46c941a6aaa1dd73203440fa0db99" [label="local://context" shape="ellipse"];
  "sha256:602753aa14ad1b58f82a10f706f2c606941e8c42f29c9507a113fefdbd10f766" [label="copy{src=/nodeapp, dest=/opt/nodeapp}" shape="note"];
  "sha256:060690bb6a5fa8e51206ff800bf073f5c07bdbfa9bbe3de81a9ca6e7b01c77a9" [label="mkdir{path=/opt/nodeapp}" shape="note"];
  "sha256:51af62c5e9a20667365d0150b86f9e144e448bc4e6b9820a05da120cd0dc663e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:1960a5c06f9e4bec1adf6ce98a3484a13a328d0730cdb6541544e7a970fa9da1" [label="sha256:1960a5c06f9e4bec1adf6ce98a3484a13a328d0730cdb6541544e7a970fa9da1" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3efb1c0181043bd64b245b613831093551a8731964b543c17d17595c8a1dbb6a" [label=""];
  "sha256:3efb1c0181043bd64b245b613831093551a8731964b543c17d17595c8a1dbb6a" -> "sha256:0ba8d600d4fd184dd3ae46a9c0bef108f678ed2dd8b047c93ca69d4936cd2868" [label=""];
  "sha256:0ba8d600d4fd184dd3ae46a9c0bef108f678ed2dd8b047c93ca69d4936cd2868" -> "sha256:2d0a8b96a6513e11597526d14aabab10c189e3a559b48179a1a6cc0980737d8c" [label=""];
  "sha256:2d0a8b96a6513e11597526d14aabab10c189e3a559b48179a1a6cc0980737d8c" -> "sha256:aa78ba74e439aff9ec3fa8007e46b02439af909accb84c44e863c87c80076083" [label=""];
  "sha256:aa78ba74e439aff9ec3fa8007e46b02439af909accb84c44e863c87c80076083" -> "sha256:602753aa14ad1b58f82a10f706f2c606941e8c42f29c9507a113fefdbd10f766" [label=""];
  "sha256:7775af979bc040196368c7a7e3ed20bf0aa46c941a6aaa1dd73203440fa0db99" -> "sha256:602753aa14ad1b58f82a10f706f2c606941e8c42f29c9507a113fefdbd10f766" [label=""];
  "sha256:602753aa14ad1b58f82a10f706f2c606941e8c42f29c9507a113fefdbd10f766" -> "sha256:060690bb6a5fa8e51206ff800bf073f5c07bdbfa9bbe3de81a9ca6e7b01c77a9" [label=""];
  "sha256:060690bb6a5fa8e51206ff800bf073f5c07bdbfa9bbe3de81a9ca6e7b01c77a9" -> "sha256:51af62c5e9a20667365d0150b86f9e144e448bc4e6b9820a05da120cd0dc663e" [label=""];
  "sha256:51af62c5e9a20667365d0150b86f9e144e448bc4e6b9820a05da120cd0dc663e" -> "sha256:1960a5c06f9e4bec1adf6ce98a3484a13a328d0730cdb6541544e7a970fa9da1" [label=""];
}

