[app/sources/181420003.Dockerfile]
digraph {
  "sha256:fe38acc73ca640cb3ba9cc6c2b61added0ac066605b6faece563595b42682cbb" [label="local://context" shape="ellipse"];
  "sha256:350095e3c3900a6bb0c8fe8c1708cbe3a1323a49a14f313b5d9bf40fce2e1c11" [label="docker-image://docker.io/library/python:3.6.6-stretch" shape="ellipse"];
  "sha256:1d044a76802ecf6db392c6390c03a84f8fa8cbb1e1ee560f98becc6238bce952" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:999dbe107a3d078c9f9dd7801af2ab0ed91f6163787152d421d578c902f3ae57" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:ce1423f89ba515ce7cc21967487271ca298b0440b5a8ba7e05a1a3d37d7ec59c" [label="/bin/sh -c apt-get -y install binutils libproj-dev gdal-bin" shape="box"];
  "sha256:2ef8d78551d45679073bf134b852a1957a3d3c7c4dcfe1c59725449bc66b45bc" [label="copy{src=/requirements.txt, dest=/tmp/}" shape="note"];
  "sha256:c70c70ac5e3802d26851e6d12c55af3d87384e98589ab92d92b3c8bd613832d5" [label="/bin/sh -c pip install --requirement /tmp/requirements.txt" shape="box"];
  "sha256:72e1637278bf7740b33f60a10fa4a9ac34dd100e265d530b90a2567a38869f27" [label="/bin/sh -c useradd uwsgi -s /bin/false" shape="box"];
  "sha256:832f071e17ef39dbe28f923f639cd6f5968a391531353b7bea59d3daf3ff79b0" [label="/bin/sh -c mkdir /var/log/uwsgi" shape="box"];
  "sha256:414a8bb99dcae79d36ce8ebeb123a827d05814a793f71b047685794fb747734b" [label="/bin/sh -c chown -R uwsgi:uwsgi /var/log/uwsgi" shape="box"];
  "sha256:2ad0130b6468711c3094ef17dc3e0b091047a4ac99f83fee7ab921516fd6bd23" [label="/bin/sh -c apt-get update && apt-get install -y     apt-transport-https     ca-certificates     curl   gnupg     --no-install-recommends     && curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add -     && echo \"deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main\" > /etc/apt/sources.list.d/google-chrome.list     && apt-get update && apt-get install -y     google-chrome-stable     --no-install-recommends" shape="box"];
  "sha256:cd6cbce9280c06646bbcf783668a86940c2b905722fa3ed8c3536f7ed214d643" [label="/bin/sh -c apt-get update && apt-get install -y gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget" shape="box"];
  "sha256:2b5c625e93ac2a1c4c0a6481215796028f3237a52033a760046ced48c9baa2fd" [label="/bin/sh -c groupadd chrome && useradd -g chrome -s /bin/bash -G audio,video chrome     && mkdir -p /home/chrome && chown -R chrome:chrome /home/chrome" shape="box"];
  "sha256:c08e7a24128b30a82cd5507f9de0ed58fe13a6b5954be23745d491c66b3388c5" [label="copy{src=/, dest=/var/app}" shape="note"];
  "sha256:abc1b9b7d43100d00c2bc0954a30e00232468846563b315b9659c819847438d8" [label="copy{src=/uwsgi-start.sh, dest=/}" shape="note"];
  "sha256:b3e20931165bfa888d4da6459dedc369c969754cdc342883d3f8da4a05a9e79c" [label="sha256:b3e20931165bfa888d4da6459dedc369c969754cdc342883d3f8da4a05a9e79c" shape="plaintext"];
  "sha256:350095e3c3900a6bb0c8fe8c1708cbe3a1323a49a14f313b5d9bf40fce2e1c11" -> "sha256:1d044a76802ecf6db392c6390c03a84f8fa8cbb1e1ee560f98becc6238bce952" [label=""];
  "sha256:1d044a76802ecf6db392c6390c03a84f8fa8cbb1e1ee560f98becc6238bce952" -> "sha256:999dbe107a3d078c9f9dd7801af2ab0ed91f6163787152d421d578c902f3ae57" [label=""];
  "sha256:999dbe107a3d078c9f9dd7801af2ab0ed91f6163787152d421d578c902f3ae57" -> "sha256:ce1423f89ba515ce7cc21967487271ca298b0440b5a8ba7e05a1a3d37d7ec59c" [label=""];
  "sha256:ce1423f89ba515ce7cc21967487271ca298b0440b5a8ba7e05a1a3d37d7ec59c" -> "sha256:2ef8d78551d45679073bf134b852a1957a3d3c7c4dcfe1c59725449bc66b45bc" [label=""];
  "sha256:fe38acc73ca640cb3ba9cc6c2b61added0ac066605b6faece563595b42682cbb" -> "sha256:2ef8d78551d45679073bf134b852a1957a3d3c7c4dcfe1c59725449bc66b45bc" [label=""];
  "sha256:2ef8d78551d45679073bf134b852a1957a3d3c7c4dcfe1c59725449bc66b45bc" -> "sha256:c70c70ac5e3802d26851e6d12c55af3d87384e98589ab92d92b3c8bd613832d5" [label=""];
  "sha256:c70c70ac5e3802d26851e6d12c55af3d87384e98589ab92d92b3c8bd613832d5" -> "sha256:72e1637278bf7740b33f60a10fa4a9ac34dd100e265d530b90a2567a38869f27" [label=""];
  "sha256:72e1637278bf7740b33f60a10fa4a9ac34dd100e265d530b90a2567a38869f27" -> "sha256:832f071e17ef39dbe28f923f639cd6f5968a391531353b7bea59d3daf3ff79b0" [label=""];
  "sha256:832f071e17ef39dbe28f923f639cd6f5968a391531353b7bea59d3daf3ff79b0" -> "sha256:414a8bb99dcae79d36ce8ebeb123a827d05814a793f71b047685794fb747734b" [label=""];
  "sha256:414a8bb99dcae79d36ce8ebeb123a827d05814a793f71b047685794fb747734b" -> "sha256:2ad0130b6468711c3094ef17dc3e0b091047a4ac99f83fee7ab921516fd6bd23" [label=""];
  "sha256:2ad0130b6468711c3094ef17dc3e0b091047a4ac99f83fee7ab921516fd6bd23" -> "sha256:cd6cbce9280c06646bbcf783668a86940c2b905722fa3ed8c3536f7ed214d643" [label=""];
  "sha256:cd6cbce9280c06646bbcf783668a86940c2b905722fa3ed8c3536f7ed214d643" -> "sha256:2b5c625e93ac2a1c4c0a6481215796028f3237a52033a760046ced48c9baa2fd" [label=""];
  "sha256:2b5c625e93ac2a1c4c0a6481215796028f3237a52033a760046ced48c9baa2fd" -> "sha256:c08e7a24128b30a82cd5507f9de0ed58fe13a6b5954be23745d491c66b3388c5" [label=""];
  "sha256:fe38acc73ca640cb3ba9cc6c2b61added0ac066605b6faece563595b42682cbb" -> "sha256:c08e7a24128b30a82cd5507f9de0ed58fe13a6b5954be23745d491c66b3388c5" [label=""];
  "sha256:c08e7a24128b30a82cd5507f9de0ed58fe13a6b5954be23745d491c66b3388c5" -> "sha256:abc1b9b7d43100d00c2bc0954a30e00232468846563b315b9659c819847438d8" [label=""];
  "sha256:fe38acc73ca640cb3ba9cc6c2b61added0ac066605b6faece563595b42682cbb" -> "sha256:abc1b9b7d43100d00c2bc0954a30e00232468846563b315b9659c819847438d8" [label=""];
  "sha256:abc1b9b7d43100d00c2bc0954a30e00232468846563b315b9659c819847438d8" -> "sha256:b3e20931165bfa888d4da6459dedc369c969754cdc342883d3f8da4a05a9e79c" [label=""];
}

