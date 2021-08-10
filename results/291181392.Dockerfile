[app/sources/291181392.Dockerfile]
digraph {
  "sha256:f68292581dd2d025d12dbfc9f85d8324415154d7793ee0af05219aca6e52b275" [label="docker-image://docker.io/circleci/node:10.15.1-stretch@sha256:08ef3e8445d31a610ad3ae3395d7406094ee9c5bb23faf4e2cf80641b9703a1f" shape="ellipse"];
  "sha256:faaa8abe8d88fe48ff9d8226fc69ee011175278804f7e8f895cd856ddb523278" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:e0288cffb83a875dc6d5a816c081ba89d8e8ed97d8eff05e0809c06f1b4b3d7c" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:842d2c39be1eac96ecc3f50d675a2068ecea54f64c5102fac42fa427d45933ad" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:63191b210652419a7d6697d8f9adb95487891d78af2163e2e55f5b08d6997f31" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:8e5f04daa259124ef0f480c7382f1e9f34a1b7d29174f3cba93b93f84a47b7d6" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:af18afaf0dc62d565a05b6ef545c19878c795261aea8854b527dbbad907ebb42" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:27770f51c8641512fb75210dbbecccb49d3ff0f60d10bd1f0b994ce6ce885152" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:7f85e2d99f4c977174f977857c38fd48796aacd0a3016a9db567229b7d04600e" [label="sha256:7f85e2d99f4c977174f977857c38fd48796aacd0a3016a9db567229b7d04600e" shape="plaintext"];
  "sha256:f68292581dd2d025d12dbfc9f85d8324415154d7793ee0af05219aca6e52b275" -> "sha256:faaa8abe8d88fe48ff9d8226fc69ee011175278804f7e8f895cd856ddb523278" [label=""];
  "sha256:faaa8abe8d88fe48ff9d8226fc69ee011175278804f7e8f895cd856ddb523278" -> "sha256:e0288cffb83a875dc6d5a816c081ba89d8e8ed97d8eff05e0809c06f1b4b3d7c" [label=""];
  "sha256:e0288cffb83a875dc6d5a816c081ba89d8e8ed97d8eff05e0809c06f1b4b3d7c" -> "sha256:842d2c39be1eac96ecc3f50d675a2068ecea54f64c5102fac42fa427d45933ad" [label=""];
  "sha256:842d2c39be1eac96ecc3f50d675a2068ecea54f64c5102fac42fa427d45933ad" -> "sha256:63191b210652419a7d6697d8f9adb95487891d78af2163e2e55f5b08d6997f31" [label=""];
  "sha256:63191b210652419a7d6697d8f9adb95487891d78af2163e2e55f5b08d6997f31" -> "sha256:8e5f04daa259124ef0f480c7382f1e9f34a1b7d29174f3cba93b93f84a47b7d6" [label=""];
  "sha256:8e5f04daa259124ef0f480c7382f1e9f34a1b7d29174f3cba93b93f84a47b7d6" -> "sha256:af18afaf0dc62d565a05b6ef545c19878c795261aea8854b527dbbad907ebb42" [label=""];
  "sha256:af18afaf0dc62d565a05b6ef545c19878c795261aea8854b527dbbad907ebb42" -> "sha256:27770f51c8641512fb75210dbbecccb49d3ff0f60d10bd1f0b994ce6ce885152" [label=""];
  "sha256:27770f51c8641512fb75210dbbecccb49d3ff0f60d10bd1f0b994ce6ce885152" -> "sha256:7f85e2d99f4c977174f977857c38fd48796aacd0a3016a9db567229b7d04600e" [label=""];
}
