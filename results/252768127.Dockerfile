[app/sources/252768127.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:e6807ba0bf8060b6be1c1acf1652b93626327d75b3eb521f4443de4a50199703" [label="/bin/sh -c apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common" shape="box"];
  "sha256:2d856da8b251ea1c2b2268ebd6f878a758d5a42391514e56879b51f70d0f2452" [label="/bin/sh -c curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -" shape="box"];
  "sha256:aacf76fc68ce62c6252477fbc58d61fbbb68164c867342bcbfde506147b42775" [label="/bin/sh -c add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable\"" shape="box"];
  "sha256:76d7b150db79a9c461017e8921795a356b8938675963b9bded693e4e4075c6d6" [label="/bin/sh -c apt-get update && apt-get install -y docker-ce" shape="box"];
  "sha256:2f4dc4218f0f9af03b764ad15638c48e7e572470d634c1af0f34d015a3097f67" [label="sha256:2f4dc4218f0f9af03b764ad15638c48e7e572470d634c1af0f34d015a3097f67" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:e6807ba0bf8060b6be1c1acf1652b93626327d75b3eb521f4443de4a50199703" [label=""];
  "sha256:e6807ba0bf8060b6be1c1acf1652b93626327d75b3eb521f4443de4a50199703" -> "sha256:2d856da8b251ea1c2b2268ebd6f878a758d5a42391514e56879b51f70d0f2452" [label=""];
  "sha256:2d856da8b251ea1c2b2268ebd6f878a758d5a42391514e56879b51f70d0f2452" -> "sha256:aacf76fc68ce62c6252477fbc58d61fbbb68164c867342bcbfde506147b42775" [label=""];
  "sha256:aacf76fc68ce62c6252477fbc58d61fbbb68164c867342bcbfde506147b42775" -> "sha256:76d7b150db79a9c461017e8921795a356b8938675963b9bded693e4e4075c6d6" [label=""];
  "sha256:76d7b150db79a9c461017e8921795a356b8938675963b9bded693e4e4075c6d6" -> "sha256:2f4dc4218f0f9af03b764ad15638c48e7e572470d634c1af0f34d015a3097f67" [label=""];
}

