[app/sources/301280595.Dockerfile]
digraph {
  "sha256:7f82660e6249c86b52de92f15b3f5c39b545b2c2b2648d2f62dc23079c7fefbc" [label="docker-image://docker.io/cypress/base:6" shape="ellipse"];
  "sha256:f3f306addeff5cabb0177916e6ad19650306122ace0aaf187c92a3a905305592" [label="/bin/sh -c node --version" shape="box"];
  "sha256:834d04ad6e04a2a3b043f9fb50c89784c38481c48fa5a86d426010b538c46bea" [label="/bin/sh -c echo \"force new chrome here\"" shape="box"];
  "sha256:07fd8f24a3e0e21938f9b6ca643f6bddb0e497d5f08fea73c8a73dfe450c6176" [label="/bin/sh -c wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - &&   echo \"deb http://dl.google.com/linux/chrome/deb/ stable main\" > /etc/apt/sources.list.d/google.list &&   apt-get update &&   apt-get install -y dbus-x11 google-chrome-stable &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:62671793ec646dabfb04ebcc69027b677bc4576e8b5ad482fb7eb32ca1735859" [label="/bin/sh -c wget --no-verbose -O /tmp/firefox.tar.bz2 https://download-installer.cdn.mozilla.net/pub/firefox/releases/$FIREFOX_VERSION/linux-x86_64/en-US/firefox-$FIREFOX_VERSION.tar.bz2   && tar -C /opt -xjf /tmp/firefox.tar.bz2   && rm /tmp/firefox.tar.bz2   && ln -fs /opt/firefox/firefox /usr/bin/firefox" shape="box"];
  "sha256:f2d8d662c6b70b9c64362420e15159064b07ababf1ce4c6b630c1a6bd4d521b7" [label="/bin/sh -c apt-get update && apt-get install -y zip" shape="box"];
  "sha256:7fe716827ed49df2d2f95ca8c77340faa3b4c4378f065fae3bde1bce7358c989" [label="/bin/sh -c google-chrome --version" shape="box"];
  "sha256:945fd3d031ff4ad423d2d944475754bb2eab521cd9498678b30282d62b02692f" [label="/bin/sh -c firefox --version" shape="box"];
  "sha256:8ac87eccebcded3128f22d677bac4976d32521f933778ab958869417daa7d54b" [label="/bin/sh -c zip --version" shape="box"];
  "sha256:6a6d443fccd305c2aec59de2f9ad3579b1b531b221d7f1df078e24aafe24a6bd" [label="/bin/sh -c git --version" shape="box"];
  "sha256:67505e10ca59c4d18a27792a8e77c0dbc2fd4f91979b30853ac32ed82366306c" [label="sha256:67505e10ca59c4d18a27792a8e77c0dbc2fd4f91979b30853ac32ed82366306c" shape="plaintext"];
  "sha256:7f82660e6249c86b52de92f15b3f5c39b545b2c2b2648d2f62dc23079c7fefbc" -> "sha256:f3f306addeff5cabb0177916e6ad19650306122ace0aaf187c92a3a905305592" [label=""];
  "sha256:f3f306addeff5cabb0177916e6ad19650306122ace0aaf187c92a3a905305592" -> "sha256:834d04ad6e04a2a3b043f9fb50c89784c38481c48fa5a86d426010b538c46bea" [label=""];
  "sha256:834d04ad6e04a2a3b043f9fb50c89784c38481c48fa5a86d426010b538c46bea" -> "sha256:07fd8f24a3e0e21938f9b6ca643f6bddb0e497d5f08fea73c8a73dfe450c6176" [label=""];
  "sha256:07fd8f24a3e0e21938f9b6ca643f6bddb0e497d5f08fea73c8a73dfe450c6176" -> "sha256:62671793ec646dabfb04ebcc69027b677bc4576e8b5ad482fb7eb32ca1735859" [label=""];
  "sha256:62671793ec646dabfb04ebcc69027b677bc4576e8b5ad482fb7eb32ca1735859" -> "sha256:f2d8d662c6b70b9c64362420e15159064b07ababf1ce4c6b630c1a6bd4d521b7" [label=""];
  "sha256:f2d8d662c6b70b9c64362420e15159064b07ababf1ce4c6b630c1a6bd4d521b7" -> "sha256:7fe716827ed49df2d2f95ca8c77340faa3b4c4378f065fae3bde1bce7358c989" [label=""];
  "sha256:7fe716827ed49df2d2f95ca8c77340faa3b4c4378f065fae3bde1bce7358c989" -> "sha256:945fd3d031ff4ad423d2d944475754bb2eab521cd9498678b30282d62b02692f" [label=""];
  "sha256:945fd3d031ff4ad423d2d944475754bb2eab521cd9498678b30282d62b02692f" -> "sha256:8ac87eccebcded3128f22d677bac4976d32521f933778ab958869417daa7d54b" [label=""];
  "sha256:8ac87eccebcded3128f22d677bac4976d32521f933778ab958869417daa7d54b" -> "sha256:6a6d443fccd305c2aec59de2f9ad3579b1b531b221d7f1df078e24aafe24a6bd" [label=""];
  "sha256:6a6d443fccd305c2aec59de2f9ad3579b1b531b221d7f1df078e24aafe24a6bd" -> "sha256:67505e10ca59c4d18a27792a8e77c0dbc2fd4f91979b30853ac32ed82366306c" [label=""];
}

