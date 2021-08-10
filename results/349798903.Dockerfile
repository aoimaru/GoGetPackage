[app/sources/349798903.Dockerfile]
digraph {
  "sha256:c33eb222769713f8e5f7e49550354fe8c7ef4f0bf43f40530ac9aa9fe95e121b" [label="docker-image://docker.io/dockercore/boot2docker:docker" shape="ellipse"];
  "sha256:e6fdb564320832c18c407c75f53e085ab3ad709389472a8d5b1202985a1df40e" [label="/bin/sh -c { \t\techo 'VARIANT=\"Generic\"'; \t\techo 'VARIANT_ID=generic'; \t} >> /etc/os-release" shape="box"];
  "sha256:36720ee85797fc9f2967cfc64b9471cb7032b7b9adafb2e18031f08a10354100" [label="/bin/sh -c echo ' (generic)' >> /tmp/iso/version" shape="box"];
  "sha256:9fa1f8d9b7f963b3d82333a82f3070fa6145b81a7fb38a09907c20459b3eefcc" [label="sha256:9fa1f8d9b7f963b3d82333a82f3070fa6145b81a7fb38a09907c20459b3eefcc" shape="plaintext"];
  "sha256:c33eb222769713f8e5f7e49550354fe8c7ef4f0bf43f40530ac9aa9fe95e121b" -> "sha256:e6fdb564320832c18c407c75f53e085ab3ad709389472a8d5b1202985a1df40e" [label=""];
  "sha256:e6fdb564320832c18c407c75f53e085ab3ad709389472a8d5b1202985a1df40e" -> "sha256:36720ee85797fc9f2967cfc64b9471cb7032b7b9adafb2e18031f08a10354100" [label=""];
  "sha256:36720ee85797fc9f2967cfc64b9471cb7032b7b9adafb2e18031f08a10354100" -> "sha256:9fa1f8d9b7f963b3d82333a82f3070fa6145b81a7fb38a09907c20459b3eefcc" [label=""];
}

