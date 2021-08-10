[app/sources/384952304.Dockerfile]
digraph {
  "sha256:29c56e83caba56a4db5d0bf97fcf6e7eace1ca19f5dd6359d3eedcb873082c2c" [label="docker-image://docker.io/library/ruby:alpine" shape="ellipse"];
  "sha256:bd935e0ab5369b853e80dcf631a7b998d7cfcd62dd205c568c63698a6045a2c7" [label="local://context" shape="ellipse"];
  "sha256:9f0f244f92e2969f92b5eac81e5465b093c7261b7685ab88bfb6491d607f9ae1" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:928a82e3911e74b9326daed943a3fe7bbd0035cd55f310fa72b789b965671410" [label="mkdir{path=/app}" shape="note"];
  "sha256:53946f73ba4a8b65a216ca0edd1eec03abd4804005d4261fcc19f4a1bf3bed9d" [label="/bin/sh -c apk update &&   apk add build-base &&   bundle install --without development test &&   apk del build-base &&   rm /var/cache/apk/*.gz" shape="box"];
  "sha256:5f5cc42beaf2cf2b81d134352e8868f3997a74431119e5233b2098cfb40f35a6" [label="sha256:5f5cc42beaf2cf2b81d134352e8868f3997a74431119e5233b2098cfb40f35a6" shape="plaintext"];
  "sha256:29c56e83caba56a4db5d0bf97fcf6e7eace1ca19f5dd6359d3eedcb873082c2c" -> "sha256:9f0f244f92e2969f92b5eac81e5465b093c7261b7685ab88bfb6491d607f9ae1" [label=""];
  "sha256:bd935e0ab5369b853e80dcf631a7b998d7cfcd62dd205c568c63698a6045a2c7" -> "sha256:9f0f244f92e2969f92b5eac81e5465b093c7261b7685ab88bfb6491d607f9ae1" [label=""];
  "sha256:9f0f244f92e2969f92b5eac81e5465b093c7261b7685ab88bfb6491d607f9ae1" -> "sha256:928a82e3911e74b9326daed943a3fe7bbd0035cd55f310fa72b789b965671410" [label=""];
  "sha256:928a82e3911e74b9326daed943a3fe7bbd0035cd55f310fa72b789b965671410" -> "sha256:53946f73ba4a8b65a216ca0edd1eec03abd4804005d4261fcc19f4a1bf3bed9d" [label=""];
  "sha256:53946f73ba4a8b65a216ca0edd1eec03abd4804005d4261fcc19f4a1bf3bed9d" -> "sha256:5f5cc42beaf2cf2b81d134352e8868f3997a74431119e5233b2098cfb40f35a6" [label=""];
}

