[app/sources/291684757.Dockerfile]
digraph {
  "sha256:550fc1db9bf933a03d17967b8ee2e202cab1eb405e2701c8e6375a5bf278059e" [label="docker-image://docker.io/circleci/php:7.1.25-cli-stretch-node@sha256:542b17cdee21a1de9a54172d2f2c03bf096d67ab52a9514c634efec72e16aa8c" shape="ellipse"];
  "sha256:d17ab223188f73ed5ce8ab29dbbc9fb92235cac4cdf876be401cb1ff36c7c56c" [label="/bin/sh -c if grep -q Debian /etc/os-release && grep -q jessie /etc/os-release; then     echo \"deb http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://http.us.debian.org/debian/ jessie-backports main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-get update; sudo apt-get install -y -t jessie-backports openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; elif grep -q Ubuntu /etc/os-release && grep -q Trusty /etc/os-release; then     echo \"deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && echo \"deb-src http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main\" | sudo tee -a /etc/apt/sources.list     && sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key DA1A4A13543B466853BAF164EB9B1D8886F44E2A     && sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; else     sudo apt-get update; sudo apt-get install -y openjdk-8-jre openjdk-8-jre-headless openjdk-8-jdk openjdk-8-jdk-headless   ; fi" shape="box"];
  "sha256:71ac3a73e3a7e87c41bc64723b3e46e3e1163a5c113a58656c376c7b9e55a996" [label="/bin/sh -c PHANTOMJS_URL=\"https://circle-downloads.s3.amazonaws.com/circleci-images/cache/linux-amd64/phantomjs-latest.tar.bz2\"   && sudo apt-get install libfontconfig   && curl --silent --show-error --location --fail --retry 3 --output /tmp/phantomjs.tar.bz2 ${PHANTOMJS_URL}   && tar -x -C /tmp -f /tmp/phantomjs.tar.bz2   && sudo mv /tmp/phantomjs-*-linux-x86_64/bin/phantomjs /usr/local/bin   && rm -rf /tmp/phantomjs.tar.bz2 /tmp/phantomjs-*   && phantomjs --version" shape="box"];
  "sha256:d0fd821a02b77de7530144393335b0da69173153d26eb9f1ae253a58d621e0af" [label="/bin/sh -c FIREFOX_URL=\"https://s3.amazonaws.com/circle-downloads/firefox-mozilla-build_47.0.1-0ubuntu1_amd64.deb\"   && curl --silent --show-error --location --fail --retry 3 --output /tmp/firefox.deb $FIREFOX_URL   && echo 'ef016febe5ec4eaf7d455a34579834bcde7703cb0818c80044f4d148df8473bb  /tmp/firefox.deb' | sha256sum -c   && sudo dpkg -i /tmp/firefox.deb || sudo apt-get -f install    && sudo apt-get install -y libgtk3.0-cil-dev libasound2 libasound2 libdbus-glib-1-2 libdbus-1-3   && rm -rf /tmp/firefox.deb   && firefox --version" shape="box"];
  "sha256:40eba7cccb0cf55b5390509d38c5079dacaa99e58525cd3693e9a55a0de153f0" [label="/bin/sh -c curl --silent --show-error --location --fail --retry 3 --output /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb       && (sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb || sudo apt-get -fy install)        && rm -rf /tmp/google-chrome-stable_current_amd64.deb       && sudo sed -i 's|HERE/chrome\"|HERE/chrome\" --disable-setuid-sandbox --no-sandbox|g'            \"/opt/google/chrome/google-chrome\"       && google-chrome --version" shape="box"];
  "sha256:3eb6140f15deb355b84a34fa2d7cef4236257ec2b29cef1123599979ffdedbc3" [label="/bin/sh -c export CHROMEDRIVER_RELEASE=$(curl --location --fail --retry 3 http://chromedriver.storage.googleapis.com/LATEST_RELEASE)       && curl --silent --show-error --location --fail --retry 3 --output /tmp/chromedriver_linux64.zip \"http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_RELEASE/chromedriver_linux64.zip\"       && cd /tmp       && unzip chromedriver_linux64.zip       && rm -rf chromedriver_linux64.zip       && sudo mv chromedriver /usr/local/bin/chromedriver       && sudo chmod +x /usr/local/bin/chromedriver       && chromedriver --version" shape="box"];
  "sha256:427e8c0fb285dd656da051e05b44e4d85b3487612dadf989ba41219136163872" [label="/bin/sh -c sudo apt-get install -y libgconf-2-4" shape="box"];
  "sha256:c16359536fdbb863eb32e5cc174e473fc77affef7f4016d2937bababb3b7c014" [label="/bin/sh -c printf '#!/bin/sh\\nXvfb :99 -screen 0 1280x1024x24 &\\nexec \"$@\"\\n' > /tmp/entrypoint   && chmod +x /tmp/entrypoint         && sudo mv /tmp/entrypoint /docker-entrypoint.sh" shape="box"];
  "sha256:3d95886087fd95ff29b884eb3f981b797eb1822bb95239fe03d7dc3cb61b6a80" [label="sha256:3d95886087fd95ff29b884eb3f981b797eb1822bb95239fe03d7dc3cb61b6a80" shape="plaintext"];
  "sha256:550fc1db9bf933a03d17967b8ee2e202cab1eb405e2701c8e6375a5bf278059e" -> "sha256:d17ab223188f73ed5ce8ab29dbbc9fb92235cac4cdf876be401cb1ff36c7c56c" [label=""];
  "sha256:d17ab223188f73ed5ce8ab29dbbc9fb92235cac4cdf876be401cb1ff36c7c56c" -> "sha256:71ac3a73e3a7e87c41bc64723b3e46e3e1163a5c113a58656c376c7b9e55a996" [label=""];
  "sha256:71ac3a73e3a7e87c41bc64723b3e46e3e1163a5c113a58656c376c7b9e55a996" -> "sha256:d0fd821a02b77de7530144393335b0da69173153d26eb9f1ae253a58d621e0af" [label=""];
  "sha256:d0fd821a02b77de7530144393335b0da69173153d26eb9f1ae253a58d621e0af" -> "sha256:40eba7cccb0cf55b5390509d38c5079dacaa99e58525cd3693e9a55a0de153f0" [label=""];
  "sha256:40eba7cccb0cf55b5390509d38c5079dacaa99e58525cd3693e9a55a0de153f0" -> "sha256:3eb6140f15deb355b84a34fa2d7cef4236257ec2b29cef1123599979ffdedbc3" [label=""];
  "sha256:3eb6140f15deb355b84a34fa2d7cef4236257ec2b29cef1123599979ffdedbc3" -> "sha256:427e8c0fb285dd656da051e05b44e4d85b3487612dadf989ba41219136163872" [label=""];
  "sha256:427e8c0fb285dd656da051e05b44e4d85b3487612dadf989ba41219136163872" -> "sha256:c16359536fdbb863eb32e5cc174e473fc77affef7f4016d2937bababb3b7c014" [label=""];
  "sha256:c16359536fdbb863eb32e5cc174e473fc77affef7f4016d2937bababb3b7c014" -> "sha256:3d95886087fd95ff29b884eb3f981b797eb1822bb95239fe03d7dc3cb61b6a80" [label=""];
}
