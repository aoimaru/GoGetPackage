[app/sources/291181672.Dockerfile]
digraph {
  "sha256:d0ce7d4ce4aa341956d28097e0af990564863710b004f49c78c4734afc768cf0" [label="docker-image://docker.io/circleci/node:8.16.0-stretch@sha256:f7642f8ce84d0953b9a25d2d53356d9578cbb1e5785c66b0fc2019cb7e4135ea" shape="ellipse"];
  "sha256:4770e10687f6193e7eaf04c7e42ae0ed5460d162426be8fe1aea37bb3830886c" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"Acquire::Check-Valid-Until false;\" | sudo tee -a /etc/apt/apt.conf.d/10-nocheckvalid     && echo 'Package: *\\nPin: origin \"archive.debian.org\"\\nPin-Priority: 500' | sudo tee -a /etc/apt/preferences.d/10-archive-pin     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi   && sudo apt-get install -y bzip2 libgconf-2-4 # for extracting firefox and running chrome, respectively" shape="box"];
  "sha256:9e537133fbc12dd42d37dc87b82c8e2dd85eba41f0f0637784a04186cb84bad2" [label="/bin/sh -c FIREFOX_URL=\"https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US\"   && ACTUAL_URL=$(curl -Ls -o /dev/null -w %{url_effective} $FIREFOX_URL)   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.tar.bz2 $ACTUAL_URL   && sudo tar -xvjf /tmp/firefox.tar.bz2 -C /opt   && sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox   && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.*   && firefox --version" shape="box"];
  "sha256:cfabda5b3158c437194bcac955ec8acac696eec53bbd2e31c5756794212e7307" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")      && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"      && cd /tmp      && tar xf geckodriver_linux64.tar.gz      && rm -rf geckodriver_linux64.tar.gz      && sudo mv geckodriver /usr/local/bin/geckodriver      && sudo chmod +x /usr/local/bin/geckodriver      && geckodriver --version" shape="box"];
  "sha256:f354b6a5808d721c9b76eb9765d49e25280a06035727800d44fcdaffb9c6655d" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb     && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)      && rm -rf /tmp/google-chrome-stable_current_amd64.deb     && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'         \"/opt/google/chrome/google-chrome\"     && google-chrome --version" shape="box"];
  "sha256:9af1510f48b7d339177da82cb4ed90bcf8ad6b8b9627dec4937598c7fd207b47" [label="/bin/sh -c CHROME_VERSION=\"$(google-chrome --version)\"     && export CHROMEDRIVER_RELEASE=\"$(echo $CHROME_VERSION | sed 's/^Google Chrome //')\" && export CHROMEDRIVER_RELEASE=${CHROMEDRIVER_RELEASE%%.*}     && CHROMEDRIVER_VERSION=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE_${CHROMEDRIVER_RELEASE})     && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip\"     && cd /tmp     && unzip chromedriver_linux64.zip     && rm -rf chromedriver_linux64.zip     && sudo mv chromedriver /usr/local/bin/chromedriver     && sudo chmod +x /usr/local/bin/chromedriver     && chromedriver --version" shape="box"];
  "sha256:d551cdddfa1768ba24e6df637aa1b745f2602f1a760a948717e4202c28b7e2d3" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:43382746f0d6f5fe3d45db344dd19a6a971594353c7475ebd06e694097d2501c" [label="sha256:43382746f0d6f5fe3d45db344dd19a6a971594353c7475ebd06e694097d2501c" shape="plaintext"];
  "sha256:d0ce7d4ce4aa341956d28097e0af990564863710b004f49c78c4734afc768cf0" -> "sha256:4770e10687f6193e7eaf04c7e42ae0ed5460d162426be8fe1aea37bb3830886c" [label=""];
  "sha256:4770e10687f6193e7eaf04c7e42ae0ed5460d162426be8fe1aea37bb3830886c" -> "sha256:9e537133fbc12dd42d37dc87b82c8e2dd85eba41f0f0637784a04186cb84bad2" [label=""];
  "sha256:9e537133fbc12dd42d37dc87b82c8e2dd85eba41f0f0637784a04186cb84bad2" -> "sha256:cfabda5b3158c437194bcac955ec8acac696eec53bbd2e31c5756794212e7307" [label=""];
  "sha256:cfabda5b3158c437194bcac955ec8acac696eec53bbd2e31c5756794212e7307" -> "sha256:f354b6a5808d721c9b76eb9765d49e25280a06035727800d44fcdaffb9c6655d" [label=""];
  "sha256:f354b6a5808d721c9b76eb9765d49e25280a06035727800d44fcdaffb9c6655d" -> "sha256:9af1510f48b7d339177da82cb4ed90bcf8ad6b8b9627dec4937598c7fd207b47" [label=""];
  "sha256:9af1510f48b7d339177da82cb4ed90bcf8ad6b8b9627dec4937598c7fd207b47" -> "sha256:d551cdddfa1768ba24e6df637aa1b745f2602f1a760a948717e4202c28b7e2d3" [label=""];
  "sha256:d551cdddfa1768ba24e6df637aa1b745f2602f1a760a948717e4202c28b7e2d3" -> "sha256:43382746f0d6f5fe3d45db344dd19a6a971594353c7475ebd06e694097d2501c" [label=""];
}

