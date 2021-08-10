[app/sources/225318416.Dockerfile]
digraph {
  "sha256:e04dd7c70551373dcf0105293e819cc8f8bb87a4e40ca2a9ac5bab33457c7bcd" [label="docker-image://docker.io/nextgenusfs/funannotate:latest" shape="ellipse"];
  "sha256:d2999ae1ae3826ef1e5fa60a9c62dab9dea3d23f10f299192e52ee32141da4e5" [label="mkdir{path=/home/linuxbrew}" shape="note"];
  "sha256:03ad5b46bdd8045650e323e68ee609eed17347c32649d31ca904e228bdcc781e" [label="local://context" shape="ellipse"];
  "sha256:5807e4185a20f536e2376fa64c57f99d9be433ecbd8f56d7cacc2bcd38e91f57" [label="copy{src=/gm_key_64.gz, dest=/home/linuxbrew/},copy{src=/signalp-4.1f.Linux.tar.gz, dest=/home/linuxbrew/},copy{src=/RepBaseRepeatMaskerEdition-20170127.tar.gz, dest=/home/linuxbrew/}" shape="note"];
  "sha256:e1ab63038e197e19d27b2dbd2093b6d1ec49a924b3c22b9f76bdef6f219f0b68" [label="/bin/sh -c zcat gm_key_64.gz > /home/linuxbrew/.gm_key &&     tar -zxvf signalp-4.1f.Linux.tar.gz &&     sed -i 's,/usr/cbs/bio/src/signalp-4.1,/home/linuxbrew/signalp-4.1,g' signalp-4.1/signalp &&     sed -i 's,#!/usr/bin/perl,#!/usr/bin/env perl,g' signalp-4.1/signalp" shape="box"];
  "sha256:ecaaf86d0b6e91f73ea7eb3f56da8cd1c453d5fc1e01e46e4ae87915db423117" [label="/bin/sh -c tar -zxvf RepBaseRepeatMaskerEdition-20170127.tar.gz -C /home/linuxbrew/repeatmasker &&     rm -rf RepBaseRepeatMaskerEdition-20170127.tar.gz &&     cd /home/linuxbrew/repeatmasker && perl ./configure < /home/linuxbrew/repeatmasker.txt &&     cd /home/linuxbrew/repeatmodeler && perl ./configure < /home/linuxbrew/repeatmodeler.txt &&     funannotate setup -d /home/linuxbrew/DB &&     mkdir /home/linuxbrew/data" shape="box"];
  "sha256:57c0843d1afc2162245095f96959dc7761ebf12d0209d1b46b0be6915dfe07d3" [label="mkdir{path=/home/linuxbrew/data}" shape="note"];
  "sha256:d7a83987e0f8585c5714510f452184c1a5e8665004498d14a0db59364eee1d1f" [label="sha256:d7a83987e0f8585c5714510f452184c1a5e8665004498d14a0db59364eee1d1f" shape="plaintext"];
  "sha256:e04dd7c70551373dcf0105293e819cc8f8bb87a4e40ca2a9ac5bab33457c7bcd" -> "sha256:d2999ae1ae3826ef1e5fa60a9c62dab9dea3d23f10f299192e52ee32141da4e5" [label=""];
  "sha256:d2999ae1ae3826ef1e5fa60a9c62dab9dea3d23f10f299192e52ee32141da4e5" -> "sha256:5807e4185a20f536e2376fa64c57f99d9be433ecbd8f56d7cacc2bcd38e91f57" [label=""];
  "sha256:03ad5b46bdd8045650e323e68ee609eed17347c32649d31ca904e228bdcc781e" -> "sha256:5807e4185a20f536e2376fa64c57f99d9be433ecbd8f56d7cacc2bcd38e91f57" [label=""];
  "sha256:5807e4185a20f536e2376fa64c57f99d9be433ecbd8f56d7cacc2bcd38e91f57" -> "sha256:e1ab63038e197e19d27b2dbd2093b6d1ec49a924b3c22b9f76bdef6f219f0b68" [label=""];
  "sha256:e1ab63038e197e19d27b2dbd2093b6d1ec49a924b3c22b9f76bdef6f219f0b68" -> "sha256:ecaaf86d0b6e91f73ea7eb3f56da8cd1c453d5fc1e01e46e4ae87915db423117" [label=""];
  "sha256:ecaaf86d0b6e91f73ea7eb3f56da8cd1c453d5fc1e01e46e4ae87915db423117" -> "sha256:57c0843d1afc2162245095f96959dc7761ebf12d0209d1b46b0be6915dfe07d3" [label=""];
  "sha256:57c0843d1afc2162245095f96959dc7761ebf12d0209d1b46b0be6915dfe07d3" -> "sha256:d7a83987e0f8585c5714510f452184c1a5e8665004498d14a0db59364eee1d1f" [label=""];
}

