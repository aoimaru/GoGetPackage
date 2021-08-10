[app/sources/335941609.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:782c3ff98aa5a1fc3f2e99756fe9126def3d2da5a84880d5c24dc2dd011bcd94" [label="mkdir{path=/myapp}" shape="note"];
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" [label="docker-image://docker.io/library/clojure:latest" shape="ellipse"];
  "sha256:b3d8fc7e8de43a12c0f818db9d991019d7bb2068e715ecf98f936c3e0a0a321c" [label="mkdir{path=/usr/src/myapp}" shape="note"];
  "sha256:ed790724ac4d36a4ecd9c2eb3f8e2a6670d5f105c2774233456ae0caa9a07ac8" [label="local://context" shape="ellipse"];
  "sha256:e5662add9744ac0181ab10913acd7e70c03c49b2d6b8d22c359dfb0b4371b254" [label="copy{src=/project.clj, dest=/usr/src/myapp/}" shape="note"];
  "sha256:2daafdde17233599f1541423947418987ab62ba90d5e7751d1ebc1e359831b15" [label="/bin/sh -c lein deps" shape="box"];
  "sha256:27503da0bead2b4f121edfb36b0d6a2572725f3a3f0666c265312745f538c02b" [label="copy{src=/, dest=/usr/src/myapp}" shape="note"];
  "sha256:6739528c893a3c4f419fca286e0b5efa443e6b96ae86b72cf3cdd0a77eeaa4ea" [label="/bin/sh -c mv \"$(lein uberjar | sed -n 's/^Created \\(.*standalone\\.jar\\)/\\1/p')\" myapp-standalone.jar" shape="box"];
  "sha256:95b69bcb0b383b2b37894347184e62c62b2befbfeca72db035d24b8ef4a98425" [label="copy{src=/usr/src/myapp/myapp-standalone.jar, dest=/myapp/myapp.jar}" shape="note"];
  "sha256:529078083e396502a1fc106f371af9f0c058b34151cd51477978cd28c6e6cf9e" [label="sha256:529078083e396502a1fc106f371af9f0c058b34151cd51477978cd28c6e6cf9e" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:782c3ff98aa5a1fc3f2e99756fe9126def3d2da5a84880d5c24dc2dd011bcd94" [label=""];
  "sha256:f8c7400d747325d80547832e318fb7d41fff7878d625b9e22d3fcc556d8f2be3" -> "sha256:b3d8fc7e8de43a12c0f818db9d991019d7bb2068e715ecf98f936c3e0a0a321c" [label=""];
  "sha256:b3d8fc7e8de43a12c0f818db9d991019d7bb2068e715ecf98f936c3e0a0a321c" -> "sha256:e5662add9744ac0181ab10913acd7e70c03c49b2d6b8d22c359dfb0b4371b254" [label=""];
  "sha256:ed790724ac4d36a4ecd9c2eb3f8e2a6670d5f105c2774233456ae0caa9a07ac8" -> "sha256:e5662add9744ac0181ab10913acd7e70c03c49b2d6b8d22c359dfb0b4371b254" [label=""];
  "sha256:e5662add9744ac0181ab10913acd7e70c03c49b2d6b8d22c359dfb0b4371b254" -> "sha256:2daafdde17233599f1541423947418987ab62ba90d5e7751d1ebc1e359831b15" [label=""];
  "sha256:2daafdde17233599f1541423947418987ab62ba90d5e7751d1ebc1e359831b15" -> "sha256:27503da0bead2b4f121edfb36b0d6a2572725f3a3f0666c265312745f538c02b" [label=""];
  "sha256:ed790724ac4d36a4ecd9c2eb3f8e2a6670d5f105c2774233456ae0caa9a07ac8" -> "sha256:27503da0bead2b4f121edfb36b0d6a2572725f3a3f0666c265312745f538c02b" [label=""];
  "sha256:27503da0bead2b4f121edfb36b0d6a2572725f3a3f0666c265312745f538c02b" -> "sha256:6739528c893a3c4f419fca286e0b5efa443e6b96ae86b72cf3cdd0a77eeaa4ea" [label=""];
  "sha256:782c3ff98aa5a1fc3f2e99756fe9126def3d2da5a84880d5c24dc2dd011bcd94" -> "sha256:95b69bcb0b383b2b37894347184e62c62b2befbfeca72db035d24b8ef4a98425" [label=""];
  "sha256:6739528c893a3c4f419fca286e0b5efa443e6b96ae86b72cf3cdd0a77eeaa4ea" -> "sha256:95b69bcb0b383b2b37894347184e62c62b2befbfeca72db035d24b8ef4a98425" [label=""];
  "sha256:95b69bcb0b383b2b37894347184e62c62b2befbfeca72db035d24b8ef4a98425" -> "sha256:529078083e396502a1fc106f371af9f0c058b34151cd51477978cd28c6e6cf9e" [label=""];
}

