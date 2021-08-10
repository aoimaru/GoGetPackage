[app/sources/298030344.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:9927590a091993568cccc115c7c615e2ad1f19b6100c9c49731d39672ccab781" [label="local://context" shape="ellipse"];
  "sha256:1eeff4a35cce7c809c6496365e6361c8a2fc9c73eb8e358533cc6403510ee331" [label="copy{src=/gobbler, dest=/usr/local/bin/},copy{src=/client/cli/gobbler-cli, dest=/usr/local/bin/}" shape="note"];
  "sha256:42a8677c09f26aa1ed4937bdee36a1f2b89989985bd6b319452acfc5d375ee03" [label="/bin/sh -c mkdir -p /var/lib/gobbler" shape="box"];
  "sha256:f57b191fe3e5da5bf2127dd470f6944bd478a376239b9fe6a709cac050965987" [label="sha256:f57b191fe3e5da5bf2127dd470f6944bd478a376239b9fe6a709cac050965987" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:1eeff4a35cce7c809c6496365e6361c8a2fc9c73eb8e358533cc6403510ee331" [label=""];
  "sha256:9927590a091993568cccc115c7c615e2ad1f19b6100c9c49731d39672ccab781" -> "sha256:1eeff4a35cce7c809c6496365e6361c8a2fc9c73eb8e358533cc6403510ee331" [label=""];
  "sha256:1eeff4a35cce7c809c6496365e6361c8a2fc9c73eb8e358533cc6403510ee331" -> "sha256:42a8677c09f26aa1ed4937bdee36a1f2b89989985bd6b319452acfc5d375ee03" [label=""];
  "sha256:42a8677c09f26aa1ed4937bdee36a1f2b89989985bd6b319452acfc5d375ee03" -> "sha256:f57b191fe3e5da5bf2127dd470f6944bd478a376239b9fe6a709cac050965987" [label=""];
}

