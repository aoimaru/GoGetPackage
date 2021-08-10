[app/sources/252787904.Dockerfile]
digraph {
  "sha256:c7f50e85c80267600ca1ce1df74069fbc7b2bbd302036dd444df33acdbb51db5" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:aeafab4cb4c08230768640267c6ceda9104d22f7b453336dac9b2a998c372883" [label="/bin/sh -c set -x && apt-get update && apt-get install -y --no-install-recommends python3 python3-pip python3-setuptools && pip3 install chaperone && mkdir /etc/chaperone.d" shape="box"];
  "sha256:c53b04da37851a87a5e1182890d04a535d09bf0ae12fff3a69c0f07729d90960" [label="/bin/sh -c set -x && apt-get update && apt-get install -y --no-install-recommends python3 python3-dev python3-pip python3-setuptools libssl-dev libxml2-dev libxslt-dev libffi-dev build-essential" shape="box"];
  "sha256:f2f67af21801efe9f796142c6f68d242df85517b4efb54f9dfc1a3f055e56559" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:4d3a13bcf37f187756138f63228b00585cec737da07045fe17b1d894c0f28035" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:324fb3d66af6ce6c7d470695546a5a6e1b25c756ef3e833c8c8ca41b35c35e05" [label="/bin/sh -c apt-get remove -y python-dev libssl-dev libxml2-dev libxslt-dev libffi-dev build-essential" shape="box"];
  "sha256:44be5cd65bcc4d0fda28813f3008623c71cd78b90b2b96d3ef11626f5203cbb1" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y nginx apache2-utils" shape="box"];
  "sha256:8ba00128494af1cfdef30e5ab7cc24e1d4ec3ea00373bb3a48aeb6ad98d9c9e8" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:d687c185d21966facee65c33db6a7759b1f1c1dd325e3f2c774b48aedfb9dc06" [label="copy{src=/scrapyd.conf, dest=/etc/scrapyd/scrapyd.conf}" shape="note"];
  "sha256:5aa25fead36ac69de23834db6a3e233fdc3b44bc42a5806ef43053df58153b78" [label="copy{src=/nginx.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:48d4c08f0d119e5a10e0eb1e20701ab381f8c78582d4ca21081be35775c67b91" [label="copy{src=/chaperone.conf, dest=/etc/chaperone.d/chaperone.conf}" shape="note"];
  "sha256:e973afb3fd2a1645fec3b298523f95a67967ba6eb8ce033acf7955c65173a668" [label="sha256:e973afb3fd2a1645fec3b298523f95a67967ba6eb8ce033acf7955c65173a668" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:aeafab4cb4c08230768640267c6ceda9104d22f7b453336dac9b2a998c372883" [label=""];
  "sha256:aeafab4cb4c08230768640267c6ceda9104d22f7b453336dac9b2a998c372883" -> "sha256:c53b04da37851a87a5e1182890d04a535d09bf0ae12fff3a69c0f07729d90960" [label=""];
  "sha256:c53b04da37851a87a5e1182890d04a535d09bf0ae12fff3a69c0f07729d90960" -> "sha256:f2f67af21801efe9f796142c6f68d242df85517b4efb54f9dfc1a3f055e56559" [label=""];
  "sha256:c7f50e85c80267600ca1ce1df74069fbc7b2bbd302036dd444df33acdbb51db5" -> "sha256:f2f67af21801efe9f796142c6f68d242df85517b4efb54f9dfc1a3f055e56559" [label=""];
  "sha256:f2f67af21801efe9f796142c6f68d242df85517b4efb54f9dfc1a3f055e56559" -> "sha256:4d3a13bcf37f187756138f63228b00585cec737da07045fe17b1d894c0f28035" [label=""];
  "sha256:4d3a13bcf37f187756138f63228b00585cec737da07045fe17b1d894c0f28035" -> "sha256:324fb3d66af6ce6c7d470695546a5a6e1b25c756ef3e833c8c8ca41b35c35e05" [label=""];
  "sha256:324fb3d66af6ce6c7d470695546a5a6e1b25c756ef3e833c8c8ca41b35c35e05" -> "sha256:44be5cd65bcc4d0fda28813f3008623c71cd78b90b2b96d3ef11626f5203cbb1" [label=""];
  "sha256:44be5cd65bcc4d0fda28813f3008623c71cd78b90b2b96d3ef11626f5203cbb1" -> "sha256:8ba00128494af1cfdef30e5ab7cc24e1d4ec3ea00373bb3a48aeb6ad98d9c9e8" [label=""];
  "sha256:8ba00128494af1cfdef30e5ab7cc24e1d4ec3ea00373bb3a48aeb6ad98d9c9e8" -> "sha256:d687c185d21966facee65c33db6a7759b1f1c1dd325e3f2c774b48aedfb9dc06" [label=""];
  "sha256:c7f50e85c80267600ca1ce1df74069fbc7b2bbd302036dd444df33acdbb51db5" -> "sha256:d687c185d21966facee65c33db6a7759b1f1c1dd325e3f2c774b48aedfb9dc06" [label=""];
  "sha256:d687c185d21966facee65c33db6a7759b1f1c1dd325e3f2c774b48aedfb9dc06" -> "sha256:5aa25fead36ac69de23834db6a3e233fdc3b44bc42a5806ef43053df58153b78" [label=""];
  "sha256:c7f50e85c80267600ca1ce1df74069fbc7b2bbd302036dd444df33acdbb51db5" -> "sha256:5aa25fead36ac69de23834db6a3e233fdc3b44bc42a5806ef43053df58153b78" [label=""];
  "sha256:5aa25fead36ac69de23834db6a3e233fdc3b44bc42a5806ef43053df58153b78" -> "sha256:48d4c08f0d119e5a10e0eb1e20701ab381f8c78582d4ca21081be35775c67b91" [label=""];
  "sha256:c7f50e85c80267600ca1ce1df74069fbc7b2bbd302036dd444df33acdbb51db5" -> "sha256:48d4c08f0d119e5a10e0eb1e20701ab381f8c78582d4ca21081be35775c67b91" [label=""];
  "sha256:48d4c08f0d119e5a10e0eb1e20701ab381f8c78582d4ca21081be35775c67b91" -> "sha256:e973afb3fd2a1645fec3b298523f95a67967ba6eb8ce033acf7955c65173a668" [label=""];
}

