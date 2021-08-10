[app/sources/189170889.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:06597a1c04ee75a366671727df31af6152a27dfa7587e480eaed5c4ade527d3c" [label="local://context" shape="ellipse"];
  "sha256:3f9d92da729e25045be075b1eb9d3d70aaed79a10f0662d02bad0cdffc6f5efd" [label="copy{src=/google-talkplugin_current_amd64.deb, dest=/src/google-talkplugin_current_amd64.deb}" shape="note"];
  "sha256:105cc944659225a9d36726459eaef4da7a26eed373f88976a4de37c8c72f7f37" [label="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" shape="ellipse"];
  "sha256:0cb0e7ba7f40c79aaa7b2e8c817e98a6d49f1df79c5d490fc3df146c19cca7f0" [label="copy{src=/google-chrome-stable_current_amd64.deb, dest=/src/google-chrome-stable_current_amd64.deb}" shape="note"];
  "sha256:9b17c75a109d9e5044564b0edabf445203e1d91c3fdaae07638cf9590475c355" [label="/bin/sh -c sed -i.bak 's/jessie main/jessie main contrib non-free/g' /etc/apt/sources.list &&     mkdir -p /usr/share/icons/hicolor &&     apt-get update && apt-get install -y     ca-certificates     gconf-service     libappindicator1     libasound2     libcanberra-gtk-module     libcurl3     libexif-dev     libgconf-2-4     libnspr4     libnss3     libpango1.0-0     libv4l-0     libxss1     libxtst6     wget     xdg-utils     --no-install-recommends &&     dpkg -i '/src/google-chrome-stable_current_amd64.deb' &&     apt-get install -y     pepperflashplugin-nonfree     --no-install-recommends &&     dpkg -i '/src/google-talkplugin_current_amd64.deb'" shape="box"];
  "sha256:9872bed7ca5d89255e69444ca72b2095ffe1e45eca4fe643ddf79d0559665696" [label="copy{src=/local.conf, dest=/etc/fonts/local.conf}" shape="note"];
  "sha256:719f4986a9cf326e9b0858e4f2d8558aa621899ab5e0c4379527d0b67f9fd630" [label="sha256:719f4986a9cf326e9b0858e4f2d8558aa621899ab5e0c4379527d0b67f9fd630" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:3f9d92da729e25045be075b1eb9d3d70aaed79a10f0662d02bad0cdffc6f5efd" [label=""];
  "sha256:06597a1c04ee75a366671727df31af6152a27dfa7587e480eaed5c4ade527d3c" -> "sha256:3f9d92da729e25045be075b1eb9d3d70aaed79a10f0662d02bad0cdffc6f5efd" [label=""];
  "sha256:3f9d92da729e25045be075b1eb9d3d70aaed79a10f0662d02bad0cdffc6f5efd" -> "sha256:0cb0e7ba7f40c79aaa7b2e8c817e98a6d49f1df79c5d490fc3df146c19cca7f0" [label=""];
  "sha256:105cc944659225a9d36726459eaef4da7a26eed373f88976a4de37c8c72f7f37" -> "sha256:0cb0e7ba7f40c79aaa7b2e8c817e98a6d49f1df79c5d490fc3df146c19cca7f0" [label=""];
  "sha256:0cb0e7ba7f40c79aaa7b2e8c817e98a6d49f1df79c5d490fc3df146c19cca7f0" -> "sha256:9b17c75a109d9e5044564b0edabf445203e1d91c3fdaae07638cf9590475c355" [label=""];
  "sha256:9b17c75a109d9e5044564b0edabf445203e1d91c3fdaae07638cf9590475c355" -> "sha256:9872bed7ca5d89255e69444ca72b2095ffe1e45eca4fe643ddf79d0559665696" [label=""];
  "sha256:06597a1c04ee75a366671727df31af6152a27dfa7587e480eaed5c4ade527d3c" -> "sha256:9872bed7ca5d89255e69444ca72b2095ffe1e45eca4fe643ddf79d0559665696" [label=""];
  "sha256:9872bed7ca5d89255e69444ca72b2095ffe1e45eca4fe643ddf79d0559665696" -> "sha256:719f4986a9cf326e9b0858e4f2d8558aa621899ab5e0c4379527d0b67f9fd630" [label=""];
}

