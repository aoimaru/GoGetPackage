[app/sources/320100183.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7f407dac811e839e1ef45cad1a70630fab90b0aada2a76ac39d81f3d7464d2e3" [label="/bin/sh -c apt-get update   && apt-get install -y      software-properties-common      --no-install-recommends   && add-apt-repository ppa:fontforge/fontforge   && apt-get update   && apt-get install -y      fontforge      --no-install-recommends   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:19c01146db2872c74907c9523a7a50afb35b0bb3d9ae255bd5c5fc15a3a53e05" [label="/bin/sh -c useradd --create-home --home-dir $HOME fontforge" shape="box"];
  "sha256:66471280f08a3bbbd5f754b8ae1247e0e47e83fc7fa5439aaed52cb870298ebe" [label="mkdir{path=/home/fontforge}" shape="note"];
  "sha256:b61a14e39a6645edfea462fb7df1b419a7cb07ceb62a350b436f6da727e5ac17" [label="sha256:b61a14e39a6645edfea462fb7df1b419a7cb07ceb62a350b436f6da727e5ac17" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:7f407dac811e839e1ef45cad1a70630fab90b0aada2a76ac39d81f3d7464d2e3" [label=""];
  "sha256:7f407dac811e839e1ef45cad1a70630fab90b0aada2a76ac39d81f3d7464d2e3" -> "sha256:19c01146db2872c74907c9523a7a50afb35b0bb3d9ae255bd5c5fc15a3a53e05" [label=""];
  "sha256:19c01146db2872c74907c9523a7a50afb35b0bb3d9ae255bd5c5fc15a3a53e05" -> "sha256:66471280f08a3bbbd5f754b8ae1247e0e47e83fc7fa5439aaed52cb870298ebe" [label=""];
  "sha256:66471280f08a3bbbd5f754b8ae1247e0e47e83fc7fa5439aaed52cb870298ebe" -> "sha256:b61a14e39a6645edfea462fb7df1b419a7cb07ceb62a350b436f6da727e5ac17" [label=""];
}

