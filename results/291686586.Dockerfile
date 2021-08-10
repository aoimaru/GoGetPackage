[app/sources/291686586.Dockerfile]
digraph {
  "sha256:31951b2358ffd0e3ea5ab3a79cb4fbf35e46b2116166d3642d77da023e4071e3" [label="docker-image://docker.io/circleci/ruby:2.5.3-stretch-node@sha256:14c5fdff2a8f5212fcc2389da402bfbf2283f4bfafd4c96e45415feafab390ae" shape="ellipse"];
  "sha256:64c68658c8175149e92123f9ea67d972e90240d5ede4bc6847e33fde0d17f567" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi   && sudo apt-get install -y bzip2 libgconf-2-4 # for extracting firefox and running chrome, respectively" shape="box"];
  "sha256:3c05827d0a64100fe8c8c2f6a4e25eabf9775b3078b22b9c3bf64932f719d9f8" [label="/bin/sh -c FIREFOX_URL=\"https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US\"   && ACTUAL_URL=$(curl -Ls -o /dev/null -w %{url_effective} $FIREFOX_URL)   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.tar.bz2 $ACTUAL_URL   && sudo tar -xvjf /tmp/firefox.tar.bz2 -C /opt   && sudo ln -s /opt/firefox/firefox /usr/local/bin/firefox   && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.*   && firefox --version" shape="box"];
  "sha256:88221ab5b65b5b05367d0af536d924f57d387980b2c033dfe6bab138ad1ac2e6" [label="/bin/sh -c export GECKODRIVER_LATEST_RELEASE_URL=$(curl https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r \".assets[] | select(.name | test(\\\"linux64\\\")) | .browser_download_url\")      && curl --silent --show-error --location --fail --retry 3 --output /tmp/geckodriver_linux64.tar.gz \"$GECKODRIVER_LATEST_RELEASE_URL\"      && cd /tmp      && tar xf geckodriver_linux64.tar.gz      && rm -rf geckodriver_linux64.tar.gz      && sudo mv geckodriver /usr/local/bin/geckodriver      && sudo chmod +x /usr/local/bin/geckodriver      && geckodriver --version" shape="box"];
  "sha256:4791214740306a9d4a11a91a85c3efd18ca5ca96c1db2d7a085d9cba15872922" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:8ef1a28dd150ff2d1c7c718958be7207130d03e9b37f0008bc3f19744644f5da" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:cb105c7019c8d4ee67f5d12b5cf82c4dcfe105c46ff6c1cd4858c6c9e91556ba" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:d14084e689ac970066ecc05d15b086c01c74505745984af82e3929a5ca118a17" [label="sha256:d14084e689ac970066ecc05d15b086c01c74505745984af82e3929a5ca118a17" shape="plaintext"];
  "sha256:31951b2358ffd0e3ea5ab3a79cb4fbf35e46b2116166d3642d77da023e4071e3" -> "sha256:64c68658c8175149e92123f9ea67d972e90240d5ede4bc6847e33fde0d17f567" [label=""];
  "sha256:64c68658c8175149e92123f9ea67d972e90240d5ede4bc6847e33fde0d17f567" -> "sha256:3c05827d0a64100fe8c8c2f6a4e25eabf9775b3078b22b9c3bf64932f719d9f8" [label=""];
  "sha256:3c05827d0a64100fe8c8c2f6a4e25eabf9775b3078b22b9c3bf64932f719d9f8" -> "sha256:88221ab5b65b5b05367d0af536d924f57d387980b2c033dfe6bab138ad1ac2e6" [label=""];
  "sha256:88221ab5b65b5b05367d0af536d924f57d387980b2c033dfe6bab138ad1ac2e6" -> "sha256:4791214740306a9d4a11a91a85c3efd18ca5ca96c1db2d7a085d9cba15872922" [label=""];
  "sha256:4791214740306a9d4a11a91a85c3efd18ca5ca96c1db2d7a085d9cba15872922" -> "sha256:8ef1a28dd150ff2d1c7c718958be7207130d03e9b37f0008bc3f19744644f5da" [label=""];
  "sha256:8ef1a28dd150ff2d1c7c718958be7207130d03e9b37f0008bc3f19744644f5da" -> "sha256:cb105c7019c8d4ee67f5d12b5cf82c4dcfe105c46ff6c1cd4858c6c9e91556ba" [label=""];
  "sha256:cb105c7019c8d4ee67f5d12b5cf82c4dcfe105c46ff6c1cd4858c6c9e91556ba" -> "sha256:d14084e689ac970066ecc05d15b086c01c74505745984af82e3929a5ca118a17" [label=""];
}

