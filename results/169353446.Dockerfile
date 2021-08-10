[app/sources/169353446.Dockerfile]
digraph {
  "sha256:bba4ca780475c2be9febdf6deaf1a3740e6b07b1fb4bcf1071bd62495befb9c6" [label="docker-image://docker.io/library/golang:1.3" shape="ellipse"];
  "sha256:9f6dafea4f0ec85228003106b8b010f5f0432324250c266f013a0c06ce11dcbc" [label="/bin/sh -c apt-get update && apt-get install -y git-core cmake" shape="box"];
  "sha256:daffc757bc3447846d70573820d9f6fda341754bb122ec6a3edb11174677eab3" [label="/bin/sh -c apt-get install -y pkg-config" shape="box"];
  "sha256:84046945a6ad6e99bdfcfea256c8c63eec4f2858b920755560534e4dabadff7f" [label="local://context" shape="ellipse"];
  "sha256:c52eeffd9089fe830574d5b8ebfbfcd0a0cf90bc4edd98405379668d6404177c" [label="copy{src=/Godeps/_workspace/src, dest=/go/src}" shape="note"];
  "sha256:b916864e741de8624efeb19038c53c7d4b9444ae3e6f0b15a885e0baa5f3c319" [label="copy{src=/, dest=/go/src/github.com/nathanleclaire/tarzan}" shape="note"];
  "sha256:67c2892ddfcbe6ef3a263f8e5b0a3ebe26c5dd3280ed3776d9758b1511c1db2b" [label="mkdir{path=/go/src/github.com/nathanleclaire/tarzan}" shape="note"];
  "sha256:f2808c17eb89af4c97a6f4b27870388d0aa9ab4e3004d07d8b427347a636e956" [label="/bin/sh -c go build" shape="box"];
  "sha256:624009f926f6b8bae999d67309ffa1af26bc89a872826c40a60c041bd77705a5" [label="/bin/sh -c useradd gobuddy" shape="box"];
  "sha256:f8f76dc743dc3188fb609ff132f0cf9f4e282790d088719f052179cc3349df8c" [label="sha256:f8f76dc743dc3188fb609ff132f0cf9f4e282790d088719f052179cc3349df8c" shape="plaintext"];
  "sha256:bba4ca780475c2be9febdf6deaf1a3740e6b07b1fb4bcf1071bd62495befb9c6" -> "sha256:9f6dafea4f0ec85228003106b8b010f5f0432324250c266f013a0c06ce11dcbc" [label=""];
  "sha256:9f6dafea4f0ec85228003106b8b010f5f0432324250c266f013a0c06ce11dcbc" -> "sha256:daffc757bc3447846d70573820d9f6fda341754bb122ec6a3edb11174677eab3" [label=""];
  "sha256:daffc757bc3447846d70573820d9f6fda341754bb122ec6a3edb11174677eab3" -> "sha256:c52eeffd9089fe830574d5b8ebfbfcd0a0cf90bc4edd98405379668d6404177c" [label=""];
  "sha256:84046945a6ad6e99bdfcfea256c8c63eec4f2858b920755560534e4dabadff7f" -> "sha256:c52eeffd9089fe830574d5b8ebfbfcd0a0cf90bc4edd98405379668d6404177c" [label=""];
  "sha256:c52eeffd9089fe830574d5b8ebfbfcd0a0cf90bc4edd98405379668d6404177c" -> "sha256:b916864e741de8624efeb19038c53c7d4b9444ae3e6f0b15a885e0baa5f3c319" [label=""];
  "sha256:84046945a6ad6e99bdfcfea256c8c63eec4f2858b920755560534e4dabadff7f" -> "sha256:b916864e741de8624efeb19038c53c7d4b9444ae3e6f0b15a885e0baa5f3c319" [label=""];
  "sha256:b916864e741de8624efeb19038c53c7d4b9444ae3e6f0b15a885e0baa5f3c319" -> "sha256:67c2892ddfcbe6ef3a263f8e5b0a3ebe26c5dd3280ed3776d9758b1511c1db2b" [label=""];
  "sha256:67c2892ddfcbe6ef3a263f8e5b0a3ebe26c5dd3280ed3776d9758b1511c1db2b" -> "sha256:f2808c17eb89af4c97a6f4b27870388d0aa9ab4e3004d07d8b427347a636e956" [label=""];
  "sha256:f2808c17eb89af4c97a6f4b27870388d0aa9ab4e3004d07d8b427347a636e956" -> "sha256:624009f926f6b8bae999d67309ffa1af26bc89a872826c40a60c041bd77705a5" [label=""];
  "sha256:624009f926f6b8bae999d67309ffa1af26bc89a872826c40a60c041bd77705a5" -> "sha256:f8f76dc743dc3188fb609ff132f0cf9f4e282790d088719f052179cc3349df8c" [label=""];
}

