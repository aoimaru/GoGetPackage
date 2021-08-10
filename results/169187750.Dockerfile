[app/sources/169187750.Dockerfile]
digraph {
  "sha256:b2174d4fa71c1018e1b6c72a45c4e04c64170efe2e63edf44bb56f18f45c5421" [label="docker-image://docker.io/supermy/docker-storm:0.9.3" shape="ellipse"];
  "sha256:3b669d556d98777999e620d84ae632a73a7c7139bcca0e971053ca6f3d7cf885" [label="/bin/sh -c /usr/bin/config-supervisord.sh nimbus" shape="box"];
  "sha256:2ef8be9ec641107d35c9179940f23f9cfaad67b6e60b6b5165829a89eb9dff22" [label="/bin/sh -c /usr/bin/config-supervisord.sh drpc" shape="box"];
  "sha256:63045fe8ce68b82d1d90369c1702bc313978b5067836a7a2df1e237df7a95efb" [label="local://context" shape="ellipse"];
  "sha256:91376dc425290ae42979fb86f3dea9651039311a5dade9f770f79522b9a39820" [label="copy{src=/start-supervisor.sh, dest=/usr/bin/start-supervisor.sh}" shape="note"];
  "sha256:6960af4ac5000702c877677ddaebad1c30f7f7fb7842e02c0b40cbaaebdd76fa" [label="sha256:6960af4ac5000702c877677ddaebad1c30f7f7fb7842e02c0b40cbaaebdd76fa" shape="plaintext"];
  "sha256:b2174d4fa71c1018e1b6c72a45c4e04c64170efe2e63edf44bb56f18f45c5421" -> "sha256:3b669d556d98777999e620d84ae632a73a7c7139bcca0e971053ca6f3d7cf885" [label=""];
  "sha256:3b669d556d98777999e620d84ae632a73a7c7139bcca0e971053ca6f3d7cf885" -> "sha256:2ef8be9ec641107d35c9179940f23f9cfaad67b6e60b6b5165829a89eb9dff22" [label=""];
  "sha256:2ef8be9ec641107d35c9179940f23f9cfaad67b6e60b6b5165829a89eb9dff22" -> "sha256:91376dc425290ae42979fb86f3dea9651039311a5dade9f770f79522b9a39820" [label=""];
  "sha256:63045fe8ce68b82d1d90369c1702bc313978b5067836a7a2df1e237df7a95efb" -> "sha256:91376dc425290ae42979fb86f3dea9651039311a5dade9f770f79522b9a39820" [label=""];
  "sha256:91376dc425290ae42979fb86f3dea9651039311a5dade9f770f79522b9a39820" -> "sha256:6960af4ac5000702c877677ddaebad1c30f7f7fb7842e02c0b40cbaaebdd76fa" [label=""];
}

