[app/sources/291179859.Dockerfile]
digraph {
  "sha256:b6b348aa7884fe57e66c03b17e979f2a21938d6e99749986b341086c818e4167" [label="docker-image://docker.io/circleci/openjdk:8u151-jdk@sha256:da7cce9886eefbfe396992620bf50becf849b41cf3ff16852d8cb29310fe9d3f" shape="ellipse"];
  "sha256:4a2330374a1bcf2c75e96f5e3e7848dbb4d2afca8417405984429cc2375f49a5" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:368520a6471af58f44d0346abceabd6b06d8a6fece50268dff404c1fc0c1e32b" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:3ad1b41790a91c2c05206ad903a7375628221f209f2b6c06e3a2dd1b5a495c9e" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:9bc51e6cb78aab7d8691459c406cc762ca79659cf3f4abc028c83d23790e5bb4" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")       && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"       && cd /tmp       && tar xf geckodriver_linux64.tar.gz       && rm -rf geckodriver_linux64.tar.gz       && sudo mv geckodriver /usr/local/bin/geckodriver       && sudo chmod +x /usr/local/bin/geckodriver       && geckodriver --version" shape="box"];
  "sha256:4cbaec719cbbacaf3aee7cbaf9b2e169deacf440fde6ccf542003f2b65cedee8" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:328421a2dc4c83ccf30bec38e82b661263d398049c8bef591d1ca2600abdea7c" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:1eb133ad50f45b81c942c380db0c5fd9ec285d9e6239aafbfd01732c7d0830ca" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:08709d100cfdf4d15160955bda677030c4b98b6f73419b7b8aabe5678c7b7579" [label="sha256:08709d100cfdf4d15160955bda677030c4b98b6f73419b7b8aabe5678c7b7579" shape="plaintext"];
  "sha256:b6b348aa7884fe57e66c03b17e979f2a21938d6e99749986b341086c818e4167" -> "sha256:4a2330374a1bcf2c75e96f5e3e7848dbb4d2afca8417405984429cc2375f49a5" [label=""];
  "sha256:4a2330374a1bcf2c75e96f5e3e7848dbb4d2afca8417405984429cc2375f49a5" -> "sha256:368520a6471af58f44d0346abceabd6b06d8a6fece50268dff404c1fc0c1e32b" [label=""];
  "sha256:368520a6471af58f44d0346abceabd6b06d8a6fece50268dff404c1fc0c1e32b" -> "sha256:3ad1b41790a91c2c05206ad903a7375628221f209f2b6c06e3a2dd1b5a495c9e" [label=""];
  "sha256:3ad1b41790a91c2c05206ad903a7375628221f209f2b6c06e3a2dd1b5a495c9e" -> "sha256:9bc51e6cb78aab7d8691459c406cc762ca79659cf3f4abc028c83d23790e5bb4" [label=""];
  "sha256:9bc51e6cb78aab7d8691459c406cc762ca79659cf3f4abc028c83d23790e5bb4" -> "sha256:4cbaec719cbbacaf3aee7cbaf9b2e169deacf440fde6ccf542003f2b65cedee8" [label=""];
  "sha256:4cbaec719cbbacaf3aee7cbaf9b2e169deacf440fde6ccf542003f2b65cedee8" -> "sha256:328421a2dc4c83ccf30bec38e82b661263d398049c8bef591d1ca2600abdea7c" [label=""];
  "sha256:328421a2dc4c83ccf30bec38e82b661263d398049c8bef591d1ca2600abdea7c" -> "sha256:1eb133ad50f45b81c942c380db0c5fd9ec285d9e6239aafbfd01732c7d0830ca" [label=""];
  "sha256:1eb133ad50f45b81c942c380db0c5fd9ec285d9e6239aafbfd01732c7d0830ca" -> "sha256:08709d100cfdf4d15160955bda677030c4b98b6f73419b7b8aabe5678c7b7579" [label=""];
}
