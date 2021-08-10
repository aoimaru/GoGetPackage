[app/sources/323145910.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:6229b27e568bc1297db1dc9b657e1b482ae1f886a0c4567e4b0d48f78e115734" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:bdece3aeaa4a095025f1ee8825efdab4acfefcd86006ca8db4c4ac7c47e49483" [label="local://context" shape="ellipse"];
  "sha256:679534370d04d726028f95cf5fb8b56186285ef72f7f98a2ed6b9234f4b8e5f4" [label="copy{src=/build/rancher-letsencrypt-linux-amd64, dest=/usr/bin/rancher-letsencrypt}" shape="note"];
  "sha256:dc0542f6da66f3e24b76a32f1eb4af5dcd4fcf3a3e5282b27e8dfd57f925fb39" [label="/bin/sh -c chmod +x /usr/bin/rancher-letsencrypt" shape="box"];
  "sha256:2998f9277377bae0f62cd05d2b1a82122c0a236626fd31b222c2ba49e999cd37" [label="sha256:2998f9277377bae0f62cd05d2b1a82122c0a236626fd31b222c2ba49e999cd37" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:6229b27e568bc1297db1dc9b657e1b482ae1f886a0c4567e4b0d48f78e115734" [label=""];
  "sha256:6229b27e568bc1297db1dc9b657e1b482ae1f886a0c4567e4b0d48f78e115734" -> "sha256:679534370d04d726028f95cf5fb8b56186285ef72f7f98a2ed6b9234f4b8e5f4" [label=""];
  "sha256:bdece3aeaa4a095025f1ee8825efdab4acfefcd86006ca8db4c4ac7c47e49483" -> "sha256:679534370d04d726028f95cf5fb8b56186285ef72f7f98a2ed6b9234f4b8e5f4" [label=""];
  "sha256:679534370d04d726028f95cf5fb8b56186285ef72f7f98a2ed6b9234f4b8e5f4" -> "sha256:dc0542f6da66f3e24b76a32f1eb4af5dcd4fcf3a3e5282b27e8dfd57f925fb39" [label=""];
  "sha256:dc0542f6da66f3e24b76a32f1eb4af5dcd4fcf3a3e5282b27e8dfd57f925fb39" -> "sha256:2998f9277377bae0f62cd05d2b1a82122c0a236626fd31b222c2ba49e999cd37" [label=""];
}

