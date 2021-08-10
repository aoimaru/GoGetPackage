[app/sources/305987616.Dockerfile]
digraph {
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" [label="docker-image://docker.io/library/golang:1.5" shape="ellipse"];
  "sha256:a1288f1c15a065669893e24a95ab88aa33da16fba26ab81e597db33a1cf87ffb" [label="local://context" shape="ellipse"];
  "sha256:f01b96c336122386e1128977f914650f170d164f2d92cbf1ed83408e2dd4f8f6" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:ad1419b04fa1c2364c1cff46ac5c3ff8f7941216a53b57a2245166d5d408263d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:767a5a32150fd7eb53221e420e336d151ad1d0322b6bbd621d997ecf415b0f49" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:32f078c2199b8566a0c7b43f100af434de6616c1820ca97a3a7c9d123b5689ca" [label="sha256:32f078c2199b8566a0c7b43f100af434de6616c1820ca97a3a7c9d123b5689ca" shape="plaintext"];
  "sha256:5ac6e5b4bd1e0ab1d990c8afdf543cce5ebff86ae2f82766be2ba1ebf11f194f" -> "sha256:f01b96c336122386e1128977f914650f170d164f2d92cbf1ed83408e2dd4f8f6" [label=""];
  "sha256:a1288f1c15a065669893e24a95ab88aa33da16fba26ab81e597db33a1cf87ffb" -> "sha256:f01b96c336122386e1128977f914650f170d164f2d92cbf1ed83408e2dd4f8f6" [label=""];
  "sha256:f01b96c336122386e1128977f914650f170d164f2d92cbf1ed83408e2dd4f8f6" -> "sha256:ad1419b04fa1c2364c1cff46ac5c3ff8f7941216a53b57a2245166d5d408263d" [label=""];
  "sha256:ad1419b04fa1c2364c1cff46ac5c3ff8f7941216a53b57a2245166d5d408263d" -> "sha256:767a5a32150fd7eb53221e420e336d151ad1d0322b6bbd621d997ecf415b0f49" [label=""];
  "sha256:767a5a32150fd7eb53221e420e336d151ad1d0322b6bbd621d997ecf415b0f49" -> "sha256:32f078c2199b8566a0c7b43f100af434de6616c1820ca97a3a7c9d123b5689ca" [label=""];
}

