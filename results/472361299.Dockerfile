[app/sources/472361299.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:fea4aefdc5663e4c5599e240a2eeda848a16b653bacb798907991bf95883dbe7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:8070f35a1cdf70a6636ee7ecdc7abd70fef185a4ad594e1d06f9a7625d475f6e" [label="local://context" shape="ellipse"];
  "sha256:c8eb955b4b8723a34dc8a2d7f653081ef1be3c17e930ea7307c72dc9cd21d5c2" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:b16ef3dfa8bcf2ed219ccf98e057df0a64a99cd3433461fdb44829e601c54476" [label="/bin/sh -c npm install" shape="box"];
  "sha256:215c1cbb486aa9a6002140c2bf6b31cb079684d09279aa2090ee882e6c9c93ac" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:6a16a7e7bf503c24b516350f66fdc1c797e1427431939af71c72caf7497988bc" [label="sha256:6a16a7e7bf503c24b516350f66fdc1c797e1427431939af71c72caf7497988bc" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:fea4aefdc5663e4c5599e240a2eeda848a16b653bacb798907991bf95883dbe7" [label=""];
  "sha256:fea4aefdc5663e4c5599e240a2eeda848a16b653bacb798907991bf95883dbe7" -> "sha256:c8eb955b4b8723a34dc8a2d7f653081ef1be3c17e930ea7307c72dc9cd21d5c2" [label=""];
  "sha256:8070f35a1cdf70a6636ee7ecdc7abd70fef185a4ad594e1d06f9a7625d475f6e" -> "sha256:c8eb955b4b8723a34dc8a2d7f653081ef1be3c17e930ea7307c72dc9cd21d5c2" [label=""];
  "sha256:c8eb955b4b8723a34dc8a2d7f653081ef1be3c17e930ea7307c72dc9cd21d5c2" -> "sha256:b16ef3dfa8bcf2ed219ccf98e057df0a64a99cd3433461fdb44829e601c54476" [label=""];
  "sha256:b16ef3dfa8bcf2ed219ccf98e057df0a64a99cd3433461fdb44829e601c54476" -> "sha256:215c1cbb486aa9a6002140c2bf6b31cb079684d09279aa2090ee882e6c9c93ac" [label=""];
  "sha256:8070f35a1cdf70a6636ee7ecdc7abd70fef185a4ad594e1d06f9a7625d475f6e" -> "sha256:215c1cbb486aa9a6002140c2bf6b31cb079684d09279aa2090ee882e6c9c93ac" [label=""];
  "sha256:215c1cbb486aa9a6002140c2bf6b31cb079684d09279aa2090ee882e6c9c93ac" -> "sha256:6a16a7e7bf503c24b516350f66fdc1c797e1427431939af71c72caf7497988bc" [label=""];
}

