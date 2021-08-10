[app/sources/147771601.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:bc1d5af8527ede9ad95814fb2bb44f7c9cf4c3484b8810fb0ce90c6d0901d255" [label="local://context" shape="ellipse"];
  "sha256:ec7babe0b628e5c310030b29b489dea1e343389ff099d47662c3e482890d5332" [label="copy{src=/etcdctl, dest=/},copy{src=/etcd-empty-dir-cleanup.sh, dest=/}" shape="note"];
  "sha256:56e120d8fe898237423e437889d849f804fbd79b3905b5f2d96ed6f769eee932" [label="/bin/sh -c chmod a+rx /etcdctl /etcd-empty-dir-cleanup.sh" shape="box"];
  "sha256:4932981d1f3429ae7e3b3209a605295655394d528d58fccd967a051b188d2a78" [label="sha256:4932981d1f3429ae7e3b3209a605295655394d528d58fccd967a051b188d2a78" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:ec7babe0b628e5c310030b29b489dea1e343389ff099d47662c3e482890d5332" [label=""];
  "sha256:bc1d5af8527ede9ad95814fb2bb44f7c9cf4c3484b8810fb0ce90c6d0901d255" -> "sha256:ec7babe0b628e5c310030b29b489dea1e343389ff099d47662c3e482890d5332" [label=""];
  "sha256:ec7babe0b628e5c310030b29b489dea1e343389ff099d47662c3e482890d5332" -> "sha256:56e120d8fe898237423e437889d849f804fbd79b3905b5f2d96ed6f769eee932" [label=""];
  "sha256:56e120d8fe898237423e437889d849f804fbd79b3905b5f2d96ed6f769eee932" -> "sha256:4932981d1f3429ae7e3b3209a605295655394d528d58fccd967a051b188d2a78" [label=""];
}

