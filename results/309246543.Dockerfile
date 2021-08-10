[app/sources/309246543.Dockerfile]
digraph {
  "sha256:85258175b91336b55d3fde9bc3f49b9429e16a7b64d1af9468b3f58b79cb781e" [label="docker-image://docker.io/kaggle/python:latest" shape="ellipse"];
  "sha256:84da6839c2b790d69b432534b679d9c5e3a577c13a4970f9a1b656d16a0eb2f5" [label="mkdir{path=/root}" shape="note"];
  "sha256:63de3d5f71eae0f6a038809d6d8ac0bf292efe51ff4eb953d3370011f3dde573" [label="/bin/sh -c git clone https://github.com/flowlight0/talkingdata-adtracking-fraud-detection.git" shape="box"];
  "sha256:470d9be05f2969c28d28255ee8091501e84bda0f1d4dc891796bd6cfe435c680" [label="mkdir{path=/root/talkingdata-adtracking-fraud-detection}" shape="note"];
  "sha256:c21538b43431999f9fbea23715e79ae2b833b019c65efb37ca96729d6a6e8248" [label="/bin/sh -c apt-get install awscli -y" shape="box"];
  "sha256:fbbd1ef994e8f5a2334514c8450afc33ee2fa4f7ffa092f82e2f357dc445f857" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:8375bb46edab97ad498d6bfe01ebb63c4d4cd0ed0d61746a00c9c88de7e5a65c" [label="/bin/sh -c pip install --upgrade awscli" shape="box"];
  "sha256:aceef02b7dff0c861e8c26731c24f0042f269ea654861705e38adbd024e60a3e" [label="/bin/sh -c pip install kaggle" shape="box"];
  "sha256:2058f5a275bcf5fb1786b387c3a9a137109155f2754c1eca091b9f5b6566e2d3" [label="/bin/sh -c conda install arrow-cpp=0.9.* -c conda-forge" shape="box"];
  "sha256:62ebf8d477915979ef92057375bc6757e213d200e5019b191b6228a47133f041" [label="/bin/sh -c conda install numba" shape="box"];
  "sha256:5cfcd370bf38069dbfa0ca38097580ac43568ea046ff05faaed6143dac38bf2d" [label="sha256:5cfcd370bf38069dbfa0ca38097580ac43568ea046ff05faaed6143dac38bf2d" shape="plaintext"];
  "sha256:85258175b91336b55d3fde9bc3f49b9429e16a7b64d1af9468b3f58b79cb781e" -> "sha256:84da6839c2b790d69b432534b679d9c5e3a577c13a4970f9a1b656d16a0eb2f5" [label=""];
  "sha256:84da6839c2b790d69b432534b679d9c5e3a577c13a4970f9a1b656d16a0eb2f5" -> "sha256:63de3d5f71eae0f6a038809d6d8ac0bf292efe51ff4eb953d3370011f3dde573" [label=""];
  "sha256:63de3d5f71eae0f6a038809d6d8ac0bf292efe51ff4eb953d3370011f3dde573" -> "sha256:470d9be05f2969c28d28255ee8091501e84bda0f1d4dc891796bd6cfe435c680" [label=""];
  "sha256:470d9be05f2969c28d28255ee8091501e84bda0f1d4dc891796bd6cfe435c680" -> "sha256:c21538b43431999f9fbea23715e79ae2b833b019c65efb37ca96729d6a6e8248" [label=""];
  "sha256:c21538b43431999f9fbea23715e79ae2b833b019c65efb37ca96729d6a6e8248" -> "sha256:fbbd1ef994e8f5a2334514c8450afc33ee2fa4f7ffa092f82e2f357dc445f857" [label=""];
  "sha256:fbbd1ef994e8f5a2334514c8450afc33ee2fa4f7ffa092f82e2f357dc445f857" -> "sha256:8375bb46edab97ad498d6bfe01ebb63c4d4cd0ed0d61746a00c9c88de7e5a65c" [label=""];
  "sha256:8375bb46edab97ad498d6bfe01ebb63c4d4cd0ed0d61746a00c9c88de7e5a65c" -> "sha256:aceef02b7dff0c861e8c26731c24f0042f269ea654861705e38adbd024e60a3e" [label=""];
  "sha256:aceef02b7dff0c861e8c26731c24f0042f269ea654861705e38adbd024e60a3e" -> "sha256:2058f5a275bcf5fb1786b387c3a9a137109155f2754c1eca091b9f5b6566e2d3" [label=""];
  "sha256:2058f5a275bcf5fb1786b387c3a9a137109155f2754c1eca091b9f5b6566e2d3" -> "sha256:62ebf8d477915979ef92057375bc6757e213d200e5019b191b6228a47133f041" [label=""];
  "sha256:62ebf8d477915979ef92057375bc6757e213d200e5019b191b6228a47133f041" -> "sha256:5cfcd370bf38069dbfa0ca38097580ac43568ea046ff05faaed6143dac38bf2d" [label=""];
}

