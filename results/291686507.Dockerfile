[app/sources/291686507.Dockerfile]
digraph {
  "sha256:94ad0d920b7065a639ba3ab6801bccbd3dcd557ac80df1fb111ed0440151f40d" [label="docker-image://docker.io/circleci/ruby:2.3.8-jessie-node@sha256:ef2204e63dadf6e0dc01f4ca21f234296b02b8d7b8b01f9f5e0e4469e0032030" shape="ellipse"];
  "sha256:72e40b4819079c942cf5f46e8255230f2c6629428692c7d4aeb1fc7d2e36175b" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://archive.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"Acquire::Check-Valid-Until false;\" | sudo tee -a /etc/apt/apt.conf.d/10-nocheckvalid     && echo 'Package: *\\nPin: origin \"archive.debian.org\"\\nPin-Priority: 500' | sudo tee -a /etc/apt/preferences.d/10-archive-pin     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:f09b5b019cf2abe07c57c79271dca93d4d304ff9ae448627069eb305e7161a4a" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:8766c5c8a061d0cdae9a60cf31497c8bb2954121bec9c828c4e90926459d7a88" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:1f8eb2bf264dc29e8602876014b9733008faaf6b8c3bbbe3d228e94e6e93c902" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb     && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)      && rm -rf /tmp/google-chrome-stable_current_amd64.deb     && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'         \"/opt/google/chrome/google-chrome\"     && google-chrome --version" shape="box"];
  "sha256:db7811c51d417f7a80730d9006456a079c9ffadd423f91bfb8c66a1c6806c9e7" [label="/bin/sh -c CHROME_VERSION=\"$(google-chrome --version)\"     && export CHROMEDRIVER_RELEASE=\"$(echo $CHROME_VERSION | sed 's/^Google Chrome //')\" && export CHROMEDRIVER_RELEASE=${CHROMEDRIVER_RELEASE%%.*}     && CHROMEDRIVER_VERSION=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE_${CHROMEDRIVER_RELEASE})     && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip\"     && cd /tmp     && unzip chromedriver_linux64.zip     && rm -rf chromedriver_linux64.zip     && sudo mv chromedriver /usr/local/bin/chromedriver     && sudo chmod +x /usr/local/bin/chromedriver     && chromedriver --version" shape="box"];
  "sha256:79f089995719d076608ecb6c0215aaf42dec49fd3c80bee4eefcab7f0c4bc3a3" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:796f5514444805fc2a576e08397074fc6b1f456fc7db8ad49350aa72d2e0a3bc" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:142dd2382a1460af5e6f790e3910bb1c20a7b7885134abefbb9b0c49a3cdfb89" [label="sha256:142dd2382a1460af5e6f790e3910bb1c20a7b7885134abefbb9b0c49a3cdfb89" shape="plaintext"];
  "sha256:94ad0d920b7065a639ba3ab6801bccbd3dcd557ac80df1fb111ed0440151f40d" -> "sha256:72e40b4819079c942cf5f46e8255230f2c6629428692c7d4aeb1fc7d2e36175b" [label=""];
  "sha256:72e40b4819079c942cf5f46e8255230f2c6629428692c7d4aeb1fc7d2e36175b" -> "sha256:f09b5b019cf2abe07c57c79271dca93d4d304ff9ae448627069eb305e7161a4a" [label=""];
  "sha256:f09b5b019cf2abe07c57c79271dca93d4d304ff9ae448627069eb305e7161a4a" -> "sha256:8766c5c8a061d0cdae9a60cf31497c8bb2954121bec9c828c4e90926459d7a88" [label=""];
  "sha256:8766c5c8a061d0cdae9a60cf31497c8bb2954121bec9c828c4e90926459d7a88" -> "sha256:1f8eb2bf264dc29e8602876014b9733008faaf6b8c3bbbe3d228e94e6e93c902" [label=""];
  "sha256:1f8eb2bf264dc29e8602876014b9733008faaf6b8c3bbbe3d228e94e6e93c902" -> "sha256:db7811c51d417f7a80730d9006456a079c9ffadd423f91bfb8c66a1c6806c9e7" [label=""];
  "sha256:db7811c51d417f7a80730d9006456a079c9ffadd423f91bfb8c66a1c6806c9e7" -> "sha256:79f089995719d076608ecb6c0215aaf42dec49fd3c80bee4eefcab7f0c4bc3a3" [label=""];
  "sha256:79f089995719d076608ecb6c0215aaf42dec49fd3c80bee4eefcab7f0c4bc3a3" -> "sha256:796f5514444805fc2a576e08397074fc6b1f456fc7db8ad49350aa72d2e0a3bc" [label=""];
  "sha256:796f5514444805fc2a576e08397074fc6b1f456fc7db8ad49350aa72d2e0a3bc" -> "sha256:142dd2382a1460af5e6f790e3910bb1c20a7b7885134abefbb9b0c49a3cdfb89" [label=""];
}

