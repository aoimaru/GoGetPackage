[app/sources/382107545.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ee5df62f5ac81b14ed4d5a93eb16ddf91ccbe91b43b49d0976ab192eae997b57" [label="/bin/sh -c apt-get update   && apt-get install -y libglu1-mesa git curl unzip wget xz-utils lib32stdc++6   && apt-get clean" shape="box"];
  "sha256:2aad75cf354696a142be6e7eba2d449ab237e90f655a147a5eb093dd4687299d" [label="/bin/sh -c wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v${FLUTTER_VERSION}.tar.xz" shape="box"];
  "sha256:29cae67d2d5a3204148f90776401ba7e3c29e8af33dca97be22434a8092d55b1" [label="/bin/sh -c cd ${HOME} & tar xf /flutter_linux_v${FLUTTER_VERSION}.tar.xz" shape="box"];
  "sha256:0be5b296c247e81a772c616d64aa320b6e2a90a074d6a39a69d28b2ea05fbf49" [label="sha256:0be5b296c247e81a772c616d64aa320b6e2a90a074d6a39a69d28b2ea05fbf49" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:ee5df62f5ac81b14ed4d5a93eb16ddf91ccbe91b43b49d0976ab192eae997b57" [label=""];
  "sha256:ee5df62f5ac81b14ed4d5a93eb16ddf91ccbe91b43b49d0976ab192eae997b57" -> "sha256:2aad75cf354696a142be6e7eba2d449ab237e90f655a147a5eb093dd4687299d" [label=""];
  "sha256:2aad75cf354696a142be6e7eba2d449ab237e90f655a147a5eb093dd4687299d" -> "sha256:29cae67d2d5a3204148f90776401ba7e3c29e8af33dca97be22434a8092d55b1" [label=""];
  "sha256:29cae67d2d5a3204148f90776401ba7e3c29e8af33dca97be22434a8092d55b1" -> "sha256:0be5b296c247e81a772c616d64aa320b6e2a90a074d6a39a69d28b2ea05fbf49" [label=""];
}

