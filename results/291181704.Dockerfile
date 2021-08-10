[app/sources/291181704.Dockerfile]
digraph {
  "sha256:d10f8ea4a3295308f9e3b27271d5961a9fe346b1d6c84723a5834eb22c1e9a1f" [label="docker-image://docker.io/circleci/node:9.3.0-stretch@sha256:d6bd5d41d78affb384241fde67b515ad64047b747896e27c0eb862d5b4f09005" shape="ellipse"];
  "sha256:a979342482f8b0161456a745feedcce18ba0dfe0c7496fb784776e2f5698e67a" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:c900cd29e241db581e74f57a57bce928e22111b5b97915cb437111be7486200b" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:b200aad623c2040c7e6788f2f26acfd45b580b6f8ff2e075eca79f295b2469da" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:6d294a4d23adc47df30f42508497024a8e1b61e7d293779d06444ac416abf98d" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")       && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"       && cd /tmp       && tar xf geckodriver_linux64.tar.gz       && rm -rf geckodriver_linux64.tar.gz       && sudo mv geckodriver /usr/local/bin/geckodriver       && sudo chmod +x /usr/local/bin/geckodriver       && geckodriver --version" shape="box"];
  "sha256:0b23eef4039002d20d14ac0dbc50e5432bd83480d06f828d84f7157c73d4f2c2" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:4e07ea4a53199d64c337896d31e47561532da7dc4a1df16c24008b6b7b9828bf" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:d87616b72b96eb4ba6359dcfd111c94809031d3fc0726cf6f29629ddc647d7da" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:ae00c020dc67ac3e2db5c6671a5de03a479f99cae5d053711c18bedb305807ca" [label="sha256:ae00c020dc67ac3e2db5c6671a5de03a479f99cae5d053711c18bedb305807ca" shape="plaintext"];
  "sha256:d10f8ea4a3295308f9e3b27271d5961a9fe346b1d6c84723a5834eb22c1e9a1f" -> "sha256:a979342482f8b0161456a745feedcce18ba0dfe0c7496fb784776e2f5698e67a" [label=""];
  "sha256:a979342482f8b0161456a745feedcce18ba0dfe0c7496fb784776e2f5698e67a" -> "sha256:c900cd29e241db581e74f57a57bce928e22111b5b97915cb437111be7486200b" [label=""];
  "sha256:c900cd29e241db581e74f57a57bce928e22111b5b97915cb437111be7486200b" -> "sha256:b200aad623c2040c7e6788f2f26acfd45b580b6f8ff2e075eca79f295b2469da" [label=""];
  "sha256:b200aad623c2040c7e6788f2f26acfd45b580b6f8ff2e075eca79f295b2469da" -> "sha256:6d294a4d23adc47df30f42508497024a8e1b61e7d293779d06444ac416abf98d" [label=""];
  "sha256:6d294a4d23adc47df30f42508497024a8e1b61e7d293779d06444ac416abf98d" -> "sha256:0b23eef4039002d20d14ac0dbc50e5432bd83480d06f828d84f7157c73d4f2c2" [label=""];
  "sha256:0b23eef4039002d20d14ac0dbc50e5432bd83480d06f828d84f7157c73d4f2c2" -> "sha256:4e07ea4a53199d64c337896d31e47561532da7dc4a1df16c24008b6b7b9828bf" [label=""];
  "sha256:4e07ea4a53199d64c337896d31e47561532da7dc4a1df16c24008b6b7b9828bf" -> "sha256:d87616b72b96eb4ba6359dcfd111c94809031d3fc0726cf6f29629ddc647d7da" [label=""];
  "sha256:d87616b72b96eb4ba6359dcfd111c94809031d3fc0726cf6f29629ddc647d7da" -> "sha256:ae00c020dc67ac3e2db5c6671a5de03a479f99cae5d053711c18bedb305807ca" [label=""];
}

