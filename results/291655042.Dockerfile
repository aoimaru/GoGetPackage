[app/sources/291655042.Dockerfile]
digraph {
  "sha256:764d67eb8ac3e5e56578e83da9e9524f2242b223bd34dbedf2aa70b18aefe47c" [label="docker-image://docker.io/minium/selenium-grid-extras-base:2.0.4" shape="ellipse"];
  "sha256:0c3cc3b8bc6b22b2a7241c710294edab25d4566b2343e0c3d4267343b55672c1" [label="/bin/sh -c wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -   && echo \"deb http://dl.google.com/linux/chrome/deb/ stable main\" >> /etc/apt/sources.list.d/google-chrome.list   && apt-get update -qqy   && apt-get -qqy install ${CHROME_VERSION:-google-chrome-stable}   && rm /etc/apt/sources.list.d/google-chrome.list   && rm -rf /var/lib/apt/lists/* /var/cache/apt/*" shape="box"];
  "sha256:208519adb25960c6a0e5c87d672fecc813b43ad3cbdb401de8098c2923ee2873" [label="local://context" shape="ellipse"];
  "sha256:8b2a97a0619949f1e6a22792391feb654a4f84c726410d0319763b74cf06c6ca" [label="copy{src=/chrome_launcher.sh, dest=/opt/google/chrome/google-chrome}" shape="note"];
  "sha256:44fb65c3a4da250d48de50e058eb0516a3481cf3b2de4ba7ac21e03f575bb250" [label="/bin/sh -c chmod +x /opt/google/chrome/google-chrome" shape="box"];
  "sha256:bb31eb76f7635ebb0997beb6e8647cc88ea2df41f54eb56cc1199f617e732f68" [label="copy{src=/node_chrome.json, dest=/node_5555.json}" shape="note"];
  "sha256:b5774c0e3bcd182cd9ac34f59854d741b5823e1838569b83b5f21bf6f928b380" [label="copy{src=/selenium_grid_extras_config_chrome.json, dest=/selenium_grid_extras_config.json}" shape="note"];
  "sha256:e9477cb0f7c91e1625322f199dff5d3999215ed6bf408d0d09700b3771c2c6cd" [label="sha256:e9477cb0f7c91e1625322f199dff5d3999215ed6bf408d0d09700b3771c2c6cd" shape="plaintext"];
  "sha256:764d67eb8ac3e5e56578e83da9e9524f2242b223bd34dbedf2aa70b18aefe47c" -> "sha256:0c3cc3b8bc6b22b2a7241c710294edab25d4566b2343e0c3d4267343b55672c1" [label=""];
  "sha256:0c3cc3b8bc6b22b2a7241c710294edab25d4566b2343e0c3d4267343b55672c1" -> "sha256:8b2a97a0619949f1e6a22792391feb654a4f84c726410d0319763b74cf06c6ca" [label=""];
  "sha256:208519adb25960c6a0e5c87d672fecc813b43ad3cbdb401de8098c2923ee2873" -> "sha256:8b2a97a0619949f1e6a22792391feb654a4f84c726410d0319763b74cf06c6ca" [label=""];
  "sha256:8b2a97a0619949f1e6a22792391feb654a4f84c726410d0319763b74cf06c6ca" -> "sha256:44fb65c3a4da250d48de50e058eb0516a3481cf3b2de4ba7ac21e03f575bb250" [label=""];
  "sha256:44fb65c3a4da250d48de50e058eb0516a3481cf3b2de4ba7ac21e03f575bb250" -> "sha256:bb31eb76f7635ebb0997beb6e8647cc88ea2df41f54eb56cc1199f617e732f68" [label=""];
  "sha256:208519adb25960c6a0e5c87d672fecc813b43ad3cbdb401de8098c2923ee2873" -> "sha256:bb31eb76f7635ebb0997beb6e8647cc88ea2df41f54eb56cc1199f617e732f68" [label=""];
  "sha256:bb31eb76f7635ebb0997beb6e8647cc88ea2df41f54eb56cc1199f617e732f68" -> "sha256:b5774c0e3bcd182cd9ac34f59854d741b5823e1838569b83b5f21bf6f928b380" [label=""];
  "sha256:208519adb25960c6a0e5c87d672fecc813b43ad3cbdb401de8098c2923ee2873" -> "sha256:b5774c0e3bcd182cd9ac34f59854d741b5823e1838569b83b5f21bf6f928b380" [label=""];
  "sha256:b5774c0e3bcd182cd9ac34f59854d741b5823e1838569b83b5f21bf6f928b380" -> "sha256:e9477cb0f7c91e1625322f199dff5d3999215ed6bf408d0d09700b3771c2c6cd" [label=""];
}

