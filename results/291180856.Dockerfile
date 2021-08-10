[app/sources/291180856.Dockerfile]
digraph {
  "sha256:ecaf7e85e86977d24920c11c95aec1d9f8627b32313bb9d3e10d042cb96e7b37" [label="docker-image://docker.io/circleci/rust:1.33.0-stretch@sha256:2e54285778c70621cafaac580364bb691a9698cbd4059c584d9d5942cda060d5" shape="ellipse"];
  "sha256:59ffa24946777e9ff6f6a8ecf5501fcd84f593ae2876c1320e3ee1fa4bd97c00" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"Acquire::Check-Valid-Until false;\" | sudo tee -a /etc/apt/apt.conf.d/10-nocheckvalid     && echo 'Package: *\\nPin: origin \"archive.debian.org\"\\nPin-Priority: 500' | sudo tee -a /etc/apt/preferences.d/10-archive-pin     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:3cf97b4d5ea4e0a79c5e2ec682b9aea8e7cf32edbdf7b4d902ad446d8d486f5f" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:68f64a1294f0d2c13ea3b438241ef2dc50cc1407dbaba6d62b4533e7777540a0" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:3a47f98266f7b25b925433b5f7517ea2e7714f4eec642b378387b10af5ed7a15" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb     && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)      && rm -rf /tmp/google-chrome-stable_current_amd64.deb     && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'         \"/opt/google/chrome/google-chrome\"     && google-chrome --version" shape="box"];
  "sha256:555e81db6d1f84a91c8fdb7ef2471800a6436c4eef7b4324d62e724b5916c814" [label="/bin/sh -c CHROME_VERSION=\"$(google-chrome --version)\"     && export CHROMEDRIVER_RELEASE=\"$(echo $CHROME_VERSION | sed 's/^Google Chrome //')\" && export CHROMEDRIVER_RELEASE=${CHROMEDRIVER_RELEASE%%.*}     && CHROMEDRIVER_VERSION=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE_${CHROMEDRIVER_RELEASE})     && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip\"     && cd /tmp     && unzip chromedriver_linux64.zip     && rm -rf chromedriver_linux64.zip     && sudo mv chromedriver /usr/local/bin/chromedriver     && sudo chmod +x /usr/local/bin/chromedriver     && chromedriver --version" shape="box"];
  "sha256:4933ba6715892d220bb835c830e18c59dbd66940b3d8f7881b849334609876bd" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:bf0188ce2ea0ef34b3e24da6eba03af6ca54d61fae2b15b14d7f31dd7cfa4f2c" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:f5e4b6a265eb645d84f1e54ace21f8fd54e41e2297265f9953d86b5c05a1b644" [label="sha256:f5e4b6a265eb645d84f1e54ace21f8fd54e41e2297265f9953d86b5c05a1b644" shape="plaintext"];
  "sha256:ecaf7e85e86977d24920c11c95aec1d9f8627b32313bb9d3e10d042cb96e7b37" -> "sha256:59ffa24946777e9ff6f6a8ecf5501fcd84f593ae2876c1320e3ee1fa4bd97c00" [label=""];
  "sha256:59ffa24946777e9ff6f6a8ecf5501fcd84f593ae2876c1320e3ee1fa4bd97c00" -> "sha256:3cf97b4d5ea4e0a79c5e2ec682b9aea8e7cf32edbdf7b4d902ad446d8d486f5f" [label=""];
  "sha256:3cf97b4d5ea4e0a79c5e2ec682b9aea8e7cf32edbdf7b4d902ad446d8d486f5f" -> "sha256:68f64a1294f0d2c13ea3b438241ef2dc50cc1407dbaba6d62b4533e7777540a0" [label=""];
  "sha256:68f64a1294f0d2c13ea3b438241ef2dc50cc1407dbaba6d62b4533e7777540a0" -> "sha256:3a47f98266f7b25b925433b5f7517ea2e7714f4eec642b378387b10af5ed7a15" [label=""];
  "sha256:3a47f98266f7b25b925433b5f7517ea2e7714f4eec642b378387b10af5ed7a15" -> "sha256:555e81db6d1f84a91c8fdb7ef2471800a6436c4eef7b4324d62e724b5916c814" [label=""];
  "sha256:555e81db6d1f84a91c8fdb7ef2471800a6436c4eef7b4324d62e724b5916c814" -> "sha256:4933ba6715892d220bb835c830e18c59dbd66940b3d8f7881b849334609876bd" [label=""];
  "sha256:4933ba6715892d220bb835c830e18c59dbd66940b3d8f7881b849334609876bd" -> "sha256:bf0188ce2ea0ef34b3e24da6eba03af6ca54d61fae2b15b14d7f31dd7cfa4f2c" [label=""];
  "sha256:bf0188ce2ea0ef34b3e24da6eba03af6ca54d61fae2b15b14d7f31dd7cfa4f2c" -> "sha256:f5e4b6a265eb645d84f1e54ace21f8fd54e41e2297265f9953d86b5c05a1b644" [label=""];
}
