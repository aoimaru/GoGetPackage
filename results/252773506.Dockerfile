[app/sources/252773506.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:c15ba7f4fd270c24335e228ef52bd395aed67a64f0ad8be4b2a67b372a57dd42" [label="/bin/sh -c apk -U upgrade && apk add -U --no-cache openssl util-linux strongswan bash && rm -rf /var/cache/apk/* && rm -f /etc/ipsec.secrets" shape="box"];
  "sha256:8407f71dbc39af4a723eddcbc889fa082d4b8dc817c1a74dd18d7f6af2d3132e" [label="local://context" shape="ellipse"];
  "sha256:f8f44e9b94b7c93b113682762055a853620cda10241d0a4ef87e51ce51f08547" [label="copy{src=/etc/*, dest=/etc/}" shape="note"];
  "sha256:91c96067e85ccc9e8da16b98b2eb8650ab7f6a2b3e2979753a01004b9f860dc8" [label="copy{src=/bin/*, dest=/usr/bin/}" shape="note"];
  "sha256:252e6a0d615c3f8f3ebe55b43145b010cc6ed99448e1a52a331ba59737d95244" [label="sha256:252e6a0d615c3f8f3ebe55b43145b010cc6ed99448e1a52a331ba59737d95244" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:c15ba7f4fd270c24335e228ef52bd395aed67a64f0ad8be4b2a67b372a57dd42" [label=""];
  "sha256:c15ba7f4fd270c24335e228ef52bd395aed67a64f0ad8be4b2a67b372a57dd42" -> "sha256:f8f44e9b94b7c93b113682762055a853620cda10241d0a4ef87e51ce51f08547" [label=""];
  "sha256:8407f71dbc39af4a723eddcbc889fa082d4b8dc817c1a74dd18d7f6af2d3132e" -> "sha256:f8f44e9b94b7c93b113682762055a853620cda10241d0a4ef87e51ce51f08547" [label=""];
  "sha256:f8f44e9b94b7c93b113682762055a853620cda10241d0a4ef87e51ce51f08547" -> "sha256:91c96067e85ccc9e8da16b98b2eb8650ab7f6a2b3e2979753a01004b9f860dc8" [label=""];
  "sha256:8407f71dbc39af4a723eddcbc889fa082d4b8dc817c1a74dd18d7f6af2d3132e" -> "sha256:91c96067e85ccc9e8da16b98b2eb8650ab7f6a2b3e2979753a01004b9f860dc8" [label=""];
  "sha256:91c96067e85ccc9e8da16b98b2eb8650ab7f6a2b3e2979753a01004b9f860dc8" -> "sha256:252e6a0d615c3f8f3ebe55b43145b010cc6ed99448e1a52a331ba59737d95244" [label=""];
}

