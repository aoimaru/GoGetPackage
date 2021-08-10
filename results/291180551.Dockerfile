[app/sources/291180551.Dockerfile]
digraph {
  "sha256:ca99547a55baa51ef334cc3d863f198c84fd2a06906efe8925976c5034c47d00" [label="docker-image://docker.io/circleci/php:7.1.18-apache-stretch@sha256:930a96fb845d1196b88e29fea4c2f253d948f2b8fd2af2e1a780f15fe2d045fc" shape="ellipse"];
  "sha256:671a2bd7a717bff27d0a9c536af1659e2aa8e3fd0c2507ff54ee1e3af6ae1325" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:e6e9853c18d0cdc2469c2a66b1e02eac975a57f59996b28aa7f495822bd62c42" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:34246223b207bb0b07869b4cd9534cf8bb0fe36b2793541aa488c3dea37804a7" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:3015aa77e60078a23f4e6eb4033a0f8d7c40d3d5227df719e4cebb7606dedf0e" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:23cc536b69ff982fb0634573bdc38f55ebc944cf462a05f38f2958891fac1087" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:c6ded5fc3490b736cde02f5c82fc77b4d28617ecddf049312c7bf7ea20d50b87" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:61cb18ce21f454831175db0fb1132995575d8c6a64130f8f06df20b7c2964288" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:165bb27e26f8499c03bd160bbed404eaa331d3e28d258675abb15c48182c7e84" [label="sha256:165bb27e26f8499c03bd160bbed404eaa331d3e28d258675abb15c48182c7e84" shape="plaintext"];
  "sha256:ca99547a55baa51ef334cc3d863f198c84fd2a06906efe8925976c5034c47d00" -> "sha256:671a2bd7a717bff27d0a9c536af1659e2aa8e3fd0c2507ff54ee1e3af6ae1325" [label=""];
  "sha256:671a2bd7a717bff27d0a9c536af1659e2aa8e3fd0c2507ff54ee1e3af6ae1325" -> "sha256:e6e9853c18d0cdc2469c2a66b1e02eac975a57f59996b28aa7f495822bd62c42" [label=""];
  "sha256:e6e9853c18d0cdc2469c2a66b1e02eac975a57f59996b28aa7f495822bd62c42" -> "sha256:34246223b207bb0b07869b4cd9534cf8bb0fe36b2793541aa488c3dea37804a7" [label=""];
  "sha256:34246223b207bb0b07869b4cd9534cf8bb0fe36b2793541aa488c3dea37804a7" -> "sha256:3015aa77e60078a23f4e6eb4033a0f8d7c40d3d5227df719e4cebb7606dedf0e" [label=""];
  "sha256:3015aa77e60078a23f4e6eb4033a0f8d7c40d3d5227df719e4cebb7606dedf0e" -> "sha256:23cc536b69ff982fb0634573bdc38f55ebc944cf462a05f38f2958891fac1087" [label=""];
  "sha256:23cc536b69ff982fb0634573bdc38f55ebc944cf462a05f38f2958891fac1087" -> "sha256:c6ded5fc3490b736cde02f5c82fc77b4d28617ecddf049312c7bf7ea20d50b87" [label=""];
  "sha256:c6ded5fc3490b736cde02f5c82fc77b4d28617ecddf049312c7bf7ea20d50b87" -> "sha256:61cb18ce21f454831175db0fb1132995575d8c6a64130f8f06df20b7c2964288" [label=""];
  "sha256:61cb18ce21f454831175db0fb1132995575d8c6a64130f8f06df20b7c2964288" -> "sha256:165bb27e26f8499c03bd160bbed404eaa331d3e28d258675abb15c48182c7e84" [label=""];
}
