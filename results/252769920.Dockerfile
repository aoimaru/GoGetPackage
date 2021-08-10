[app/sources/252769920.Dockerfile]
digraph {
  "sha256:ce9c0e69a6a105b887f7e5147e935f655dd6f8d181b038c1ea9482bf6373ad03" [label="docker-image://docker.io/library/maven:3-jdk-7" shape="ellipse"];
  "sha256:3c645417b2167f0537f35dc5134bfa34ca87b49a24d0710132233bd855c1f08d" [label="/bin/sh -c git clone https://github.com/swagger-api/swagger-codegen.git" shape="box"];
  "sha256:eba655774f14390d6919de334a12380df3f52ce985ba4f0eb5eec3320990c91a" [label="mkdir{path=/swagger-codegen}" shape="note"];
  "sha256:455b780fd55cb9de3a6f91d5aa0dd7a0246661e869e9900a880a2df49045ad1b" [label="/bin/sh -c mvn package" shape="box"];
  "sha256:aa3c01d2005e1f7e55c588e937a726c0c9e3e761f322ac1954fc85926baed155" [label="sha256:aa3c01d2005e1f7e55c588e937a726c0c9e3e761f322ac1954fc85926baed155" shape="plaintext"];
  "sha256:ce9c0e69a6a105b887f7e5147e935f655dd6f8d181b038c1ea9482bf6373ad03" -> "sha256:3c645417b2167f0537f35dc5134bfa34ca87b49a24d0710132233bd855c1f08d" [label=""];
  "sha256:3c645417b2167f0537f35dc5134bfa34ca87b49a24d0710132233bd855c1f08d" -> "sha256:eba655774f14390d6919de334a12380df3f52ce985ba4f0eb5eec3320990c91a" [label=""];
  "sha256:eba655774f14390d6919de334a12380df3f52ce985ba4f0eb5eec3320990c91a" -> "sha256:455b780fd55cb9de3a6f91d5aa0dd7a0246661e869e9900a880a2df49045ad1b" [label=""];
  "sha256:455b780fd55cb9de3a6f91d5aa0dd7a0246661e869e9900a880a2df49045ad1b" -> "sha256:aa3c01d2005e1f7e55c588e937a726c0c9e3e761f322ac1954fc85926baed155" [label=""];
}

