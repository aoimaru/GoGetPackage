[app/sources/252786355.Dockerfile]
digraph {
  "sha256:88ae881b525b64c28e88f4af4bec2e2677eec5d8f450a556b8faeecd87c00842" [label="docker-image://docker.io/dock0/build:latest" shape="ellipse"];
  "sha256:1c79fccf21ebd7a1d56d0569d15cd088a6510a25183fd23aaf474c98e8301747" [label="/bin/sh -c gem install --no-user-install --no-document pkgforge" shape="box"];
  "sha256:a6bee0773353e2aade26a27aeb5eb976749dc22a11a00986ea152139c5ddde16" [label="sha256:a6bee0773353e2aade26a27aeb5eb976749dc22a11a00986ea152139c5ddde16" shape="plaintext"];
  "sha256:88ae881b525b64c28e88f4af4bec2e2677eec5d8f450a556b8faeecd87c00842" -> "sha256:1c79fccf21ebd7a1d56d0569d15cd088a6510a25183fd23aaf474c98e8301747" [label=""];
  "sha256:1c79fccf21ebd7a1d56d0569d15cd088a6510a25183fd23aaf474c98e8301747" -> "sha256:a6bee0773353e2aade26a27aeb5eb976749dc22a11a00986ea152139c5ddde16" [label=""];
}

