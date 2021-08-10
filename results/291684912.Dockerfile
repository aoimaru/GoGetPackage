[app/sources/291684912.Dockerfile]
digraph {
  "sha256:fa0a3c362dcea5bcd7104696937a7e412d4cf9f5418762faeb3286ab53bfa722" [label="docker-image://docker.io/circleci/php:7.1.28-fpm-stretch@sha256:9baf834651cfeac633e1b6d285d194937eede3b3e7f0e7a72a0c580465c531f4" shape="ellipse"];
  "sha256:11947df3d57c24ce85ea755cc97cecce725c0ce1dd99ad2b083d865c5100c422" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"Acquire::Check-Valid-Until false;\" | sudo tee -a /etc/apt/apt.conf.d/10-nocheckvalid     && echo 'Package: *\\nPin: origin \"archive.debian.org\"\\nPin-Priority: 500' | sudo tee -a /etc/apt/preferences.d/10-archive-pin     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi   && sudo apt-get install -y bzip2 libgconf-2-4 # for extracting firefox and running chrome, respectively" shape="box"];
  "sha256:12e359a576e93692a409d56147579aaeb4ed8539c159cbf87ff46bbd16255e7e" [label="/bin/sh -c FIREFOX_URL=\"https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US\"   && ACTUAL_URL=$(curl -Ls -o /dev/null -w %{url_effective} $FIREFOX_URL)   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.tar.bz2 $ACTUAL_URL   && sudo tar -xvjf /tmp/firefox.tar.bz2 -C /opt   && sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox   && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.*   && firefox --version" shape="box"];
  "sha256:7079be45f3a891801548a691d5c663779bee3b8b06eecadde6390086a993a218" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")      && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"      && cd /tmp      && tar xf geckodriver_linux64.tar.gz      && rm -rf geckodriver_linux64.tar.gz      && sudo mv geckodriver /usr/local/bin/geckodriver      && sudo chmod +x /usr/local/bin/geckodriver      && geckodriver --version" shape="box"];
  "sha256:e24c7ad13011cb5819221ea97e2891992f53b9b680a9f55430a0809b607f2d40" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb     && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)      && rm -rf /tmp/google-chrome-stable_current_amd64.deb     && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'         \"/opt/google/chrome/google-chrome\"     && google-chrome --version" shape="box"];
  "sha256:aca8222d04fb4686266e702e7fa34e9845e4b0907376a66aad7caabefe7d79ad" [label="/bin/sh -c CHROME_VERSION=\"$(google-chrome --version)\"     && export CHROMEDRIVER_RELEASE=\"$(echo $CHROME_VERSION | sed 's/^Google Chrome //')\" && export CHROMEDRIVER_RELEASE=${CHROMEDRIVER_RELEASE%%.*}     && CHROMEDRIVER_VERSION=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE_${CHROMEDRIVER_RELEASE})     && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip\"     && cd /tmp     && unzip chromedriver_linux64.zip     && rm -rf chromedriver_linux64.zip     && sudo mv chromedriver /usr/local/bin/chromedriver     && sudo chmod +x /usr/local/bin/chromedriver     && chromedriver --version" shape="box"];
  "sha256:300227bb150ea8291f22cbb2b9a560534fdc80498cec27f5530a7a0087e50738" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:0f047e7df334db33027b172e40c4c3ec768d266bedc53d3fec787b0bf20438e9" [label="sha256:0f047e7df334db33027b172e40c4c3ec768d266bedc53d3fec787b0bf20438e9" shape="plaintext"];
  "sha256:fa0a3c362dcea5bcd7104696937a7e412d4cf9f5418762faeb3286ab53bfa722" -> "sha256:11947df3d57c24ce85ea755cc97cecce725c0ce1dd99ad2b083d865c5100c422" [label=""];
  "sha256:11947df3d57c24ce85ea755cc97cecce725c0ce1dd99ad2b083d865c5100c422" -> "sha256:12e359a576e93692a409d56147579aaeb4ed8539c159cbf87ff46bbd16255e7e" [label=""];
  "sha256:12e359a576e93692a409d56147579aaeb4ed8539c159cbf87ff46bbd16255e7e" -> "sha256:7079be45f3a891801548a691d5c663779bee3b8b06eecadde6390086a993a218" [label=""];
  "sha256:7079be45f3a891801548a691d5c663779bee3b8b06eecadde6390086a993a218" -> "sha256:e24c7ad13011cb5819221ea97e2891992f53b9b680a9f55430a0809b607f2d40" [label=""];
  "sha256:e24c7ad13011cb5819221ea97e2891992f53b9b680a9f55430a0809b607f2d40" -> "sha256:aca8222d04fb4686266e702e7fa34e9845e4b0907376a66aad7caabefe7d79ad" [label=""];
  "sha256:aca8222d04fb4686266e702e7fa34e9845e4b0907376a66aad7caabefe7d79ad" -> "sha256:300227bb150ea8291f22cbb2b9a560534fdc80498cec27f5530a7a0087e50738" [label=""];
  "sha256:300227bb150ea8291f22cbb2b9a560534fdc80498cec27f5530a7a0087e50738" -> "sha256:0f047e7df334db33027b172e40c4c3ec768d266bedc53d3fec787b0bf20438e9" [label=""];
}
