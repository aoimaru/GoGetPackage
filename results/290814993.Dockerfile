[app/sources/290814993.Dockerfile]
digraph {
  "sha256:ad7bc7bf9731f41093899a46ad0f998f539e9e2a720dbc763a2866925ac5f2ee" [label="docker-image://docker.io/library/node:10.16.0-stretch@sha256:523f767f8907f002316d3334bdb9d1154c7c6f6157c7aed3de5305726a963616" shape="ellipse"];
  "sha256:7ae928a6ad407c334bb7bea06b7b780b3893a30f05b1768c8decbea2808997b8" [label="mkdir{path=/app}" shape="note"];
  "sha256:5531d780ee4a70c2a956900b0641c09086594a713f4345bb3ef0659fd23b9a36" [label="local://context" shape="ellipse"];
  "sha256:ef93aaaf2580e161e762bcc26b587bda22b1aaac0738d33a48de2803729a126c" [label="copy{src=/build.sh, dest=/cont/script/}" shape="note"];
  "sha256:b3097edad14c24a78c1925ddd683538cb9273d23a8ce5935ec8b6b71ee23e9c0" [label="/bin/sh -c set -ex     && chmod +x /cont/script/build.sh" shape="box"];
  "sha256:53401a2b2632d3caf06b2ccc8fac88961d8b99a567073c360d789be650b7ece0" [label="sha256:53401a2b2632d3caf06b2ccc8fac88961d8b99a567073c360d789be650b7ece0" shape="plaintext"];
  "sha256:ad7bc7bf9731f41093899a46ad0f998f539e9e2a720dbc763a2866925ac5f2ee" -> "sha256:7ae928a6ad407c334bb7bea06b7b780b3893a30f05b1768c8decbea2808997b8" [label=""];
  "sha256:7ae928a6ad407c334bb7bea06b7b780b3893a30f05b1768c8decbea2808997b8" -> "sha256:ef93aaaf2580e161e762bcc26b587bda22b1aaac0738d33a48de2803729a126c" [label=""];
  "sha256:5531d780ee4a70c2a956900b0641c09086594a713f4345bb3ef0659fd23b9a36" -> "sha256:ef93aaaf2580e161e762bcc26b587bda22b1aaac0738d33a48de2803729a126c" [label=""];
  "sha256:ef93aaaf2580e161e762bcc26b587bda22b1aaac0738d33a48de2803729a126c" -> "sha256:b3097edad14c24a78c1925ddd683538cb9273d23a8ce5935ec8b6b71ee23e9c0" [label=""];
  "sha256:b3097edad14c24a78c1925ddd683538cb9273d23a8ce5935ec8b6b71ee23e9c0" -> "sha256:53401a2b2632d3caf06b2ccc8fac88961d8b99a567073c360d789be650b7ece0" [label=""];
}

