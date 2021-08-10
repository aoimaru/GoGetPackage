[app/sources/291179303.Dockerfile]
digraph {
  "sha256:01d07274a73fec981c097c105f64f84a315ffcc90dfd19c9f1630893bdeac191" [label="docker-image://docker.io/circleci/golang:1.10.4@sha256:8c6eadbf2d85ba11cb4612ee74a13bf90202bc34197e014aebd864c5643da432" shape="ellipse"];
  "sha256:9d7e3e812833be54d904c72323bdd5e83761a143186977e7899340040f894d45" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:c4ed364a6f2798077ac2f07f0a5de82d694ba08aa46a20a77b399c827329b999" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:2d6ce928c6da0aef75538ae5849f66ac6117922088ef43f2c949e3ddf6d2169a" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:cbbf9400ed507249ff447686bd759ab067c6e7e1a4f33e9e6f7fd6dae70ffeb9" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:199ce140f1f7265b4120ef18aed8b05acf7f16be5150f78488e0585cfefe6aef" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:6fa7ba1370180b67ba8124368031194bf476d7a37c938347b595fea5bedf0bfd" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:ba6c9e589409ec0d767b5a5409b0b69377c9666b265a7a914f27b84485c511ce" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:7c0deb48bd3e8ce99b757e0c0d17b51012cad0044575d8951abd2e53b1e5f66b" [label="sha256:7c0deb48bd3e8ce99b757e0c0d17b51012cad0044575d8951abd2e53b1e5f66b" shape="plaintext"];
  "sha256:01d07274a73fec981c097c105f64f84a315ffcc90dfd19c9f1630893bdeac191" -> "sha256:9d7e3e812833be54d904c72323bdd5e83761a143186977e7899340040f894d45" [label=""];
  "sha256:9d7e3e812833be54d904c72323bdd5e83761a143186977e7899340040f894d45" -> "sha256:c4ed364a6f2798077ac2f07f0a5de82d694ba08aa46a20a77b399c827329b999" [label=""];
  "sha256:c4ed364a6f2798077ac2f07f0a5de82d694ba08aa46a20a77b399c827329b999" -> "sha256:2d6ce928c6da0aef75538ae5849f66ac6117922088ef43f2c949e3ddf6d2169a" [label=""];
  "sha256:2d6ce928c6da0aef75538ae5849f66ac6117922088ef43f2c949e3ddf6d2169a" -> "sha256:cbbf9400ed507249ff447686bd759ab067c6e7e1a4f33e9e6f7fd6dae70ffeb9" [label=""];
  "sha256:cbbf9400ed507249ff447686bd759ab067c6e7e1a4f33e9e6f7fd6dae70ffeb9" -> "sha256:199ce140f1f7265b4120ef18aed8b05acf7f16be5150f78488e0585cfefe6aef" [label=""];
  "sha256:199ce140f1f7265b4120ef18aed8b05acf7f16be5150f78488e0585cfefe6aef" -> "sha256:6fa7ba1370180b67ba8124368031194bf476d7a37c938347b595fea5bedf0bfd" [label=""];
  "sha256:6fa7ba1370180b67ba8124368031194bf476d7a37c938347b595fea5bedf0bfd" -> "sha256:ba6c9e589409ec0d767b5a5409b0b69377c9666b265a7a914f27b84485c511ce" [label=""];
  "sha256:ba6c9e589409ec0d767b5a5409b0b69377c9666b265a7a914f27b84485c511ce" -> "sha256:7c0deb48bd3e8ce99b757e0c0d17b51012cad0044575d8951abd2e53b1e5f66b" [label=""];
}

