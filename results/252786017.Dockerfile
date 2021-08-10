[app/sources/252786017.Dockerfile]
digraph {
  "sha256:17a9c8e202dfa93a42dc3a48c221e83eb4413a1f2bd3b570369d4e38cd9f0849" [label="local://context" shape="ellipse"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:3805b035b3a86c4695942489208d78091476c37170a9ab85e0f3dfbfadddb5fa" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:7d7cbfb5e0d40238c1ddd20466dfd37d051dc10f10c5dd82a405808f41930328" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6eb217cc367673fba2a7fbb3a9a431113c032e821fcaa7fafbea039df08b0d68" [label="sha256:6eb217cc367673fba2a7fbb3a9a431113c032e821fcaa7fafbea039df08b0d68" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:3805b035b3a86c4695942489208d78091476c37170a9ab85e0f3dfbfadddb5fa" [label=""];
  "sha256:3805b035b3a86c4695942489208d78091476c37170a9ab85e0f3dfbfadddb5fa" -> "sha256:7d7cbfb5e0d40238c1ddd20466dfd37d051dc10f10c5dd82a405808f41930328" [label=""];
  "sha256:17a9c8e202dfa93a42dc3a48c221e83eb4413a1f2bd3b570369d4e38cd9f0849" -> "sha256:7d7cbfb5e0d40238c1ddd20466dfd37d051dc10f10c5dd82a405808f41930328" [label=""];
  "sha256:7d7cbfb5e0d40238c1ddd20466dfd37d051dc10f10c5dd82a405808f41930328" -> "sha256:6eb217cc367673fba2a7fbb3a9a431113c032e821fcaa7fafbea039df08b0d68" [label=""];
}

