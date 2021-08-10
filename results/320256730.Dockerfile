[app/sources/320256730.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:31abec39c7e459a49019e79717ae6d3895c54bcda5de3a28bdc30457d05173a6" [label="/bin/sh -c apk update && apk upgrade \t&& apk add --no-cache alpine-sdk bash openssh-client \t&& apk add git" shape="box"];
  "sha256:d7a4190e0fb2fb7e2393a9152e7ad10493f9ba349e1ae801610a3eff456be011" [label="/bin/sh -c npm install" shape="box"];
  "sha256:666ea16cb8fc2a7c1ab3f1919f6c24acc18b9acc855fd4e0f60528e616be3aa8" [label="/bin/sh -c npm install -g retire" shape="box"];
  "sha256:687429aee2aa879a0eeb3eba9506707c021d866fffe85647eef74694f12f892c" [label="sha256:687429aee2aa879a0eeb3eba9506707c021d866fffe85647eef74694f12f892c" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:31abec39c7e459a49019e79717ae6d3895c54bcda5de3a28bdc30457d05173a6" [label=""];
  "sha256:31abec39c7e459a49019e79717ae6d3895c54bcda5de3a28bdc30457d05173a6" -> "sha256:d7a4190e0fb2fb7e2393a9152e7ad10493f9ba349e1ae801610a3eff456be011" [label=""];
  "sha256:d7a4190e0fb2fb7e2393a9152e7ad10493f9ba349e1ae801610a3eff456be011" -> "sha256:666ea16cb8fc2a7c1ab3f1919f6c24acc18b9acc855fd4e0f60528e616be3aa8" [label=""];
  "sha256:666ea16cb8fc2a7c1ab3f1919f6c24acc18b9acc855fd4e0f60528e616be3aa8" -> "sha256:687429aee2aa879a0eeb3eba9506707c021d866fffe85647eef74694f12f892c" [label=""];
}

