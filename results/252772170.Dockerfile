[app/sources/252772170.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:5c2896f45c7aacb7ce934e6244677bb1da80d14c14b362cb5b43119861d548d9" [label="/bin/sh -c apt-get update -y && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends git curl wget vim nano unzip apt-transport-https ca-certificates software-properties-common libmemcached-dev libz-dev libpq-dev libjpeg-dev libpng12-dev libfreetype6-dev libssl-dev libmcrypt-dev libxrender1 libfontconfig1 libxext6 libxml2-dev openssh-server ssh rsync" shape="box"];
  "sha256:06c181ba283d725dd8a009f92cf4397ff4a2680db4434bd798708d39dec971da" [label="/bin/sh -c groupadd --gid $USER_PGID $USER_NAME && useradd --uid $USER_PUID \\--gid $USER_NAME -m $USER_NAME" shape="box"];
  "sha256:decb41dd41aefaf036cfa1aabf2bcff8b939ee729d299129f89daf093adbb6ef" [label="sha256:decb41dd41aefaf036cfa1aabf2bcff8b939ee729d299129f89daf093adbb6ef" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:5c2896f45c7aacb7ce934e6244677bb1da80d14c14b362cb5b43119861d548d9" [label=""];
  "sha256:5c2896f45c7aacb7ce934e6244677bb1da80d14c14b362cb5b43119861d548d9" -> "sha256:06c181ba283d725dd8a009f92cf4397ff4a2680db4434bd798708d39dec971da" [label=""];
  "sha256:06c181ba283d725dd8a009f92cf4397ff4a2680db4434bd798708d39dec971da" -> "sha256:decb41dd41aefaf036cfa1aabf2bcff8b939ee729d299129f89daf093adbb6ef" [label=""];
}

