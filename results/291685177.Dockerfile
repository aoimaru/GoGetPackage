[app/sources/291685177.Dockerfile]
digraph {
  "sha256:8146376665031f06d17b7883a5293bcd6ec8f788696dca4f794834266552e106" [label="docker-image://docker.io/circleci/php:7.2.15-apache-stretch@sha256:1f761558f91873d72b6d63ead1090dbf2d1b2b5f8b77a79ad5a058220040ce9b" shape="ellipse"];
  "sha256:ea20e9d3c6f4f16892b53b8b3bc753e591f82937f4a1d861b4ce2b60e1603173" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:1e756aed40eca3e37f3aa2d66a073539c7183835da918705396ff360b6c98a1a" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:e9e1d393715c674da8fb7a96d07b5fe0da58c070a523d73eb2fafb090a0a2418" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:3d71488267d9f9ec5f927fe5c2975182d3d22ad0f589685b4488e97f41df9cfd" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:c78cb70f18206dcd7039344af00163ed294efb40214deead730599a4b10df347" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:ad0783374873437d4e484d3c18b578275673b7d7699febf4b144bf226d86d1de" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:94e7b79d8a480b9b2895986455761a5610da763d044dec4aac198f2983f45f09" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:9cce7498696ed3df92a1e816c134f95628854c294a1e81a3a487d0b6fb2de946" [label="sha256:9cce7498696ed3df92a1e816c134f95628854c294a1e81a3a487d0b6fb2de946" shape="plaintext"];
  "sha256:8146376665031f06d17b7883a5293bcd6ec8f788696dca4f794834266552e106" -> "sha256:ea20e9d3c6f4f16892b53b8b3bc753e591f82937f4a1d861b4ce2b60e1603173" [label=""];
  "sha256:ea20e9d3c6f4f16892b53b8b3bc753e591f82937f4a1d861b4ce2b60e1603173" -> "sha256:1e756aed40eca3e37f3aa2d66a073539c7183835da918705396ff360b6c98a1a" [label=""];
  "sha256:1e756aed40eca3e37f3aa2d66a073539c7183835da918705396ff360b6c98a1a" -> "sha256:e9e1d393715c674da8fb7a96d07b5fe0da58c070a523d73eb2fafb090a0a2418" [label=""];
  "sha256:e9e1d393715c674da8fb7a96d07b5fe0da58c070a523d73eb2fafb090a0a2418" -> "sha256:3d71488267d9f9ec5f927fe5c2975182d3d22ad0f589685b4488e97f41df9cfd" [label=""];
  "sha256:3d71488267d9f9ec5f927fe5c2975182d3d22ad0f589685b4488e97f41df9cfd" -> "sha256:c78cb70f18206dcd7039344af00163ed294efb40214deead730599a4b10df347" [label=""];
  "sha256:c78cb70f18206dcd7039344af00163ed294efb40214deead730599a4b10df347" -> "sha256:ad0783374873437d4e484d3c18b578275673b7d7699febf4b144bf226d86d1de" [label=""];
  "sha256:ad0783374873437d4e484d3c18b578275673b7d7699febf4b144bf226d86d1de" -> "sha256:94e7b79d8a480b9b2895986455761a5610da763d044dec4aac198f2983f45f09" [label=""];
  "sha256:94e7b79d8a480b9b2895986455761a5610da763d044dec4aac198f2983f45f09" -> "sha256:9cce7498696ed3df92a1e816c134f95628854c294a1e81a3a487d0b6fb2de946" [label=""];
}

