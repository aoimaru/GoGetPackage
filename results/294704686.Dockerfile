[app/sources/294704686.Dockerfile]
digraph {
  "sha256:a082b1863e9d2ef9f188563291f8e2399bf59af824b49e7d336af4e5cd072d45" [label="docker-image://docker.io/library/elixir:1.5-alpine" shape="ellipse"];
  "sha256:93586a3588119fcb7178bb58b8d46011f082484e42f0d84534e1b5758dba9bf8" [label="/bin/sh -c set -xe     && apk add -U inotify-tools build-base     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:dfee8ab7729834a1650f10385727446369b8182d752ba019ac06204ece7afb2e" [label="/bin/sh -c mix local.hex --force && mix local.rebar --force" shape="box"];
  "sha256:b2ce7d0b643584893faa6fe07d549cb22fad3d3475040f394293110d063e1773" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:c9f9388a504ce76308f97ab8b656ea88823e100ef60135fc67ed51062e540bdf" [label="local://context" shape="ellipse"];
  "sha256:38f8a6e29df580859118ce2c62dc6cccb140b1178454136d2b959584fb834509" [label="copy{src=/config, dest=/var/app/config}" shape="note"];
  "sha256:f7a6d0e295447d48afdf072c0ed6954077810b34271a35246b7fbe9d6476b9b1" [label="copy{src=/mix.exs, dest=/var/app/mix.exs}" shape="note"];
  "sha256:1cd2d98a3d0ceaa7a969df5c2f37cd9e8f9d9d67758adf256e24cd6d6eb024b1" [label="copy{src=/mix.lock, dest=/var/app/mix.lock}" shape="note"];
  "sha256:950e00f05f44918dc4d87656ba6e07a2b95cf7f54e41a026cc0136f839ce58f8" [label="copy{src=/lib, dest=/var/app/lib}" shape="note"];
  "sha256:87d36fa6dc2ab205fd800e3d2961d9f52eeff43432143b1b38e5a7741e724ae0" [label="/bin/sh -c mix do deps.get, deps.compile, compile" shape="box"];
  "sha256:4c2d030654857c9adb3886937c298c32002d2c44f2c9ce06b5a1197930bfd297" [label="sha256:4c2d030654857c9adb3886937c298c32002d2c44f2c9ce06b5a1197930bfd297" shape="plaintext"];
  "sha256:a082b1863e9d2ef9f188563291f8e2399bf59af824b49e7d336af4e5cd072d45" -> "sha256:93586a3588119fcb7178bb58b8d46011f082484e42f0d84534e1b5758dba9bf8" [label=""];
  "sha256:93586a3588119fcb7178bb58b8d46011f082484e42f0d84534e1b5758dba9bf8" -> "sha256:dfee8ab7729834a1650f10385727446369b8182d752ba019ac06204ece7afb2e" [label=""];
  "sha256:dfee8ab7729834a1650f10385727446369b8182d752ba019ac06204ece7afb2e" -> "sha256:b2ce7d0b643584893faa6fe07d549cb22fad3d3475040f394293110d063e1773" [label=""];
  "sha256:b2ce7d0b643584893faa6fe07d549cb22fad3d3475040f394293110d063e1773" -> "sha256:38f8a6e29df580859118ce2c62dc6cccb140b1178454136d2b959584fb834509" [label=""];
  "sha256:c9f9388a504ce76308f97ab8b656ea88823e100ef60135fc67ed51062e540bdf" -> "sha256:38f8a6e29df580859118ce2c62dc6cccb140b1178454136d2b959584fb834509" [label=""];
  "sha256:38f8a6e29df580859118ce2c62dc6cccb140b1178454136d2b959584fb834509" -> "sha256:f7a6d0e295447d48afdf072c0ed6954077810b34271a35246b7fbe9d6476b9b1" [label=""];
  "sha256:c9f9388a504ce76308f97ab8b656ea88823e100ef60135fc67ed51062e540bdf" -> "sha256:f7a6d0e295447d48afdf072c0ed6954077810b34271a35246b7fbe9d6476b9b1" [label=""];
  "sha256:f7a6d0e295447d48afdf072c0ed6954077810b34271a35246b7fbe9d6476b9b1" -> "sha256:1cd2d98a3d0ceaa7a969df5c2f37cd9e8f9d9d67758adf256e24cd6d6eb024b1" [label=""];
  "sha256:c9f9388a504ce76308f97ab8b656ea88823e100ef60135fc67ed51062e540bdf" -> "sha256:1cd2d98a3d0ceaa7a969df5c2f37cd9e8f9d9d67758adf256e24cd6d6eb024b1" [label=""];
  "sha256:1cd2d98a3d0ceaa7a969df5c2f37cd9e8f9d9d67758adf256e24cd6d6eb024b1" -> "sha256:950e00f05f44918dc4d87656ba6e07a2b95cf7f54e41a026cc0136f839ce58f8" [label=""];
  "sha256:c9f9388a504ce76308f97ab8b656ea88823e100ef60135fc67ed51062e540bdf" -> "sha256:950e00f05f44918dc4d87656ba6e07a2b95cf7f54e41a026cc0136f839ce58f8" [label=""];
  "sha256:950e00f05f44918dc4d87656ba6e07a2b95cf7f54e41a026cc0136f839ce58f8" -> "sha256:87d36fa6dc2ab205fd800e3d2961d9f52eeff43432143b1b38e5a7741e724ae0" [label=""];
  "sha256:87d36fa6dc2ab205fd800e3d2961d9f52eeff43432143b1b38e5a7741e724ae0" -> "sha256:4c2d030654857c9adb3886937c298c32002d2c44f2c9ce06b5a1197930bfd297" [label=""];
}

