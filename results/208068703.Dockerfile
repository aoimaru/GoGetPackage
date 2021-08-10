[app/sources/208068703.Dockerfile]
digraph {
  "sha256:1f5003413b214481bf4c2c942a51e2df59a02bd17d9f3338d8970b1b8e7b450e" [label="docker-image://docker.io/floydhub/dl-docker:cpu" shape="ellipse"];
  "sha256:fb0f4c51cdaaf8cc9a464b87bcafb712db7ac9b4c1384a4726ff993be00fb9db" [label="/bin/sh -c pip install https://github.com/Lasagne/Lasagne/archive/master.zip" shape="box"];
  "sha256:720029fb79375b7f933708857fc6e7a82d27890c3de4ca3f808e31df9a9c8dd0" [label="/bin/sh -c echo \"h5py==2.7.0\\n        lifelines==0.9.4\\n        logger==1.4\\n        tensorboard-logger==0.0.3\\n        numpy>=1.9.0\\n        matplotlib==2.0.0\" > /requirements.txt &&   pip install -r /requirements.txt" shape="box"];
  "sha256:2f38215d6cb5692e4f1d847e54612ddf4d0d9619a12ffc6a7db38436ef5d5751" [label="local://context" shape="ellipse"];
  "sha256:300fcb15c6dc8025f749fba7e223c5b7e90ca2ebc9b4a1c8a68fafdc19caab46" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:af5bc1237675e3bc53a63e868adf7b290b769a470b451ee89a52e7edfd00aeac" [label="sha256:af5bc1237675e3bc53a63e868adf7b290b769a470b451ee89a52e7edfd00aeac" shape="plaintext"];
  "sha256:1f5003413b214481bf4c2c942a51e2df59a02bd17d9f3338d8970b1b8e7b450e" -> "sha256:fb0f4c51cdaaf8cc9a464b87bcafb712db7ac9b4c1384a4726ff993be00fb9db" [label=""];
  "sha256:fb0f4c51cdaaf8cc9a464b87bcafb712db7ac9b4c1384a4726ff993be00fb9db" -> "sha256:720029fb79375b7f933708857fc6e7a82d27890c3de4ca3f808e31df9a9c8dd0" [label=""];
  "sha256:720029fb79375b7f933708857fc6e7a82d27890c3de4ca3f808e31df9a9c8dd0" -> "sha256:300fcb15c6dc8025f749fba7e223c5b7e90ca2ebc9b4a1c8a68fafdc19caab46" [label=""];
  "sha256:2f38215d6cb5692e4f1d847e54612ddf4d0d9619a12ffc6a7db38436ef5d5751" -> "sha256:300fcb15c6dc8025f749fba7e223c5b7e90ca2ebc9b4a1c8a68fafdc19caab46" [label=""];
  "sha256:300fcb15c6dc8025f749fba7e223c5b7e90ca2ebc9b4a1c8a68fafdc19caab46" -> "sha256:af5bc1237675e3bc53a63e868adf7b290b769a470b451ee89a52e7edfd00aeac" [label=""];
}

