[app/sources/291181800.Dockerfile]
digraph {
  "sha256:9a211549c04d2766af7c63e2fd8c9ca377600b7b43789120e19204438590887d" [label="docker-image://docker.io/circleci/openjdk:11-ea-17-jdk-sid-node@sha256:55b08ef2cb71796198f74db9926a19e46446996a759638d2d4389634357961f8" shape="ellipse"];
  "sha256:eca70307ef0f46b1361f2e67163985bd5839987e8d98dcfc65e4d947c8ad4213" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:b8f4a7b19143da142e7f8273bf06ed104e0e03bbbd352e8fa6956749b6569767" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:30baa0667e53c7fb15ba38f7740c1889e3d49ba0c32108ffeb76a4f96f2a2c7e" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:5ab846ea3d3ebe76784f750be4e3eaae8a03909c3f6dd359ca7b18fa17168878" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:905471395d0bc4bf6e31357d045253d027b80bac7628bc07107a2613ca29da7a" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:169c762e9e128fffa0bbdcb60dd0c05665789ea0c7af3cdb11bda282a1b6dcb4" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:9debfc898a497b663e6e256cddf38ef9ada5609aaaac88c8d83f60ee03915395" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:2bdc1b3a98bf22b235d55d33f25085202c80b4fbeba7666b24e4a17f32a3b7ae" [label="sha256:2bdc1b3a98bf22b235d55d33f25085202c80b4fbeba7666b24e4a17f32a3b7ae" shape="plaintext"];
  "sha256:9a211549c04d2766af7c63e2fd8c9ca377600b7b43789120e19204438590887d" -> "sha256:eca70307ef0f46b1361f2e67163985bd5839987e8d98dcfc65e4d947c8ad4213" [label=""];
  "sha256:eca70307ef0f46b1361f2e67163985bd5839987e8d98dcfc65e4d947c8ad4213" -> "sha256:b8f4a7b19143da142e7f8273bf06ed104e0e03bbbd352e8fa6956749b6569767" [label=""];
  "sha256:b8f4a7b19143da142e7f8273bf06ed104e0e03bbbd352e8fa6956749b6569767" -> "sha256:30baa0667e53c7fb15ba38f7740c1889e3d49ba0c32108ffeb76a4f96f2a2c7e" [label=""];
  "sha256:30baa0667e53c7fb15ba38f7740c1889e3d49ba0c32108ffeb76a4f96f2a2c7e" -> "sha256:5ab846ea3d3ebe76784f750be4e3eaae8a03909c3f6dd359ca7b18fa17168878" [label=""];
  "sha256:5ab846ea3d3ebe76784f750be4e3eaae8a03909c3f6dd359ca7b18fa17168878" -> "sha256:905471395d0bc4bf6e31357d045253d027b80bac7628bc07107a2613ca29da7a" [label=""];
  "sha256:905471395d0bc4bf6e31357d045253d027b80bac7628bc07107a2613ca29da7a" -> "sha256:169c762e9e128fffa0bbdcb60dd0c05665789ea0c7af3cdb11bda282a1b6dcb4" [label=""];
  "sha256:169c762e9e128fffa0bbdcb60dd0c05665789ea0c7af3cdb11bda282a1b6dcb4" -> "sha256:9debfc898a497b663e6e256cddf38ef9ada5609aaaac88c8d83f60ee03915395" [label=""];
  "sha256:9debfc898a497b663e6e256cddf38ef9ada5609aaaac88c8d83f60ee03915395" -> "sha256:2bdc1b3a98bf22b235d55d33f25085202c80b4fbeba7666b24e4a17f32a3b7ae" [label=""];
}

