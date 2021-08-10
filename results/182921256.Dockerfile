[app/sources/182921256.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:aa9409d1bdd158ecd25c654a319e65a1a73ee909bac91cab79c54d2d6815d69f" [label="/bin/sh -c apt-get update && apt-get install -y wget unzip && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - &&   echo \"deb http://dl.google.com/linux/chrome/deb/ stable main\" > /etc/apt/sources.list.d/google-chrome.list && apt-get update && apt-get install -y ca-certificates\tlibgl1-mesa-dri xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic xvfb --no-install-recommends && apt-get purge -y wget unzip && apt-get install -y google-chrome-stable && apt-get clean autoclean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:006dc025295f5d2651484a4d67471091b71ebf918ee7c1cf34e5d9ad14d1e201" [label="local://context" shape="ellipse"];
  "sha256:d3a634464e387775b709b8ba5c6388f9f27697c40b8eb29c2fccd4494036800e" [label="copy{src=/scripts, dest=/home/root/scripts}" shape="note"];
  "sha256:e26d48db366f696988ec4291826ecee3b52caede6ba49be94079b54a80467309" [label="sha256:e26d48db366f696988ec4291826ecee3b52caede6ba49be94079b54a80467309" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:aa9409d1bdd158ecd25c654a319e65a1a73ee909bac91cab79c54d2d6815d69f" [label=""];
  "sha256:aa9409d1bdd158ecd25c654a319e65a1a73ee909bac91cab79c54d2d6815d69f" -> "sha256:d3a634464e387775b709b8ba5c6388f9f27697c40b8eb29c2fccd4494036800e" [label=""];
  "sha256:006dc025295f5d2651484a4d67471091b71ebf918ee7c1cf34e5d9ad14d1e201" -> "sha256:d3a634464e387775b709b8ba5c6388f9f27697c40b8eb29c2fccd4494036800e" [label=""];
  "sha256:d3a634464e387775b709b8ba5c6388f9f27697c40b8eb29c2fccd4494036800e" -> "sha256:e26d48db366f696988ec4291826ecee3b52caede6ba49be94079b54a80467309" [label=""];
}

