[app/sources/384795697.Dockerfile]
digraph {
  "sha256:1d3c61b6f621ed65d293f03d01718a26655a1c1ee7142ef375a41366153af0c9" [label="docker-image://docker.io/library/node:10-stretch" shape="ellipse"];
  "sha256:93815c479875dca2a866163e61d430d621f0b49f1597447fe9ad9833e4f41c0d" [label="/bin/sh -c apt-get update &&     apt-get install -y git             libjpeg-dev             graphicsmagick             graphicsmagick-imagemagick-compat             libpango1.0-dev             libcairo2-dev &&     apt-get clean &&     wget https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -O /usr/bin/wait-for-it.sh &&     chmod +x /usr/bin/wait-for-it.sh &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e0287054642898b98034d9d9f71656dccd687ad62cf19694fafc5559b469f8e6" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:a8be8264b1a91ccc7de879b722d9094606156e5d798d1f81eda4c15e89eefa90" [label="/bin/sh -c npm install -g bower" shape="box"];
  "sha256:2ac1827f24d5a186f20902b19d92c209c921e58ab3a767437636a078833c5cb3" [label="local://context" shape="ellipse"];
  "sha256:cd2774dbd5656dce0b332034bfa24e21da8237c2999647addf975c2dd493ff46" [label="copy{src=/.bowerrc, dest=/var/www/},copy{src=/bower.json, dest=/var/www/},copy{src=/package.json, dest=/var/www/}" shape="note"];
  "sha256:d39ed444a5f189053c26a0b04f6c845d5aacd6fb1711614a17ddf4dc5e026bb4" [label="/bin/sh -c sed -i -e '/\"bower\": \"1.*\"/ d' -e '/\"postinstall.*\"/ d' package.json" shape="box"];
  "sha256:869f191af70f2149a6df4b9ce1b0902a7d3d9fff21d51220054c2c3815527e2f" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:89f9af3f1e6c445c1bf8712ae86b8fe4003acbb91f00cc21e0a141019fe88a52" [label="/bin/sh -c bower install --allow-root --production" shape="box"];
  "sha256:c23c1c5c2ee4ce5b49c0f84440aef6f03f1a4a2b10c55079eaf5e7bafa93d4c5" [label="sha256:c23c1c5c2ee4ce5b49c0f84440aef6f03f1a4a2b10c55079eaf5e7bafa93d4c5" shape="plaintext"];
  "sha256:1d3c61b6f621ed65d293f03d01718a26655a1c1ee7142ef375a41366153af0c9" -> "sha256:93815c479875dca2a866163e61d430d621f0b49f1597447fe9ad9833e4f41c0d" [label=""];
  "sha256:93815c479875dca2a866163e61d430d621f0b49f1597447fe9ad9833e4f41c0d" -> "sha256:e0287054642898b98034d9d9f71656dccd687ad62cf19694fafc5559b469f8e6" [label=""];
  "sha256:e0287054642898b98034d9d9f71656dccd687ad62cf19694fafc5559b469f8e6" -> "sha256:a8be8264b1a91ccc7de879b722d9094606156e5d798d1f81eda4c15e89eefa90" [label=""];
  "sha256:a8be8264b1a91ccc7de879b722d9094606156e5d798d1f81eda4c15e89eefa90" -> "sha256:cd2774dbd5656dce0b332034bfa24e21da8237c2999647addf975c2dd493ff46" [label=""];
  "sha256:2ac1827f24d5a186f20902b19d92c209c921e58ab3a767437636a078833c5cb3" -> "sha256:cd2774dbd5656dce0b332034bfa24e21da8237c2999647addf975c2dd493ff46" [label=""];
  "sha256:cd2774dbd5656dce0b332034bfa24e21da8237c2999647addf975c2dd493ff46" -> "sha256:d39ed444a5f189053c26a0b04f6c845d5aacd6fb1711614a17ddf4dc5e026bb4" [label=""];
  "sha256:d39ed444a5f189053c26a0b04f6c845d5aacd6fb1711614a17ddf4dc5e026bb4" -> "sha256:869f191af70f2149a6df4b9ce1b0902a7d3d9fff21d51220054c2c3815527e2f" [label=""];
  "sha256:869f191af70f2149a6df4b9ce1b0902a7d3d9fff21d51220054c2c3815527e2f" -> "sha256:89f9af3f1e6c445c1bf8712ae86b8fe4003acbb91f00cc21e0a141019fe88a52" [label=""];
  "sha256:89f9af3f1e6c445c1bf8712ae86b8fe4003acbb91f00cc21e0a141019fe88a52" -> "sha256:c23c1c5c2ee4ce5b49c0f84440aef6f03f1a4a2b10c55079eaf5e7bafa93d4c5" [label=""];
}

