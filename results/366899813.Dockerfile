[app/sources/366899813.Dockerfile]
digraph {
  "sha256:df2362834c22daf33e4803737ae3392af577a00f70dd0e86f383a052b9f095a7" [label="docker-image://docker.io/library/alpine:3.6@sha256:66790a2b79e1ea3e1dabac43990c54aca5d1ddf268d9a5a0285e4167c8b24475" shape="ellipse"];
  "sha256:f94f0be8bff688c2ba00f9348e503343b5d859667a79002ebda2468548d3768a" [label="/bin/sh -c apk add --update nodejs \t           nodejs-npm" shape="box"];
  "sha256:64461952dc497e3fabac31410764e86baa046c8eb21ef11ce36c6b7cf9179409" [label="local://context" shape="ellipse"];
  "sha256:8f9aab94d942334491210900c475a4ddb47322cc67d40e04e8b3226ab72d54fb" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:49326d75239834df294e2e857b5983fac4caa078d9a6ff8dac7516332df6ba0c" [label="mkdir{path=/app}" shape="note"];
  "sha256:79341cae4d15c50b210fb478053f54d0636575a64136d7590caf6cf2f6683f34" [label="/bin/sh -c apk --update add  --virtual native-dep   make gcc g++ python libgcc libstdc++ git &&   npm  install &&   apk del native-dep" shape="box"];
  "sha256:ef8e0a645881dccd41467cd72b9540553b19be91823a687ab14da5ddc9495dfc" [label="/bin/sh -c apk add bash" shape="box"];
  "sha256:18477310a1f5ff4a7296d8c8df2c266fbca17fa829c964032a75993a2783f88a" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a41feb441463ad0b7db3f04a7c69ee8c82b0c66875d07e1d036589dd0a7fac69" [label="/bin/sh -c npm install -g nodemon" shape="box"];
  "sha256:4bb7c3b21fa347accd5b7ea377dab48155a35c4f09589bfc97cbb43df3f48383" [label="sha256:4bb7c3b21fa347accd5b7ea377dab48155a35c4f09589bfc97cbb43df3f48383" shape="plaintext"];
  "sha256:df2362834c22daf33e4803737ae3392af577a00f70dd0e86f383a052b9f095a7" -> "sha256:f94f0be8bff688c2ba00f9348e503343b5d859667a79002ebda2468548d3768a" [label=""];
  "sha256:f94f0be8bff688c2ba00f9348e503343b5d859667a79002ebda2468548d3768a" -> "sha256:8f9aab94d942334491210900c475a4ddb47322cc67d40e04e8b3226ab72d54fb" [label=""];
  "sha256:64461952dc497e3fabac31410764e86baa046c8eb21ef11ce36c6b7cf9179409" -> "sha256:8f9aab94d942334491210900c475a4ddb47322cc67d40e04e8b3226ab72d54fb" [label=""];
  "sha256:8f9aab94d942334491210900c475a4ddb47322cc67d40e04e8b3226ab72d54fb" -> "sha256:49326d75239834df294e2e857b5983fac4caa078d9a6ff8dac7516332df6ba0c" [label=""];
  "sha256:49326d75239834df294e2e857b5983fac4caa078d9a6ff8dac7516332df6ba0c" -> "sha256:79341cae4d15c50b210fb478053f54d0636575a64136d7590caf6cf2f6683f34" [label=""];
  "sha256:79341cae4d15c50b210fb478053f54d0636575a64136d7590caf6cf2f6683f34" -> "sha256:ef8e0a645881dccd41467cd72b9540553b19be91823a687ab14da5ddc9495dfc" [label=""];
  "sha256:ef8e0a645881dccd41467cd72b9540553b19be91823a687ab14da5ddc9495dfc" -> "sha256:18477310a1f5ff4a7296d8c8df2c266fbca17fa829c964032a75993a2783f88a" [label=""];
  "sha256:64461952dc497e3fabac31410764e86baa046c8eb21ef11ce36c6b7cf9179409" -> "sha256:18477310a1f5ff4a7296d8c8df2c266fbca17fa829c964032a75993a2783f88a" [label=""];
  "sha256:18477310a1f5ff4a7296d8c8df2c266fbca17fa829c964032a75993a2783f88a" -> "sha256:a41feb441463ad0b7db3f04a7c69ee8c82b0c66875d07e1d036589dd0a7fac69" [label=""];
  "sha256:a41feb441463ad0b7db3f04a7c69ee8c82b0c66875d07e1d036589dd0a7fac69" -> "sha256:4bb7c3b21fa347accd5b7ea377dab48155a35c4f09589bfc97cbb43df3f48383" [label=""];
}

