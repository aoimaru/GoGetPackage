[app/sources/291685560.Dockerfile]
digraph {
  "sha256:c6388f5f15fe66f9da0429486d04a475d10ec74c325d56267d7c0f5e9b03aa56" [label="docker-image://docker.io/circleci/php:7.3.5-cli-stretch@sha256:2cff307e1d5fa3ddd8a63994de8c6b073450ebb1bca98bfc7f4c58ba81ad0122" shape="ellipse"];
  "sha256:35ac6530af3f2f069579b4fbdec3d9768d4517591483ea994ce6cd6ae9fe0a3d" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"Acquire::Check-Valid-Until false;\" | sudo tee -a /etc/apt/apt.conf.d/10-nocheckvalid     && echo 'Package: *\\nPin: origin \"archive.debian.org\"\\nPin-Priority: 500' | sudo tee -a /etc/apt/preferences.d/10-archive-pin     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi   && sudo apt-get install -y bzip2 libgconf-2-4 # for extracting firefox and running chrome, respectively" shape="box"];
  "sha256:ed1f5491bae4299e2a0dcbb677c211c2ca66245db21d4b3b032f5ea28a97414d" [label="/bin/sh -c FIREFOX_URL=\"https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US\"   && ACTUAL_URL=$(curl -Ls -o /dev/null -w %{url_effective} $FIREFOX_URL)   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.tar.bz2 $ACTUAL_URL   && sudo tar -xvjf /tmp/firefox.tar.bz2 -C /opt   && sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox   && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.*   && firefox --version" shape="box"];
  "sha256:70c30204556b045b518f408cf297d5f41af668386253dac16daec0c790001530" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")      && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"      && cd /tmp      && tar xf geckodriver_linux64.tar.gz      && rm -rf geckodriver_linux64.tar.gz      && sudo mv geckodriver /usr/local/bin/geckodriver      && sudo chmod +x /usr/local/bin/geckodriver      && geckodriver --version" shape="box"];
  "sha256:43732860db10539f35b29aa5968f8b24ae11289825b9b10bee5fbc0243d2558a" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb     && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)      && rm -rf /tmp/google-chrome-stable_current_amd64.deb     && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'         \"/opt/google/chrome/google-chrome\"     && google-chrome --version" shape="box"];
  "sha256:38440711a5e0b69749580ab79aebbc1dab8d0ac41a9a8af4fea2ac669b635c65" [label="/bin/sh -c CHROME_VERSION=\"$(google-chrome --version)\"     && export CHROMEDRIVER_RELEASE=\"$(echo $CHROME_VERSION | sed 's/^Google Chrome //')\" && export CHROMEDRIVER_RELEASE=${CHROMEDRIVER_RELEASE%%.*}     && CHROMEDRIVER_VERSION=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE_${CHROMEDRIVER_RELEASE})     && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip\"     && cd /tmp     && unzip chromedriver_linux64.zip     && rm -rf chromedriver_linux64.zip     && sudo mv chromedriver /usr/local/bin/chromedriver     && sudo chmod +x /usr/local/bin/chromedriver     && chromedriver --version" shape="box"];
  "sha256:5ed94784cb2b8232a78c785813c213d35b5c9bf942185992309fbdc4f6f72aa7" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:1ef79ce861e122886957b7d1e1a73e8598743683bf4201c58fdd413ab49ac054" [label="sha256:1ef79ce861e122886957b7d1e1a73e8598743683bf4201c58fdd413ab49ac054" shape="plaintext"];
  "sha256:c6388f5f15fe66f9da0429486d04a475d10ec74c325d56267d7c0f5e9b03aa56" -> "sha256:35ac6530af3f2f069579b4fbdec3d9768d4517591483ea994ce6cd6ae9fe0a3d" [label=""];
  "sha256:35ac6530af3f2f069579b4fbdec3d9768d4517591483ea994ce6cd6ae9fe0a3d" -> "sha256:ed1f5491bae4299e2a0dcbb677c211c2ca66245db21d4b3b032f5ea28a97414d" [label=""];
  "sha256:ed1f5491bae4299e2a0dcbb677c211c2ca66245db21d4b3b032f5ea28a97414d" -> "sha256:70c30204556b045b518f408cf297d5f41af668386253dac16daec0c790001530" [label=""];
  "sha256:70c30204556b045b518f408cf297d5f41af668386253dac16daec0c790001530" -> "sha256:43732860db10539f35b29aa5968f8b24ae11289825b9b10bee5fbc0243d2558a" [label=""];
  "sha256:43732860db10539f35b29aa5968f8b24ae11289825b9b10bee5fbc0243d2558a" -> "sha256:38440711a5e0b69749580ab79aebbc1dab8d0ac41a9a8af4fea2ac669b635c65" [label=""];
  "sha256:38440711a5e0b69749580ab79aebbc1dab8d0ac41a9a8af4fea2ac669b635c65" -> "sha256:5ed94784cb2b8232a78c785813c213d35b5c9bf942185992309fbdc4f6f72aa7" [label=""];
  "sha256:5ed94784cb2b8232a78c785813c213d35b5c9bf942185992309fbdc4f6f72aa7" -> "sha256:1ef79ce861e122886957b7d1e1a73e8598743683bf4201c58fdd413ab49ac054" [label=""];
}

