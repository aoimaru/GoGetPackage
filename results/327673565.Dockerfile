[app/sources/327673565.Dockerfile]
digraph {
  "sha256:3d3e413e9e183f3843d441ce65bf8cad55265cef41cf5ea1b744f9c806b9c03f" [label="docker-image://docker.io/jjmerelo/alpine-perl6@sha256:558028b11671ec49294cbc107e2cb9d5df6f799e8c102151528e52a244206329" shape="ellipse"];
  "sha256:7f8f031c012b3064f7420c719673671bd788dd16eff6d95101cdb57993c978e4" [label="mkdir{path=/code}" shape="note"];
  "sha256:b8351f8f720494aaffeaa0f8415083a331cd7974f3e3134ab110474cb9b8364e" [label="local://context" shape="ellipse"];
  "sha256:5fb4e3da5822fe004cae5708c865d55528e2d08343491723e49c8a585adbf1d4" [label="copy{src=/META6.json, dest=/code/}" shape="note"];
  "sha256:0c85b4ce04b70fcd8db78fcf59ca72a91d567fb26cbdd09be4678e7e723d0246" [label="/bin/sh -c apk add gcc libc-dev libuuid sqlite-libs" shape="box"];
  "sha256:db4d0c4e54552e6a3d50d46dcd4d97931558593a0118c268b4f904ac793431a5" [label="/bin/sh -c zef install \"NativeLibs:ver<0.0.7>:auth<github:salortiz>\" --force-test" shape="box"];
  "sha256:207ffc1e7db63739ffeb7de98dc1f61d83fc3b2c6df6a044f8718b1e9387bb4a" [label="/bin/sh -c zef install --deps-only ." shape="box"];
  "sha256:6404aa6f2cdc4aa0bff15b150c374fe1da3b53025fe7f7b84251d248b7d2bce1" [label="sha256:6404aa6f2cdc4aa0bff15b150c374fe1da3b53025fe7f7b84251d248b7d2bce1" shape="plaintext"];
  "sha256:3d3e413e9e183f3843d441ce65bf8cad55265cef41cf5ea1b744f9c806b9c03f" -> "sha256:7f8f031c012b3064f7420c719673671bd788dd16eff6d95101cdb57993c978e4" [label=""];
  "sha256:7f8f031c012b3064f7420c719673671bd788dd16eff6d95101cdb57993c978e4" -> "sha256:5fb4e3da5822fe004cae5708c865d55528e2d08343491723e49c8a585adbf1d4" [label=""];
  "sha256:b8351f8f720494aaffeaa0f8415083a331cd7974f3e3134ab110474cb9b8364e" -> "sha256:5fb4e3da5822fe004cae5708c865d55528e2d08343491723e49c8a585adbf1d4" [label=""];
  "sha256:5fb4e3da5822fe004cae5708c865d55528e2d08343491723e49c8a585adbf1d4" -> "sha256:0c85b4ce04b70fcd8db78fcf59ca72a91d567fb26cbdd09be4678e7e723d0246" [label=""];
  "sha256:0c85b4ce04b70fcd8db78fcf59ca72a91d567fb26cbdd09be4678e7e723d0246" -> "sha256:db4d0c4e54552e6a3d50d46dcd4d97931558593a0118c268b4f904ac793431a5" [label=""];
  "sha256:db4d0c4e54552e6a3d50d46dcd4d97931558593a0118c268b4f904ac793431a5" -> "sha256:207ffc1e7db63739ffeb7de98dc1f61d83fc3b2c6df6a044f8718b1e9387bb4a" [label=""];
  "sha256:207ffc1e7db63739ffeb7de98dc1f61d83fc3b2c6df6a044f8718b1e9387bb4a" -> "sha256:6404aa6f2cdc4aa0bff15b150c374fe1da3b53025fe7f7b84251d248b7d2bce1" [label=""];
}

