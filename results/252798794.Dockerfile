[app/sources/252798794.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:dc3b00f518d38492bc2fab07fe0bf46f320a13788e4bb6a5a872fbde24fc9942" [label="/bin/sh -c apt-get update &&apt-get install --no-install-recommends -y ruby-dev rubygems git curl &&apt-get clean -y && rm -rf /var/lib/apt/lists/* &&gem install dpl" shape="box"];
  "sha256:5c2ede2599c9f9bcef7f7fc8639edb2df3f4229c624fc9140bce9650b993cc53" [label="sha256:5c2ede2599c9f9bcef7f7fc8639edb2df3f4229c624fc9140bce9650b993cc53" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:dc3b00f518d38492bc2fab07fe0bf46f320a13788e4bb6a5a872fbde24fc9942" [label=""];
  "sha256:dc3b00f518d38492bc2fab07fe0bf46f320a13788e4bb6a5a872fbde24fc9942" -> "sha256:5c2ede2599c9f9bcef7f7fc8639edb2df3f4229c624fc9140bce9650b993cc53" [label=""];
}

