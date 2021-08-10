[app/sources/394721789.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:19b3cb3a47477ea0aea432e6b32ea9a5076af543954c0822d16c70b9623414f6" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       locales git-core curl ca-certificates &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7f08cd8d1356fc020246cbf3c15546b5ba16364a35651d3956286ed19436d5b5" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" >> /etc/locale.gen" shape="box"];
  "sha256:c68455d0f808211aaa65934d18df3880033c22d3930d2bbdf4449b44139e2fbb" [label="/bin/sh -c locale-gen en_US.UTF-8 && update-locale en_US.UTF-8" shape="box"];
  "sha256:6fe6f0c6c14bdcba30026582ec1a38b0fa8f6db628008b1d6115aac26960fe90" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       texlive-lang-japanese texlive-fonts-recommended texlive-latex-extra lmodern fonts-lmodern tex-gyre fonts-texgyre texlive-pictures       ghostscript gsfonts zip ruby-zip ruby-nokogiri mecab ruby-mecab mecab-ipadic-utf8 poppler-data cm-super       graphviz gnuplot python-blockdiag python-aafigure &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c475dbc3a639e865792cee0fe244b06ab83e55338e6bbdd5ed951e1b454b4558" [label="/bin/sh -c gem install bundler rake --no-rdoc --no-ri &&     gem install review -v \"$REVIEW_VERSION\" --no-rdoc --no-ri &&     gem install review-peg -v \"$REVIEW_PEG_VERSION\" --no-rdoc --no-ri" shape="box"];
  "sha256:86a88993671f3489a34ae357f479e1f602e6d69bd18406b4992c601da788b00f" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       gnupg &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cf1e4be59b97296870d1958c4e03376855e12028cd69a95ddb7d1b4a8332ca00" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_${NODEJS_VERSION}.x | bash -" shape="box"];
  "sha256:43060dd8715e8f35046c65ee77ef48c5d38f93ef08f24fc39d06cd84cee8cb9c" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends       nodejs &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* &&     npm install -g yarn" shape="box"];
  "sha256:31944d8fc481a426d5db2d979d1784f70043f0a6965b3f4405504fb52f8c7274" [label="/bin/sh -c echo \"deb http://ftp.jp.debian.org/debian/ stretch-backports main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:d982d658954b1bf211eac0b7fbe56cc8e03a097e3133a3404e0985980d53b35e" [label="/bin/sh -c apt-get update && apt-get -y install fonts-noto-cjk/stretch-backports fonts-noto-cjk-extra/stretch-backports" shape="box"];
  "sha256:aff3525ad3199ad2546eb2e5123fcd13db75908664e58029e2c4d9491789765e" [label="local://context" shape="ellipse"];
  "sha256:48e87cf8a9a97a05b39af2eacf80a73a44bc1dc585640dc7b79f985ef425d8b2" [label="copy{src=/noto, dest=/usr/share/texlive/texmf-dist/fonts/map/dvipdfmx/ptex-fontmaps/noto/}" shape="note"];
  "sha256:a957f4de8454fbc0c67978cc2f5068071d5e705025728e2580f4e87acd8edad9" [label="/bin/sh -c texhash && kanji-config-updmap-sys noto" shape="box"];
  "sha256:e6be12f38c0f22f6bd22396e062cb18036ffb75faf2e259e6c86f2827d9d9b84" [label="sha256:e6be12f38c0f22f6bd22396e062cb18036ffb75faf2e259e6c86f2827d9d9b84" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:19b3cb3a47477ea0aea432e6b32ea9a5076af543954c0822d16c70b9623414f6" [label=""];
  "sha256:19b3cb3a47477ea0aea432e6b32ea9a5076af543954c0822d16c70b9623414f6" -> "sha256:7f08cd8d1356fc020246cbf3c15546b5ba16364a35651d3956286ed19436d5b5" [label=""];
  "sha256:7f08cd8d1356fc020246cbf3c15546b5ba16364a35651d3956286ed19436d5b5" -> "sha256:c68455d0f808211aaa65934d18df3880033c22d3930d2bbdf4449b44139e2fbb" [label=""];
  "sha256:c68455d0f808211aaa65934d18df3880033c22d3930d2bbdf4449b44139e2fbb" -> "sha256:6fe6f0c6c14bdcba30026582ec1a38b0fa8f6db628008b1d6115aac26960fe90" [label=""];
  "sha256:6fe6f0c6c14bdcba30026582ec1a38b0fa8f6db628008b1d6115aac26960fe90" -> "sha256:c475dbc3a639e865792cee0fe244b06ab83e55338e6bbdd5ed951e1b454b4558" [label=""];
  "sha256:c475dbc3a639e865792cee0fe244b06ab83e55338e6bbdd5ed951e1b454b4558" -> "sha256:86a88993671f3489a34ae357f479e1f602e6d69bd18406b4992c601da788b00f" [label=""];
  "sha256:86a88993671f3489a34ae357f479e1f602e6d69bd18406b4992c601da788b00f" -> "sha256:cf1e4be59b97296870d1958c4e03376855e12028cd69a95ddb7d1b4a8332ca00" [label=""];
  "sha256:cf1e4be59b97296870d1958c4e03376855e12028cd69a95ddb7d1b4a8332ca00" -> "sha256:43060dd8715e8f35046c65ee77ef48c5d38f93ef08f24fc39d06cd84cee8cb9c" [label=""];
  "sha256:43060dd8715e8f35046c65ee77ef48c5d38f93ef08f24fc39d06cd84cee8cb9c" -> "sha256:31944d8fc481a426d5db2d979d1784f70043f0a6965b3f4405504fb52f8c7274" [label=""];
  "sha256:31944d8fc481a426d5db2d979d1784f70043f0a6965b3f4405504fb52f8c7274" -> "sha256:d982d658954b1bf211eac0b7fbe56cc8e03a097e3133a3404e0985980d53b35e" [label=""];
  "sha256:d982d658954b1bf211eac0b7fbe56cc8e03a097e3133a3404e0985980d53b35e" -> "sha256:48e87cf8a9a97a05b39af2eacf80a73a44bc1dc585640dc7b79f985ef425d8b2" [label=""];
  "sha256:aff3525ad3199ad2546eb2e5123fcd13db75908664e58029e2c4d9491789765e" -> "sha256:48e87cf8a9a97a05b39af2eacf80a73a44bc1dc585640dc7b79f985ef425d8b2" [label=""];
  "sha256:48e87cf8a9a97a05b39af2eacf80a73a44bc1dc585640dc7b79f985ef425d8b2" -> "sha256:a957f4de8454fbc0c67978cc2f5068071d5e705025728e2580f4e87acd8edad9" [label=""];
  "sha256:a957f4de8454fbc0c67978cc2f5068071d5e705025728e2580f4e87acd8edad9" -> "sha256:e6be12f38c0f22f6bd22396e062cb18036ffb75faf2e259e6c86f2827d9d9b84" [label=""];
}

