[app/sources/291686207.Dockerfile]
digraph {
  "sha256:cf2e0b9fa98dd500b6f4b5d67467b132aee0db2abe1639de694c22ce3ffb8555" [label="docker-image://docker.io/circleci/python:3.6.6@sha256:6fa1c2d3edbe78c07ac6c8e1f858c9c496d69bb087e090d6bee4f600293b0e69" shape="ellipse"];
  "sha256:f1e097d9119bc3a1b197f2a863681cf8035ca7d6744ea69e525cadbb1ce2e659" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi   && sudo apt-get install -y bzip2 libgconf-2-4 # for extracting firefox and running chrome, respectively" shape="box"];
  "sha256:0bd1cf1710166b2d6f7b6bcfcda526fbcc54357196aca5425d1d3e1ec314be90" [label="/bin/sh -c FIREFOX_URL=\"https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US\"   && ACTUAL_URL=$(curl -Ls -o /dev/null -w %{url_effective} $FIREFOX_URL)   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.tar.bz2 $ACTUAL_URL   && sudo tar -xvjf /tmp/firefox.tar.bz2 -C /opt   && sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox   && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.*   && firefox --version" shape="box"];
  "sha256:f79cee07a7dde1c9db29a52ad7c9be76c81f783e13d66f122a2dfa292b30bf8f" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")      && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"      && cd /tmp      && tar xf geckodriver_linux64.tar.gz      && rm -rf geckodriver_linux64.tar.gz      && sudo mv geckodriver /usr/local/bin/geckodriver      && sudo chmod +x /usr/local/bin/geckodriver      && geckodriver --version" shape="box"];
  "sha256:7aea312b405fd712fad06e32095ff18e7ce5e317f99899850a52a3dea79fc785" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:e69ad99a8da6cfde8a9bbca3fbf7f11ca72b0b18816f298cef8747501dbca46e" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:c9351c129d7b113a7f81669a9acf463f303739d6ccb983f5dd4e16fa12b4f3ba" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:134a01242cfbdef9cb5cdf39e17c0c60dc22930ca63d1a0096ba75bab9959568" [label="sha256:134a01242cfbdef9cb5cdf39e17c0c60dc22930ca63d1a0096ba75bab9959568" shape="plaintext"];
  "sha256:cf2e0b9fa98dd500b6f4b5d67467b132aee0db2abe1639de694c22ce3ffb8555" -> "sha256:f1e097d9119bc3a1b197f2a863681cf8035ca7d6744ea69e525cadbb1ce2e659" [label=""];
  "sha256:f1e097d9119bc3a1b197f2a863681cf8035ca7d6744ea69e525cadbb1ce2e659" -> "sha256:0bd1cf1710166b2d6f7b6bcfcda526fbcc54357196aca5425d1d3e1ec314be90" [label=""];
  "sha256:0bd1cf1710166b2d6f7b6bcfcda526fbcc54357196aca5425d1d3e1ec314be90" -> "sha256:f79cee07a7dde1c9db29a52ad7c9be76c81f783e13d66f122a2dfa292b30bf8f" [label=""];
  "sha256:f79cee07a7dde1c9db29a52ad7c9be76c81f783e13d66f122a2dfa292b30bf8f" -> "sha256:7aea312b405fd712fad06e32095ff18e7ce5e317f99899850a52a3dea79fc785" [label=""];
  "sha256:7aea312b405fd712fad06e32095ff18e7ce5e317f99899850a52a3dea79fc785" -> "sha256:e69ad99a8da6cfde8a9bbca3fbf7f11ca72b0b18816f298cef8747501dbca46e" [label=""];
  "sha256:e69ad99a8da6cfde8a9bbca3fbf7f11ca72b0b18816f298cef8747501dbca46e" -> "sha256:c9351c129d7b113a7f81669a9acf463f303739d6ccb983f5dd4e16fa12b4f3ba" [label=""];
  "sha256:c9351c129d7b113a7f81669a9acf463f303739d6ccb983f5dd4e16fa12b4f3ba" -> "sha256:134a01242cfbdef9cb5cdf39e17c0c60dc22930ca63d1a0096ba75bab9959568" [label=""];
}
