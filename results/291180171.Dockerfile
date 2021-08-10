[app/sources/291180171.Dockerfile]
digraph {
  "sha256:443b41730e30817b8ef5fb6fb7a8f026a781966d8a47c78ccdb676092bbe5544" [label="docker-image://docker.io/circleci/php:5.6.40-fpm-jessie@sha256:836603a71c4d3fbfe7bdc715be3ca450506059c2ae056a1e51adcbe9784e6107" shape="ellipse"];
  "sha256:df9afabaed7eee344fdfc22dd286461c8d1a014f343c60222ff7f05128b69ae1" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:11e340ab27849612c9e12900462ad6bdd7b086b8d2005446fba1e8539d9c16b0" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:269189e662f83dfb0e2d5a9f27d7507d6a60ef38d84aadbea1b787782f384e96" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:476a95624cdb15e4a5fadb83902e441c8739cac96393cafae8b91d855d34bc07" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:f8e853583822866daec3fd8ee45fa46014a6777e4f42a0cec03b4542ead35878" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:bfa1bcdc51a5826c3b82cab6ae2ce6627011577809942ad613523b3654106358" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:3870bfc69e4cddcb97076f9da913ffe1b4d8285953eed9c9316c9ba2d343dd25" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:bab696ad145e77ab5872377f46ef87e7c3bc9d635d9476447bc189fd810044ae" [label="sha256:bab696ad145e77ab5872377f46ef87e7c3bc9d635d9476447bc189fd810044ae" shape="plaintext"];
  "sha256:443b41730e30817b8ef5fb6fb7a8f026a781966d8a47c78ccdb676092bbe5544" -> "sha256:df9afabaed7eee344fdfc22dd286461c8d1a014f343c60222ff7f05128b69ae1" [label=""];
  "sha256:df9afabaed7eee344fdfc22dd286461c8d1a014f343c60222ff7f05128b69ae1" -> "sha256:11e340ab27849612c9e12900462ad6bdd7b086b8d2005446fba1e8539d9c16b0" [label=""];
  "sha256:11e340ab27849612c9e12900462ad6bdd7b086b8d2005446fba1e8539d9c16b0" -> "sha256:269189e662f83dfb0e2d5a9f27d7507d6a60ef38d84aadbea1b787782f384e96" [label=""];
  "sha256:269189e662f83dfb0e2d5a9f27d7507d6a60ef38d84aadbea1b787782f384e96" -> "sha256:476a95624cdb15e4a5fadb83902e441c8739cac96393cafae8b91d855d34bc07" [label=""];
  "sha256:476a95624cdb15e4a5fadb83902e441c8739cac96393cafae8b91d855d34bc07" -> "sha256:f8e853583822866daec3fd8ee45fa46014a6777e4f42a0cec03b4542ead35878" [label=""];
  "sha256:f8e853583822866daec3fd8ee45fa46014a6777e4f42a0cec03b4542ead35878" -> "sha256:bfa1bcdc51a5826c3b82cab6ae2ce6627011577809942ad613523b3654106358" [label=""];
  "sha256:bfa1bcdc51a5826c3b82cab6ae2ce6627011577809942ad613523b3654106358" -> "sha256:3870bfc69e4cddcb97076f9da913ffe1b4d8285953eed9c9316c9ba2d343dd25" [label=""];
  "sha256:3870bfc69e4cddcb97076f9da913ffe1b4d8285953eed9c9316c9ba2d343dd25" -> "sha256:bab696ad145e77ab5872377f46ef87e7c3bc9d635d9476447bc189fd810044ae" [label=""];
}
