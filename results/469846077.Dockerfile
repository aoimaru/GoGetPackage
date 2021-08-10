[app/sources/469846077.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:8a3533bf5091dd70b302d8c2099d535ee1430b4e82f42926aa5f44c998b780b2" [label="local://context" shape="ellipse"];
  "sha256:7cb268266f6d8f1b6c715386dad031f6d49e280b40b67d57ab40c90a3d370c70" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:29de8c34ead7f9ad8b0f4591eae4e7ef2861bbf71e73955a3bbe8a7add2d0bb3" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:6f7f86d7398446345415a74402075f0fa5434cab30568ca7387475d5af6b5ab0" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:428af5a73cd8cb86bbe53099cf4f27a94cc84a834d6f5a1246fc8e2094cf131d" [label="sha256:428af5a73cd8cb86bbe53099cf4f27a94cc84a834d6f5a1246fc8e2094cf131d" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:7cb268266f6d8f1b6c715386dad031f6d49e280b40b67d57ab40c90a3d370c70" [label=""];
  "sha256:8a3533bf5091dd70b302d8c2099d535ee1430b4e82f42926aa5f44c998b780b2" -> "sha256:7cb268266f6d8f1b6c715386dad031f6d49e280b40b67d57ab40c90a3d370c70" [label=""];
  "sha256:7cb268266f6d8f1b6c715386dad031f6d49e280b40b67d57ab40c90a3d370c70" -> "sha256:29de8c34ead7f9ad8b0f4591eae4e7ef2861bbf71e73955a3bbe8a7add2d0bb3" [label=""];
  "sha256:29de8c34ead7f9ad8b0f4591eae4e7ef2861bbf71e73955a3bbe8a7add2d0bb3" -> "sha256:6f7f86d7398446345415a74402075f0fa5434cab30568ca7387475d5af6b5ab0" [label=""];
  "sha256:6f7f86d7398446345415a74402075f0fa5434cab30568ca7387475d5af6b5ab0" -> "sha256:428af5a73cd8cb86bbe53099cf4f27a94cc84a834d6f5a1246fc8e2094cf131d" [label=""];
}

