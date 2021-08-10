[app/sources/319183710.Dockerfile]
digraph {
  "sha256:67c8eb9e599422812eb392f12c52d73847932ebed4b744c7f6b3b552592dac7e" [label="local://context" shape="ellipse"];
  "sha256:644edf4905286ba1b70ceaa0a1cb2262ac1a3554deb0a5f2fd707969e0b3840e" [label="docker-image://docker.io/bitwalker/alpine-elixir:1.6.6" shape="ellipse"];
  "sha256:ee8934222153993abd9e13049ebd87fd011fa7d3f5f010e5ce04cda4530b80a6" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:a2af060d25caf941998b9d13a60689fffd10cb1fefa33aa7b1562604de6e3585" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:cc6e0584da92f01c915b91d687633fc1450812ef50a385556dd1d4d0cfd1151a" [label="/bin/sh -c mkdir -p /api" shape="box"];
  "sha256:3fd2ba61b8e2297f57a07c38efa015a1abc132beaafbc0e2fddbe2be15592eee" [label="copy{src=/mix.exs, dest=/api}" shape="note"];
  "sha256:26233d8798a4973a93cfe0fef1fea847b83328b5e4437abd7d5444146155e592" [label="copy{src=/mix.lock, dest=/api}" shape="note"];
  "sha256:e046d946f68b4ed58d767f4393eeeda3ee083dcf087a16f1c542d05222c1c9bd" [label="mkdir{path=/api}" shape="note"];
  "sha256:b32c96ea1ddd38bb4d5ae215aa41a57678e16a13753cb944add8931dc5d8b78c" [label="/bin/sh -c mix deps.get" shape="box"];
  "sha256:ca118caa4e7d9a254c13e4ea5f5166c98aa6ec7e32f2db4666009dad622034cd" [label="copy{src=/, dest=/api/}" shape="note"];
  "sha256:863aaae64b3da3b2dd2c4284bfd3375639f8285894f30a45810b7b24afc7f5cf" [label="sha256:863aaae64b3da3b2dd2c4284bfd3375639f8285894f30a45810b7b24afc7f5cf" shape="plaintext"];
  "sha256:644edf4905286ba1b70ceaa0a1cb2262ac1a3554deb0a5f2fd707969e0b3840e" -> "sha256:ee8934222153993abd9e13049ebd87fd011fa7d3f5f010e5ce04cda4530b80a6" [label=""];
  "sha256:ee8934222153993abd9e13049ebd87fd011fa7d3f5f010e5ce04cda4530b80a6" -> "sha256:a2af060d25caf941998b9d13a60689fffd10cb1fefa33aa7b1562604de6e3585" [label=""];
  "sha256:a2af060d25caf941998b9d13a60689fffd10cb1fefa33aa7b1562604de6e3585" -> "sha256:cc6e0584da92f01c915b91d687633fc1450812ef50a385556dd1d4d0cfd1151a" [label=""];
  "sha256:cc6e0584da92f01c915b91d687633fc1450812ef50a385556dd1d4d0cfd1151a" -> "sha256:3fd2ba61b8e2297f57a07c38efa015a1abc132beaafbc0e2fddbe2be15592eee" [label=""];
  "sha256:67c8eb9e599422812eb392f12c52d73847932ebed4b744c7f6b3b552592dac7e" -> "sha256:3fd2ba61b8e2297f57a07c38efa015a1abc132beaafbc0e2fddbe2be15592eee" [label=""];
  "sha256:3fd2ba61b8e2297f57a07c38efa015a1abc132beaafbc0e2fddbe2be15592eee" -> "sha256:26233d8798a4973a93cfe0fef1fea847b83328b5e4437abd7d5444146155e592" [label=""];
  "sha256:67c8eb9e599422812eb392f12c52d73847932ebed4b744c7f6b3b552592dac7e" -> "sha256:26233d8798a4973a93cfe0fef1fea847b83328b5e4437abd7d5444146155e592" [label=""];
  "sha256:26233d8798a4973a93cfe0fef1fea847b83328b5e4437abd7d5444146155e592" -> "sha256:e046d946f68b4ed58d767f4393eeeda3ee083dcf087a16f1c542d05222c1c9bd" [label=""];
  "sha256:e046d946f68b4ed58d767f4393eeeda3ee083dcf087a16f1c542d05222c1c9bd" -> "sha256:b32c96ea1ddd38bb4d5ae215aa41a57678e16a13753cb944add8931dc5d8b78c" [label=""];
  "sha256:b32c96ea1ddd38bb4d5ae215aa41a57678e16a13753cb944add8931dc5d8b78c" -> "sha256:ca118caa4e7d9a254c13e4ea5f5166c98aa6ec7e32f2db4666009dad622034cd" [label=""];
  "sha256:67c8eb9e599422812eb392f12c52d73847932ebed4b744c7f6b3b552592dac7e" -> "sha256:ca118caa4e7d9a254c13e4ea5f5166c98aa6ec7e32f2db4666009dad622034cd" [label=""];
  "sha256:ca118caa4e7d9a254c13e4ea5f5166c98aa6ec7e32f2db4666009dad622034cd" -> "sha256:863aaae64b3da3b2dd2c4284bfd3375639f8285894f30a45810b7b24afc7f5cf" [label=""];
}

