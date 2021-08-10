[app/sources/262675938.Dockerfile]
digraph {
  "sha256:45c07edf19da76f8e223f41eeb1a7eea1d927a95bb01d94abd63d761b4827088" [label="docker-image://docker.io/sachinruk/ds_base:latest" shape="ellipse"];
  "sha256:6afc057654ecf4663bb1a8bf222941c3b9a63a97d8f9c0e779eb6f06cc99e339" [label="/bin/sh -c conda config --append channels conda-forge" shape="box"];
  "sha256:1d2a6673a83f513378598968c3811297e43484069e7d2b87a0b37112e493ec4c" [label="/bin/sh -c conda install -y tensorflow keras" shape="box"];
  "sha256:d15be8beed7494be2f5bccdf695d84c04ebd158ea3e6a3c88304352d5f84491b" [label="/bin/sh -c conda install -y plotly" shape="box"];
  "sha256:933509906dad7fd86f36204a5cd840d166da24bc67b404e832193dadd3313f74" [label="/bin/sh -c conda clean --yes --tarballs --packages --source-cache" shape="box"];
  "sha256:7bd6a833ce0de78cc3bf5e4873cf06cfe91b657e1c0b34cfdb565a9ac4e9980d" [label="/bin/sh -c pip install geoip2 gensim" shape="box"];
  "sha256:36ee07e9f75a2abea742819f344717fb41263bed28599fbae63592c1139497ad" [label="mkdir{path=/notebook}" shape="note"];
  "sha256:a85210e6fd9f2a6e524e861c2376df93c86260b9bef357567103e9a92b94a6bc" [label="sha256:a85210e6fd9f2a6e524e861c2376df93c86260b9bef357567103e9a92b94a6bc" shape="plaintext"];
  "sha256:45c07edf19da76f8e223f41eeb1a7eea1d927a95bb01d94abd63d761b4827088" -> "sha256:6afc057654ecf4663bb1a8bf222941c3b9a63a97d8f9c0e779eb6f06cc99e339" [label=""];
  "sha256:6afc057654ecf4663bb1a8bf222941c3b9a63a97d8f9c0e779eb6f06cc99e339" -> "sha256:1d2a6673a83f513378598968c3811297e43484069e7d2b87a0b37112e493ec4c" [label=""];
  "sha256:1d2a6673a83f513378598968c3811297e43484069e7d2b87a0b37112e493ec4c" -> "sha256:d15be8beed7494be2f5bccdf695d84c04ebd158ea3e6a3c88304352d5f84491b" [label=""];
  "sha256:d15be8beed7494be2f5bccdf695d84c04ebd158ea3e6a3c88304352d5f84491b" -> "sha256:933509906dad7fd86f36204a5cd840d166da24bc67b404e832193dadd3313f74" [label=""];
  "sha256:933509906dad7fd86f36204a5cd840d166da24bc67b404e832193dadd3313f74" -> "sha256:7bd6a833ce0de78cc3bf5e4873cf06cfe91b657e1c0b34cfdb565a9ac4e9980d" [label=""];
  "sha256:7bd6a833ce0de78cc3bf5e4873cf06cfe91b657e1c0b34cfdb565a9ac4e9980d" -> "sha256:36ee07e9f75a2abea742819f344717fb41263bed28599fbae63592c1139497ad" [label=""];
  "sha256:36ee07e9f75a2abea742819f344717fb41263bed28599fbae63592c1139497ad" -> "sha256:a85210e6fd9f2a6e524e861c2376df93c86260b9bef357567103e9a92b94a6bc" [label=""];
}

