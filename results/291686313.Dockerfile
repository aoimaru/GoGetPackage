[app/sources/291686313.Dockerfile]
digraph {
  "sha256:9f212844dba8da593efda6ffed280cd3aff7dd5a5cb3ff4e108750f0b514b42e" [label="docker-image://docker.io/circleci/python:3.7.0b5-node@sha256:26b8a94f14ef32bba65e8d6ebb8363a617bc9e37d156139ae3e9abf960b50af1" shape="ellipse"];
  "sha256:64e43864cd56a9f330fc1addd48ae9f2f1f6d389e08e3a706965c9fd168a9276" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:b3372deddea4dfba21bb9ccddcee92854a65b80980cdf381bc11359fb21d19d3" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:5898fc0a78166c7d1c35b62f8b150e725203e05ad3221b854e7a2d64058685a0" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:8b2c7713905e3cb43111175f21019bdafcee651d0a1213d8f70ad26bf15f9400" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:4aaa2991d7765633d4dc2bc900d21e9448a63f68402a32be9b9cbc2167cba6d0" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:6206c7680b6540f52c674d00f0e57ad672979e04c95a61d30219047af770e972" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:fab56fd3128d9dcd9b613c09f3522c9916f9aa2e4c1eae2fafba5e74f02be35a" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:2b528c9c7e4ef75f566350e310fc56e21177cfddfefb7981282c584750b59f9a" [label="sha256:2b528c9c7e4ef75f566350e310fc56e21177cfddfefb7981282c584750b59f9a" shape="plaintext"];
  "sha256:9f212844dba8da593efda6ffed280cd3aff7dd5a5cb3ff4e108750f0b514b42e" -> "sha256:64e43864cd56a9f330fc1addd48ae9f2f1f6d389e08e3a706965c9fd168a9276" [label=""];
  "sha256:64e43864cd56a9f330fc1addd48ae9f2f1f6d389e08e3a706965c9fd168a9276" -> "sha256:b3372deddea4dfba21bb9ccddcee92854a65b80980cdf381bc11359fb21d19d3" [label=""];
  "sha256:b3372deddea4dfba21bb9ccddcee92854a65b80980cdf381bc11359fb21d19d3" -> "sha256:5898fc0a78166c7d1c35b62f8b150e725203e05ad3221b854e7a2d64058685a0" [label=""];
  "sha256:5898fc0a78166c7d1c35b62f8b150e725203e05ad3221b854e7a2d64058685a0" -> "sha256:8b2c7713905e3cb43111175f21019bdafcee651d0a1213d8f70ad26bf15f9400" [label=""];
  "sha256:8b2c7713905e3cb43111175f21019bdafcee651d0a1213d8f70ad26bf15f9400" -> "sha256:4aaa2991d7765633d4dc2bc900d21e9448a63f68402a32be9b9cbc2167cba6d0" [label=""];
  "sha256:4aaa2991d7765633d4dc2bc900d21e9448a63f68402a32be9b9cbc2167cba6d0" -> "sha256:6206c7680b6540f52c674d00f0e57ad672979e04c95a61d30219047af770e972" [label=""];
  "sha256:6206c7680b6540f52c674d00f0e57ad672979e04c95a61d30219047af770e972" -> "sha256:fab56fd3128d9dcd9b613c09f3522c9916f9aa2e4c1eae2fafba5e74f02be35a" [label=""];
  "sha256:fab56fd3128d9dcd9b613c09f3522c9916f9aa2e4c1eae2fafba5e74f02be35a" -> "sha256:2b528c9c7e4ef75f566350e310fc56e21177cfddfefb7981282c584750b59f9a" [label=""];
}

