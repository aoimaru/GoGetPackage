[app/sources/291180345.Dockerfile]
digraph {
  "sha256:2379036a8bba410270ef3a2f71bb778fc512cd09af7c4e2d14490f9b27498a56" [label="docker-image://docker.io/circleci/php:7.0.32-apache-stretch@sha256:3f00444f76d00ca789be11825b62e2329ed9465f5a5ddf35392c32a8ec75a0ee" shape="ellipse"];
  "sha256:c7ae7d11697353cbf2ec0e68bfd0f2d85b9c08547233b021c21ed06eadef58f8" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:4499e1689a14a3213e564e7b157588d95a0ea11f738e658258523859f3fb0e7f" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:d37a995904d3854bc7fc5cc2563fd576e89c710bf5a6c4d622be583fa3f2563a" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:a198477611acc4ac01f971658f120e77977cff336637b2775d7b2e145ca39d18" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:5c7a96110d674ca2cbd97bc82bb9879b26d3bb86a2ef2a857d5843acae5b0e89" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:9f8a765a8c571a99d1ab6ae67699d2957d34c0bbd7cd4b3662f0071067208594" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:5cd43587391672fd3c40911390e8110e12a8b83b6ada795ceb37cb5e9e85b909" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:61da9af73f7edd8693438cb0652488520c858f5500bd72a3ec012df0b7f1aba7" [label="sha256:61da9af73f7edd8693438cb0652488520c858f5500bd72a3ec012df0b7f1aba7" shape="plaintext"];
  "sha256:2379036a8bba410270ef3a2f71bb778fc512cd09af7c4e2d14490f9b27498a56" -> "sha256:c7ae7d11697353cbf2ec0e68bfd0f2d85b9c08547233b021c21ed06eadef58f8" [label=""];
  "sha256:c7ae7d11697353cbf2ec0e68bfd0f2d85b9c08547233b021c21ed06eadef58f8" -> "sha256:4499e1689a14a3213e564e7b157588d95a0ea11f738e658258523859f3fb0e7f" [label=""];
  "sha256:4499e1689a14a3213e564e7b157588d95a0ea11f738e658258523859f3fb0e7f" -> "sha256:d37a995904d3854bc7fc5cc2563fd576e89c710bf5a6c4d622be583fa3f2563a" [label=""];
  "sha256:d37a995904d3854bc7fc5cc2563fd576e89c710bf5a6c4d622be583fa3f2563a" -> "sha256:a198477611acc4ac01f971658f120e77977cff336637b2775d7b2e145ca39d18" [label=""];
  "sha256:a198477611acc4ac01f971658f120e77977cff336637b2775d7b2e145ca39d18" -> "sha256:5c7a96110d674ca2cbd97bc82bb9879b26d3bb86a2ef2a857d5843acae5b0e89" [label=""];
  "sha256:5c7a96110d674ca2cbd97bc82bb9879b26d3bb86a2ef2a857d5843acae5b0e89" -> "sha256:9f8a765a8c571a99d1ab6ae67699d2957d34c0bbd7cd4b3662f0071067208594" [label=""];
  "sha256:9f8a765a8c571a99d1ab6ae67699d2957d34c0bbd7cd4b3662f0071067208594" -> "sha256:5cd43587391672fd3c40911390e8110e12a8b83b6ada795ceb37cb5e9e85b909" [label=""];
  "sha256:5cd43587391672fd3c40911390e8110e12a8b83b6ada795ceb37cb5e9e85b909" -> "sha256:61da9af73f7edd8693438cb0652488520c858f5500bd72a3ec012df0b7f1aba7" [label=""];
}

