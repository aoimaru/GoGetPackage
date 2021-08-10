[app/sources/291180030.Dockerfile]
digraph {
  "sha256:aa8fcf5c1323fb2bf341f34dcc960c570a0ee3df9aaa80b3e86404041f783426" [label="docker-image://docker.io/circleci/php:5.6.37-fpm-jessie-node@sha256:fb8dc7f827b4812a4d97abed4b01755ccc49d2b4db66163575007aefb4293e2d" shape="ellipse"];
  "sha256:2926fb9f86d3a0e8d46ad60f9cf9bceb2f4028e6fffe2e4a4969c341e63e91a9" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi   && sudo apt-get install -y bzip2 libgconf-2-4 # for extracting firefox and running chrome, respectively" shape="box"];
  "sha256:ea852be2d9d414cfe92e1b205cb195492c7d2212ffad4809b8daec7fb5177154" [label="/bin/sh -c FIREFOX_URL=\"https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US\"   && ACTUAL_URL=$(curl -Ls -o /dev/null -w %{url_effective} $FIREFOX_URL)   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.tar.bz2 $ACTUAL_URL   && sudo tar -xvjf /tmp/firefox.tar.bz2 -C /opt   && sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox   && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.*   && firefox --version" shape="box"];
  "sha256:624afbf4b724715a5bfaa12bd4fb664f0be7e3ecb29a20ed111b50f2f3e1b293" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")      && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"      && cd /tmp      && tar xf geckodriver_linux64.tar.gz      && rm -rf geckodriver_linux64.tar.gz      && sudo mv geckodriver /usr/local/bin/geckodriver      && sudo chmod +x /usr/local/bin/geckodriver      && geckodriver --version" shape="box"];
  "sha256:3baab177ccb65f12318cc234a5dbf70070de8d31febef198f6783fc7ce749389" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:88b0019cb9c1e0db4dc1b80445c49cc5ed75358da885821b3495894eaf1fefe3" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:492af33e02b5b4266dc64359c0bdf6783314577c4874928592b87312ca219dd2" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:21d1ab9ba55c7699a7f7d9b320e405a9cf358a10ddefffc4dcc975c168996a12" [label="sha256:21d1ab9ba55c7699a7f7d9b320e405a9cf358a10ddefffc4dcc975c168996a12" shape="plaintext"];
  "sha256:aa8fcf5c1323fb2bf341f34dcc960c570a0ee3df9aaa80b3e86404041f783426" -> "sha256:2926fb9f86d3a0e8d46ad60f9cf9bceb2f4028e6fffe2e4a4969c341e63e91a9" [label=""];
  "sha256:2926fb9f86d3a0e8d46ad60f9cf9bceb2f4028e6fffe2e4a4969c341e63e91a9" -> "sha256:ea852be2d9d414cfe92e1b205cb195492c7d2212ffad4809b8daec7fb5177154" [label=""];
  "sha256:ea852be2d9d414cfe92e1b205cb195492c7d2212ffad4809b8daec7fb5177154" -> "sha256:624afbf4b724715a5bfaa12bd4fb664f0be7e3ecb29a20ed111b50f2f3e1b293" [label=""];
  "sha256:624afbf4b724715a5bfaa12bd4fb664f0be7e3ecb29a20ed111b50f2f3e1b293" -> "sha256:3baab177ccb65f12318cc234a5dbf70070de8d31febef198f6783fc7ce749389" [label=""];
  "sha256:3baab177ccb65f12318cc234a5dbf70070de8d31febef198f6783fc7ce749389" -> "sha256:88b0019cb9c1e0db4dc1b80445c49cc5ed75358da885821b3495894eaf1fefe3" [label=""];
  "sha256:88b0019cb9c1e0db4dc1b80445c49cc5ed75358da885821b3495894eaf1fefe3" -> "sha256:492af33e02b5b4266dc64359c0bdf6783314577c4874928592b87312ca219dd2" [label=""];
  "sha256:492af33e02b5b4266dc64359c0bdf6783314577c4874928592b87312ca219dd2" -> "sha256:21d1ab9ba55c7699a7f7d9b320e405a9cf358a10ddefffc4dcc975c168996a12" [label=""];
}
