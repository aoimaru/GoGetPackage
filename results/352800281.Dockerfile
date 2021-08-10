[app/sources/352800281.Dockerfile]
digraph {
  "sha256:6096aaefa89b6948ca0407c4f3e34d6641a1f996fa6c7a645eed7fcecec1285a" [label="local://context" shape="ellipse"];
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" [label="docker-image://docker.io/docs/base:latest" shape="ellipse"];
  "sha256:b0d43cbf839bdf3275f9062a0eced06d6964b9eda1a05b2e5b7f90d70abc8e5c" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:c6da61c44b8b104c06108221bbc75b3538c6fedad31cfee5194f9f6627dd0abf" [label="copy{src=/, dest=/docs/content/machine/}" shape="note"];
  "sha256:470c4e224c58bf53d649be4d4811ef90ce8b5e8f53f93c1e14f4eb1f0032020b" [label="/bin/sh -c svn checkout https://github.com/docker/compose/trunk/docs /docs/content/compose" shape="box"];
  "sha256:1c1827773074027c2f52ba3b1cd8a318bd22d847e221c02c700f4d1450ad73ec" [label="/bin/sh -c svn checkout https://github.com/docker/docker/trunk/docs /docs/content/docker" shape="box"];
  "sha256:303cf71d7dccab558ca5695969fad4a33ec080a72226811320085eaf8b222e92" [label="/bin/sh -c svn checkout https://github.com/docker/swarm/trunk/docs /docs/content/swarm" shape="box"];
  "sha256:099e10f7a4ff533d6823994d47fe899c3889be6ffa06989b09862706a355ecdc" [label="/bin/sh -c svn checkout https://github.com/docker/distribution/trunk/docs /docs/content/registry" shape="box"];
  "sha256:153b7e04e52635074c56f1c1a23c8463a0e6c8a5ebcf3691b86e274a4d34cdd6" [label="/bin/sh -c svn checkout https://github.com/docker/tutorials/trunk/docs /docs/content" shape="box"];
  "sha256:423dfacc2596c1a387b83594c61127da41168f37b7188c1b32d11f79d6746c05" [label="/bin/sh -c svn checkout https://github.com/docker/opensource/trunk/docs /docs/content/opensource" shape="box"];
  "sha256:6e979684a52d1c2f0015d2dc7ca163ba9c19b5d54457421049f3aa84a9204062" [label="/bin/sh -c svn checkout https://github.com/kitematic/kitematic/trunk/docs /docs/content/kitematic" shape="box"];
  "sha256:cd06ccd2caa4ccaf7fc9dab0c3c6c4cc2e0a2b3d0c1ba3272826ed525533bc4d" [label="/bin/sh -c /src/pre-process.sh /docs" shape="box"];
  "sha256:44462299ed06e2df9b4e5c19a3c7a23d0cf59c8186e36043f1c612faa9d1cf12" [label="sha256:44462299ed06e2df9b4e5c19a3c7a23d0cf59c8186e36043f1c612faa9d1cf12" shape="plaintext"];
  "sha256:7a6f646bdb1efd43895a2cbad9bdd148a1506d7fd22716d0d8c97455393bf4c9" -> "sha256:b0d43cbf839bdf3275f9062a0eced06d6964b9eda1a05b2e5b7f90d70abc8e5c" [label=""];
  "sha256:6096aaefa89b6948ca0407c4f3e34d6641a1f996fa6c7a645eed7fcecec1285a" -> "sha256:b0d43cbf839bdf3275f9062a0eced06d6964b9eda1a05b2e5b7f90d70abc8e5c" [label=""];
  "sha256:b0d43cbf839bdf3275f9062a0eced06d6964b9eda1a05b2e5b7f90d70abc8e5c" -> "sha256:c6da61c44b8b104c06108221bbc75b3538c6fedad31cfee5194f9f6627dd0abf" [label=""];
  "sha256:6096aaefa89b6948ca0407c4f3e34d6641a1f996fa6c7a645eed7fcecec1285a" -> "sha256:c6da61c44b8b104c06108221bbc75b3538c6fedad31cfee5194f9f6627dd0abf" [label=""];
  "sha256:c6da61c44b8b104c06108221bbc75b3538c6fedad31cfee5194f9f6627dd0abf" -> "sha256:470c4e224c58bf53d649be4d4811ef90ce8b5e8f53f93c1e14f4eb1f0032020b" [label=""];
  "sha256:470c4e224c58bf53d649be4d4811ef90ce8b5e8f53f93c1e14f4eb1f0032020b" -> "sha256:1c1827773074027c2f52ba3b1cd8a318bd22d847e221c02c700f4d1450ad73ec" [label=""];
  "sha256:1c1827773074027c2f52ba3b1cd8a318bd22d847e221c02c700f4d1450ad73ec" -> "sha256:303cf71d7dccab558ca5695969fad4a33ec080a72226811320085eaf8b222e92" [label=""];
  "sha256:303cf71d7dccab558ca5695969fad4a33ec080a72226811320085eaf8b222e92" -> "sha256:099e10f7a4ff533d6823994d47fe899c3889be6ffa06989b09862706a355ecdc" [label=""];
  "sha256:099e10f7a4ff533d6823994d47fe899c3889be6ffa06989b09862706a355ecdc" -> "sha256:153b7e04e52635074c56f1c1a23c8463a0e6c8a5ebcf3691b86e274a4d34cdd6" [label=""];
  "sha256:153b7e04e52635074c56f1c1a23c8463a0e6c8a5ebcf3691b86e274a4d34cdd6" -> "sha256:423dfacc2596c1a387b83594c61127da41168f37b7188c1b32d11f79d6746c05" [label=""];
  "sha256:423dfacc2596c1a387b83594c61127da41168f37b7188c1b32d11f79d6746c05" -> "sha256:6e979684a52d1c2f0015d2dc7ca163ba9c19b5d54457421049f3aa84a9204062" [label=""];
  "sha256:6e979684a52d1c2f0015d2dc7ca163ba9c19b5d54457421049f3aa84a9204062" -> "sha256:cd06ccd2caa4ccaf7fc9dab0c3c6c4cc2e0a2b3d0c1ba3272826ed525533bc4d" [label=""];
  "sha256:cd06ccd2caa4ccaf7fc9dab0c3c6c4cc2e0a2b3d0c1ba3272826ed525533bc4d" -> "sha256:44462299ed06e2df9b4e5c19a3c7a23d0cf59c8186e36043f1c612faa9d1cf12" [label=""];
}

