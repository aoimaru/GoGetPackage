[app/sources/252772883.Dockerfile]
digraph {
  "sha256:d014a9e96f5da24e14b7330548ff07885f9ea508352803a128d4ecf91d73bac2" [label="docker-image://docker.io/tensorflow/tensorflow:0.12.0-gpu" shape="ellipse"];
  "sha256:ea47e2667149bdc885eb424a71d84b74c056a6131e14292b711b305a4fdb2595" [label="/bin/sh -c apt-get update && apt-get install -y emacs git zip" shape="box"];
  "sha256:f9268c3d6ce0c3370e50ee27bcc1b36ea3d9dc3db0c356ea08750cd15804838f" [label="/bin/sh -c pip install numpy scipy matplotlib ipython jupyter pandas sympy nose h5py" shape="box"];
  "sha256:fbec517f4d5315cb6db6e60dc307f34ecf26e4bed1ae7cc1bac464ea0b9c19cd" [label="/bin/sh -c pip install git+https://github.com/tflearn/tflearn.git" shape="box"];
  "sha256:5a1e8f99ad4ded9d9b07ae06db6d4e9b862f4db61000180034bfece5dc0e1f9d" [label="mkdir{path=/deep-tweet}" shape="note"];
  "sha256:2937bd6f0a09b27ee8a91e9f2194ffb68731aaec87c07da7a6a4fb35a4a4b594" [label="/bin/sh -c export TERM='vt100'" shape="box"];
  "sha256:2724ba57df5df2d86f8d52180e26034b4ccbfa6c2cda747756c5a0ed76fd51ee" [label="local://context" shape="ellipse"];
  "sha256:515fbd1f46dd67e5160caeb9ac86e1bb83d3a05cad08d5cee569bb3a616c1335" [label="copy{src=/, dest=/deep-tweet/}" shape="note"];
  "sha256:208c74d94c74221e3a06b2cb95c6d6a5711128594cd4d3cc6fb08828dd0e4b68" [label="sha256:208c74d94c74221e3a06b2cb95c6d6a5711128594cd4d3cc6fb08828dd0e4b68" shape="plaintext"];
  "sha256:d014a9e96f5da24e14b7330548ff07885f9ea508352803a128d4ecf91d73bac2" -> "sha256:ea47e2667149bdc885eb424a71d84b74c056a6131e14292b711b305a4fdb2595" [label=""];
  "sha256:ea47e2667149bdc885eb424a71d84b74c056a6131e14292b711b305a4fdb2595" -> "sha256:f9268c3d6ce0c3370e50ee27bcc1b36ea3d9dc3db0c356ea08750cd15804838f" [label=""];
  "sha256:f9268c3d6ce0c3370e50ee27bcc1b36ea3d9dc3db0c356ea08750cd15804838f" -> "sha256:fbec517f4d5315cb6db6e60dc307f34ecf26e4bed1ae7cc1bac464ea0b9c19cd" [label=""];
  "sha256:fbec517f4d5315cb6db6e60dc307f34ecf26e4bed1ae7cc1bac464ea0b9c19cd" -> "sha256:5a1e8f99ad4ded9d9b07ae06db6d4e9b862f4db61000180034bfece5dc0e1f9d" [label=""];
  "sha256:5a1e8f99ad4ded9d9b07ae06db6d4e9b862f4db61000180034bfece5dc0e1f9d" -> "sha256:2937bd6f0a09b27ee8a91e9f2194ffb68731aaec87c07da7a6a4fb35a4a4b594" [label=""];
  "sha256:2937bd6f0a09b27ee8a91e9f2194ffb68731aaec87c07da7a6a4fb35a4a4b594" -> "sha256:515fbd1f46dd67e5160caeb9ac86e1bb83d3a05cad08d5cee569bb3a616c1335" [label=""];
  "sha256:2724ba57df5df2d86f8d52180e26034b4ccbfa6c2cda747756c5a0ed76fd51ee" -> "sha256:515fbd1f46dd67e5160caeb9ac86e1bb83d3a05cad08d5cee569bb3a616c1335" [label=""];
  "sha256:515fbd1f46dd67e5160caeb9ac86e1bb83d3a05cad08d5cee569bb3a616c1335" -> "sha256:208c74d94c74221e3a06b2cb95c6d6a5711128594cd4d3cc6fb08828dd0e4b68" [label=""];
}

