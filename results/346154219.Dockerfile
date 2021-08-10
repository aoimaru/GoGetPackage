[app/sources/346154219.Dockerfile]
digraph {
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:242dc3c19a9602e31a025250c129809ce0286154d10f14844bc744d7fe6c91c5" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_10.x | bash -" shape="box"];
  "sha256:ae06f1638df9d6d3d761bf3c0ca7defdef95db727bc0fddcf432c0b6f7ebf636" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   apt-utils   xvfb   libxi6   libgconf-2-4   netcat   wget   gcc   g++   make   unzip   nodejs   openjdk-8-jre-headless" shape="box"];
  "sha256:84a0a0f0699953a3fa9636e81f932c4c5c77c1cd126c8b937463b8d28a9eb9ea" [label="/bin/sh -c curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add   && echo \"deb http://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google-chrome.list   && apt-get -y update   && apt-get -y install google-chrome-stable   && rm -rf /var/lib/apt/lists/* /var/cache/apt/*" shape="box"];
  "sha256:1a95522ff063d628ed129a0e2f1862ed44bac4768cbffac3c12fef58549c8d6a" [label="/bin/sh -c wget -N http://chromedriver.storage.googleapis.com/$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE)/chromedriver_linux64.zip -P ~/   && unzip ~/chromedriver_linux64.zip -d ~/   && rm ~/chromedriver_linux64.zip   && mv -f ~/chromedriver /usr/local/bin/chromedriver   && chown root:root /usr/local/bin/chromedriver   && chmod 0755 /usr/local/bin/chromedriver" shape="box"];
  "sha256:e096e924069433856567ba91326e0c7254bfad361511ee605ac8a6395d968af5" [label="/bin/sh -c wget -N http://selenium-release.storage.googleapis.com/3.9/selenium-server-standalone-3.9.0.jar -P ~/   && mv -f ~/selenium-server-standalone-3.9.0.jar /usr/local/bin/selenium-server-standalone.jar   && chown root:root /usr/local/bin/selenium-server-standalone.jar   && chmod 0755 /usr/local/bin/selenium-server-standalone.jar" shape="box"];
  "sha256:d7e526f5b28766e702800242e55e31dd1685a9529616ae466b1735d33dbb00cc" [label="mkdir{path=/app}" shape="note"];
  "sha256:740eb007043d4c5ebe41f25d49cc042badd0658e4659cf340a1e7541b5ac2f70" [label="local://context" shape="ellipse"];
  "sha256:c406d8041b9cd23c4368fef93222513370c169722ddc3683ce6df9abf1c1da2b" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:4105e126ccd66e19ac9a095846c7610f8008589c88acca71f4ed0f1722696238" [label="/bin/sh -c cp config/database.yml.sample config/database.yml" shape="box"];
  "sha256:13a481abdcff9c4a9aa5fa0b77a9222e995e94166e0bc3fe058268d4d0e1c1dc" [label="/bin/sh -c gem install foreman" shape="box"];
  "sha256:20bb5b3cdaee9222349e8767692952321692157fdd16406ac03bff310b37f03e" [label="/bin/sh -c bundle install -j 4" shape="box"];
  "sha256:c1bb33f6acd871dd500297f6fb4ef7c099525eec7f9a2086c0121909154a0a00" [label="/bin/sh -c rake assets:precompile" shape="box"];
  "sha256:225165249e65403ce9c3b4bcee89a94447b7e46829fc3901039dbf6114b0dd5a" [label="sha256:225165249e65403ce9c3b4bcee89a94447b7e46829fc3901039dbf6114b0dd5a" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:242dc3c19a9602e31a025250c129809ce0286154d10f14844bc744d7fe6c91c5" [label=""];
  "sha256:242dc3c19a9602e31a025250c129809ce0286154d10f14844bc744d7fe6c91c5" -> "sha256:ae06f1638df9d6d3d761bf3c0ca7defdef95db727bc0fddcf432c0b6f7ebf636" [label=""];
  "sha256:ae06f1638df9d6d3d761bf3c0ca7defdef95db727bc0fddcf432c0b6f7ebf636" -> "sha256:84a0a0f0699953a3fa9636e81f932c4c5c77c1cd126c8b937463b8d28a9eb9ea" [label=""];
  "sha256:84a0a0f0699953a3fa9636e81f932c4c5c77c1cd126c8b937463b8d28a9eb9ea" -> "sha256:1a95522ff063d628ed129a0e2f1862ed44bac4768cbffac3c12fef58549c8d6a" [label=""];
  "sha256:1a95522ff063d628ed129a0e2f1862ed44bac4768cbffac3c12fef58549c8d6a" -> "sha256:e096e924069433856567ba91326e0c7254bfad361511ee605ac8a6395d968af5" [label=""];
  "sha256:e096e924069433856567ba91326e0c7254bfad361511ee605ac8a6395d968af5" -> "sha256:d7e526f5b28766e702800242e55e31dd1685a9529616ae466b1735d33dbb00cc" [label=""];
  "sha256:d7e526f5b28766e702800242e55e31dd1685a9529616ae466b1735d33dbb00cc" -> "sha256:c406d8041b9cd23c4368fef93222513370c169722ddc3683ce6df9abf1c1da2b" [label=""];
  "sha256:740eb007043d4c5ebe41f25d49cc042badd0658e4659cf340a1e7541b5ac2f70" -> "sha256:c406d8041b9cd23c4368fef93222513370c169722ddc3683ce6df9abf1c1da2b" [label=""];
  "sha256:c406d8041b9cd23c4368fef93222513370c169722ddc3683ce6df9abf1c1da2b" -> "sha256:4105e126ccd66e19ac9a095846c7610f8008589c88acca71f4ed0f1722696238" [label=""];
  "sha256:4105e126ccd66e19ac9a095846c7610f8008589c88acca71f4ed0f1722696238" -> "sha256:13a481abdcff9c4a9aa5fa0b77a9222e995e94166e0bc3fe058268d4d0e1c1dc" [label=""];
  "sha256:13a481abdcff9c4a9aa5fa0b77a9222e995e94166e0bc3fe058268d4d0e1c1dc" -> "sha256:20bb5b3cdaee9222349e8767692952321692157fdd16406ac03bff310b37f03e" [label=""];
  "sha256:20bb5b3cdaee9222349e8767692952321692157fdd16406ac03bff310b37f03e" -> "sha256:c1bb33f6acd871dd500297f6fb4ef7c099525eec7f9a2086c0121909154a0a00" [label=""];
  "sha256:c1bb33f6acd871dd500297f6fb4ef7c099525eec7f9a2086c0121909154a0a00" -> "sha256:225165249e65403ce9c3b4bcee89a94447b7e46829fc3901039dbf6114b0dd5a" [label=""];
}

