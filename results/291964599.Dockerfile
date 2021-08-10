[app/sources/291964599.Dockerfile]
digraph {
  "sha256:57418024b824e07b57b7aea85c4e13e5ecba12a975495ff5f0663795f915a7a3" [label="docker-image://docker.io/library/runc_test:latest" shape="ellipse"];
  "sha256:9b0b2227e14bc9e55a136d3e7705d0fca9861d2489be26366628ce30d1b08b17" [label="local://context" shape="ellipse"];
  "sha256:4953fced3784240986c37fd7ec5dbbae87e5989a6bcb8e543b3b7f0b18e42188" [label="copy{src=/, dest=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:1ef074e540315641f2a5f8b134e68772113b63f7659930bbaf050a1969533841" [label="/bin/sh -c make" shape="box"];
  "sha256:6e0215097188dff750be6657b80dc50af7ffe272d29a0159ce32c41181ce9ccb" [label="sha256:6e0215097188dff750be6657b80dc50af7ffe272d29a0159ce32c41181ce9ccb" shape="plaintext"];
  "sha256:57418024b824e07b57b7aea85c4e13e5ecba12a975495ff5f0663795f915a7a3" -> "sha256:4953fced3784240986c37fd7ec5dbbae87e5989a6bcb8e543b3b7f0b18e42188" [label=""];
  "sha256:9b0b2227e14bc9e55a136d3e7705d0fca9861d2489be26366628ce30d1b08b17" -> "sha256:4953fced3784240986c37fd7ec5dbbae87e5989a6bcb8e543b3b7f0b18e42188" [label=""];
  "sha256:4953fced3784240986c37fd7ec5dbbae87e5989a6bcb8e543b3b7f0b18e42188" -> "sha256:1ef074e540315641f2a5f8b134e68772113b63f7659930bbaf050a1969533841" [label=""];
  "sha256:1ef074e540315641f2a5f8b134e68772113b63f7659930bbaf050a1969533841" -> "sha256:6e0215097188dff750be6657b80dc50af7ffe272d29a0159ce32c41181ce9ccb" [label=""];
}

