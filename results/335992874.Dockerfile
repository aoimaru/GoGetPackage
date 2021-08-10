[app/sources/335992874.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:35635aafa0108942a2a2bbc30db72aee409fead1e7890ce5f10084c21e3cc3b9" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:192e51639d68de43c4f1e086ab0aef9b858d4ad017fca569da6219a957c09b1e" [label="mkdir{path=/app}" shape="note"];
  "sha256:9c30a427e2b50992b0f206aae2f2560bde7667e59238e9ff0c519b7b1592eeec" [label="local://context" shape="ellipse"];
  "sha256:cda4fd97be5726d3b4c6646ecc23510aee23150ee750ffd1387c64153fb1272b" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:10f977cbfee9c753d0ac4dc84671c39c558d72e6101d92fdad5a3e01ba845f93" [label="/bin/sh -c npm install" shape="box"];
  "sha256:1cef5c5777602540dfaaec0de0ef6860915ddc007cba22a43e5944d0b764becd" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:51bf327ffd5e679faf3ef7c68c856f4c52e431583d06c2f91368436cc03a72bb" [label="sha256:51bf327ffd5e679faf3ef7c68c856f4c52e431583d06c2f91368436cc03a72bb" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:35635aafa0108942a2a2bbc30db72aee409fead1e7890ce5f10084c21e3cc3b9" [label=""];
  "sha256:35635aafa0108942a2a2bbc30db72aee409fead1e7890ce5f10084c21e3cc3b9" -> "sha256:192e51639d68de43c4f1e086ab0aef9b858d4ad017fca569da6219a957c09b1e" [label=""];
  "sha256:192e51639d68de43c4f1e086ab0aef9b858d4ad017fca569da6219a957c09b1e" -> "sha256:cda4fd97be5726d3b4c6646ecc23510aee23150ee750ffd1387c64153fb1272b" [label=""];
  "sha256:9c30a427e2b50992b0f206aae2f2560bde7667e59238e9ff0c519b7b1592eeec" -> "sha256:cda4fd97be5726d3b4c6646ecc23510aee23150ee750ffd1387c64153fb1272b" [label=""];
  "sha256:cda4fd97be5726d3b4c6646ecc23510aee23150ee750ffd1387c64153fb1272b" -> "sha256:10f977cbfee9c753d0ac4dc84671c39c558d72e6101d92fdad5a3e01ba845f93" [label=""];
  "sha256:10f977cbfee9c753d0ac4dc84671c39c558d72e6101d92fdad5a3e01ba845f93" -> "sha256:1cef5c5777602540dfaaec0de0ef6860915ddc007cba22a43e5944d0b764becd" [label=""];
  "sha256:9c30a427e2b50992b0f206aae2f2560bde7667e59238e9ff0c519b7b1592eeec" -> "sha256:1cef5c5777602540dfaaec0de0ef6860915ddc007cba22a43e5944d0b764becd" [label=""];
  "sha256:1cef5c5777602540dfaaec0de0ef6860915ddc007cba22a43e5944d0b764becd" -> "sha256:51bf327ffd5e679faf3ef7c68c856f4c52e431583d06c2f91368436cc03a72bb" [label=""];
}

