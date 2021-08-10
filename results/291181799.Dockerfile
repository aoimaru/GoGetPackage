[app/sources/291181799.Dockerfile]
digraph {
  "sha256:b46984b7d6da9f60f0f08cec5863daa0523879c2611467c1abcca3b9cf05e1d8" [label="docker-image://docker.io/circleci/openjdk:11-ea-17-jdk-sid@sha256:8079528e455165d7eb0a22d25a45b3b617e4b07484f7a011c2e0df7da977014c" shape="ellipse"];
  "sha256:794e93e90e0c5ea5f6d071dba6969847c0ee9bb5e1309cd4b6ad1e80cbde6add" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:582d5c496c38df2895d943eeb09d7f4b01a104e15c2688749111a9c6e80f7c2b" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:d658665d927cade496599ce2e84a65186f97e2da76814fb04456f8da4236fb88" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:a5b640eb18166ddf626998d8e4938ebeda68d24d854724b4789dacd9aa90cf28" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:f0a1dd5a2e7b7cc02f34b5a2862f068de218b97078102f6dc5e45355df608b8f" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:e45a750c78e14c34fccdd91ec970598c9a5157653ffd76ad4c75daf4e1991439" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:e58e94cb0dee619eeef59128e516c2d720c7ef0a3e140a5435604bd4a12e28d1" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:e4d3212156343b0f8ed0a3b0cae72223588509baebfccb72fbf30710853d16e2" [label="sha256:e4d3212156343b0f8ed0a3b0cae72223588509baebfccb72fbf30710853d16e2" shape="plaintext"];
  "sha256:b46984b7d6da9f60f0f08cec5863daa0523879c2611467c1abcca3b9cf05e1d8" -> "sha256:794e93e90e0c5ea5f6d071dba6969847c0ee9bb5e1309cd4b6ad1e80cbde6add" [label=""];
  "sha256:794e93e90e0c5ea5f6d071dba6969847c0ee9bb5e1309cd4b6ad1e80cbde6add" -> "sha256:582d5c496c38df2895d943eeb09d7f4b01a104e15c2688749111a9c6e80f7c2b" [label=""];
  "sha256:582d5c496c38df2895d943eeb09d7f4b01a104e15c2688749111a9c6e80f7c2b" -> "sha256:d658665d927cade496599ce2e84a65186f97e2da76814fb04456f8da4236fb88" [label=""];
  "sha256:d658665d927cade496599ce2e84a65186f97e2da76814fb04456f8da4236fb88" -> "sha256:a5b640eb18166ddf626998d8e4938ebeda68d24d854724b4789dacd9aa90cf28" [label=""];
  "sha256:a5b640eb18166ddf626998d8e4938ebeda68d24d854724b4789dacd9aa90cf28" -> "sha256:f0a1dd5a2e7b7cc02f34b5a2862f068de218b97078102f6dc5e45355df608b8f" [label=""];
  "sha256:f0a1dd5a2e7b7cc02f34b5a2862f068de218b97078102f6dc5e45355df608b8f" -> "sha256:e45a750c78e14c34fccdd91ec970598c9a5157653ffd76ad4c75daf4e1991439" [label=""];
  "sha256:e45a750c78e14c34fccdd91ec970598c9a5157653ffd76ad4c75daf4e1991439" -> "sha256:e58e94cb0dee619eeef59128e516c2d720c7ef0a3e140a5435604bd4a12e28d1" [label=""];
  "sha256:e58e94cb0dee619eeef59128e516c2d720c7ef0a3e140a5435604bd4a12e28d1" -> "sha256:e4d3212156343b0f8ed0a3b0cae72223588509baebfccb72fbf30710853d16e2" [label=""];
}
