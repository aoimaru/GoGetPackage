[app/sources/288211421.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:3199ad1bb12ceb2e0dd7c226bfb632d76b58df26722c1bce145394fdd8ee9571" [label="local://context" shape="ellipse"];
  "sha256:f10a2b3b293edbfc8e363f4df59f35dffbe3bf8bf0bc0f684dadd87a3a1a98fc" [label="copy{src=/etcdctl, dest=/},copy{src=/etcd-empty-dir-cleanup.sh, dest=/}" shape="note"];
  "sha256:fb65436ac68717a3fc7fa21ffab36ffa72d45b8f2a834746934c8657a9680906" [label="/bin/sh -c chmod a+rx /etcdctl /etcd-empty-dir-cleanup.sh" shape="box"];
  "sha256:13f0fe409efc7eb4d79fe9e756570d04b47fefd1e006f6427e25c4f909f1f040" [label="sha256:13f0fe409efc7eb4d79fe9e756570d04b47fefd1e006f6427e25c4f909f1f040" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:f10a2b3b293edbfc8e363f4df59f35dffbe3bf8bf0bc0f684dadd87a3a1a98fc" [label=""];
  "sha256:3199ad1bb12ceb2e0dd7c226bfb632d76b58df26722c1bce145394fdd8ee9571" -> "sha256:f10a2b3b293edbfc8e363f4df59f35dffbe3bf8bf0bc0f684dadd87a3a1a98fc" [label=""];
  "sha256:f10a2b3b293edbfc8e363f4df59f35dffbe3bf8bf0bc0f684dadd87a3a1a98fc" -> "sha256:fb65436ac68717a3fc7fa21ffab36ffa72d45b8f2a834746934c8657a9680906" [label=""];
  "sha256:fb65436ac68717a3fc7fa21ffab36ffa72d45b8f2a834746934c8657a9680906" -> "sha256:13f0fe409efc7eb4d79fe9e756570d04b47fefd1e006f6427e25c4f909f1f040" [label=""];
}

