[app/sources/256631807.Dockerfile]
digraph {
  "sha256:9f0451028f28e4b2e279e749349b55373c71a7f788930f28238d6bd6dd61f11a" [label="local://context" shape="ellipse"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:1917c6a423e2de15472f3ac19d78106876430f85e1b75dd79c84608e665d8c55" [label="/bin/sh -c apt-get update -y  &&     apt-get upgrade -y &&     apt-get install -y  wget                                                    libboost-date-time1.62.0                                libboost-filesystem1.62.0                               libboost-program-options1.62.0                          libboost-system1.62.0                                   libminiupnpc10               &&     cd /tmp &&     wget https://github.com/PurpleI2P/i2pd/releases/download/2.16.0/i2pd_2.16.0-1stretch1_amd64.deb &&     dpkg -i /tmp/i2pd_2.16.0-1stretch1_amd64.deb &&     apt-get remove -y wget &&     apt-get autoremove -y &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*  /tmp/* &&     usermod -s /bin/bash i2pd" shape="box"];
  "sha256:6cb889a7627e79c7f3578ac5157fd5d645e3499aa46cd93843d5ea7e93ab68b8" [label="copy{src=/i2pd.conf, dest=/etc/i2pd/i2pd.conf}" shape="note"];
  "sha256:ffda5d0f820524a6851c3ffea9c01bbac767242f3c161702d2500d0abbf521c2" [label="copy{src=/subscriptions.txt, dest=/etc/i2pd/subscriptions.txt}" shape="note"];
  "sha256:ebe9fd3c2e61cfb8f5ac9015323a30ad52a2ecbf0a753209e9359b737f9c375f" [label="sha256:ebe9fd3c2e61cfb8f5ac9015323a30ad52a2ecbf0a753209e9359b737f9c375f" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:1917c6a423e2de15472f3ac19d78106876430f85e1b75dd79c84608e665d8c55" [label=""];
  "sha256:1917c6a423e2de15472f3ac19d78106876430f85e1b75dd79c84608e665d8c55" -> "sha256:6cb889a7627e79c7f3578ac5157fd5d645e3499aa46cd93843d5ea7e93ab68b8" [label=""];
  "sha256:9f0451028f28e4b2e279e749349b55373c71a7f788930f28238d6bd6dd61f11a" -> "sha256:6cb889a7627e79c7f3578ac5157fd5d645e3499aa46cd93843d5ea7e93ab68b8" [label=""];
  "sha256:6cb889a7627e79c7f3578ac5157fd5d645e3499aa46cd93843d5ea7e93ab68b8" -> "sha256:ffda5d0f820524a6851c3ffea9c01bbac767242f3c161702d2500d0abbf521c2" [label=""];
  "sha256:9f0451028f28e4b2e279e749349b55373c71a7f788930f28238d6bd6dd61f11a" -> "sha256:ffda5d0f820524a6851c3ffea9c01bbac767242f3c161702d2500d0abbf521c2" [label=""];
  "sha256:ffda5d0f820524a6851c3ffea9c01bbac767242f3c161702d2500d0abbf521c2" -> "sha256:ebe9fd3c2e61cfb8f5ac9015323a30ad52a2ecbf0a753209e9359b737f9c375f" [label=""];
}

