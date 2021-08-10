[app/sources/264400113.Dockerfile]
digraph {
  "sha256:da19f787a4c0a3fcc5df66e26b87bb79b9d84bc5ce26ab37ca82a8b26f56e6a2" [label="docker-image://docker.io/library/ubuntu:artful" shape="ellipse"];
  "sha256:337ad0dabb5038fe3d0eaf081445e6a2cc2ba8efe5a82b27e204428c8df58e48" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:fa6342300e237b1f4d9a8e9fcf7207a704db7868d65da200c74eafe5e530486c" [label="/bin/sh -c apt-get install -y debootstrap" shape="box"];
  "sha256:f694f455196f07a84fb4c07e74fbcf62def534011c2f35884398d900b13f9f4b" [label="/bin/sh -c apt-get install -dy zfsutils-linux python3-minimal" shape="box"];
  "sha256:c6cdf2e317f40b6e6a91d7f1eda5223d26751806b88a098abf8564ebf499650d" [label="sha256:c6cdf2e317f40b6e6a91d7f1eda5223d26751806b88a098abf8564ebf499650d" shape="plaintext"];
  "sha256:da19f787a4c0a3fcc5df66e26b87bb79b9d84bc5ce26ab37ca82a8b26f56e6a2" -> "sha256:337ad0dabb5038fe3d0eaf081445e6a2cc2ba8efe5a82b27e204428c8df58e48" [label=""];
  "sha256:337ad0dabb5038fe3d0eaf081445e6a2cc2ba8efe5a82b27e204428c8df58e48" -> "sha256:fa6342300e237b1f4d9a8e9fcf7207a704db7868d65da200c74eafe5e530486c" [label=""];
  "sha256:fa6342300e237b1f4d9a8e9fcf7207a704db7868d65da200c74eafe5e530486c" -> "sha256:f694f455196f07a84fb4c07e74fbcf62def534011c2f35884398d900b13f9f4b" [label=""];
  "sha256:f694f455196f07a84fb4c07e74fbcf62def534011c2f35884398d900b13f9f4b" -> "sha256:c6cdf2e317f40b6e6a91d7f1eda5223d26751806b88a098abf8564ebf499650d" [label=""];
}

