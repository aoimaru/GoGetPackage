[app/sources/291180065.Dockerfile]
digraph {
  "sha256:6450268129adb1fb5e63359a35d3cff222d45aeafbc90d9bc70ed4d78161dd50" [label="docker-image://docker.io/circleci/php:5.6.38-cli-jessie-node@sha256:188455302477d6f4bb759a9115498c01d4ddde8e62363bd4398bbae517d40c31" shape="ellipse"];
  "sha256:b2a086f6079d3aaec965334716582a6fc8be2665c3e717072afc8b559d8a50b3" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:8a68a6cfa3ebbf0402a897569d4e6d576b49a412b0ea53562b6fd9c669b0bf75" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:3c31ebf1b2dc1ce958ff6460bec7dfa1b7d3c5567f456f6b9f46fe864bcbedcb" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:dd30449f44ed564335f1039246db3206c6083c0e72e64b5b48d26a043832ccc9" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:b96d14b2fab6e57f4642b951ebb6500d017f0c432366de017b25ede9a27fce83" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:dec6e3c1f74f6a9da8cbb956a187186a36d2b83380e981af2352edf99dca7022" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:8149344e01b07d76afd0c928984b2c1b9aca9a95920233e55326fa93cc9bd1eb" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:431723eb052f5449c01229fceefc5ff04af6bb51027d6de74e7d9fd8873b1ff5" [label="sha256:431723eb052f5449c01229fceefc5ff04af6bb51027d6de74e7d9fd8873b1ff5" shape="plaintext"];
  "sha256:6450268129adb1fb5e63359a35d3cff222d45aeafbc90d9bc70ed4d78161dd50" -> "sha256:b2a086f6079d3aaec965334716582a6fc8be2665c3e717072afc8b559d8a50b3" [label=""];
  "sha256:b2a086f6079d3aaec965334716582a6fc8be2665c3e717072afc8b559d8a50b3" -> "sha256:8a68a6cfa3ebbf0402a897569d4e6d576b49a412b0ea53562b6fd9c669b0bf75" [label=""];
  "sha256:8a68a6cfa3ebbf0402a897569d4e6d576b49a412b0ea53562b6fd9c669b0bf75" -> "sha256:3c31ebf1b2dc1ce958ff6460bec7dfa1b7d3c5567f456f6b9f46fe864bcbedcb" [label=""];
  "sha256:3c31ebf1b2dc1ce958ff6460bec7dfa1b7d3c5567f456f6b9f46fe864bcbedcb" -> "sha256:dd30449f44ed564335f1039246db3206c6083c0e72e64b5b48d26a043832ccc9" [label=""];
  "sha256:dd30449f44ed564335f1039246db3206c6083c0e72e64b5b48d26a043832ccc9" -> "sha256:b96d14b2fab6e57f4642b951ebb6500d017f0c432366de017b25ede9a27fce83" [label=""];
  "sha256:b96d14b2fab6e57f4642b951ebb6500d017f0c432366de017b25ede9a27fce83" -> "sha256:dec6e3c1f74f6a9da8cbb956a187186a36d2b83380e981af2352edf99dca7022" [label=""];
  "sha256:dec6e3c1f74f6a9da8cbb956a187186a36d2b83380e981af2352edf99dca7022" -> "sha256:8149344e01b07d76afd0c928984b2c1b9aca9a95920233e55326fa93cc9bd1eb" [label=""];
  "sha256:8149344e01b07d76afd0c928984b2c1b9aca9a95920233e55326fa93cc9bd1eb" -> "sha256:431723eb052f5449c01229fceefc5ff04af6bb51027d6de74e7d9fd8873b1ff5" [label=""];
}
