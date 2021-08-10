[app/sources/237421382.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f381024ede9f6020a8c4899daade286ef79c2639c1c84e76d2e2394b44e1dc5b" [label="/bin/sh -c apt-get update &&     apt-get install -y       build-essential       libbz2-dev       wget       zlib1g-dev &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cd8dd372ca55725513491997a6a1838ac8683c68f6b86c5826f4e15f7759ad92" [label="sha256:cd8dd372ca55725513491997a6a1838ac8683c68f6b86c5826f4e15f7759ad92" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f381024ede9f6020a8c4899daade286ef79c2639c1c84e76d2e2394b44e1dc5b" [label=""];
  "sha256:f381024ede9f6020a8c4899daade286ef79c2639c1c84e76d2e2394b44e1dc5b" -> "sha256:cd8dd372ca55725513491997a6a1838ac8683c68f6b86c5826f4e15f7759ad92" [label=""];
}

