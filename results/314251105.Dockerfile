[app/sources/314251105.Dockerfile]
digraph {
  "sha256:0fa9d77ffba4c0cfb36bec29d2e0b02d36226b626b50f29355d5a97517be8e0b" [label="docker-image://docker.io/library/openjdk:8-jre-alpine@sha256:f362b165b870ef129cbe730f29065ff37399c0aa8bcab3e44b51c302938c9193" shape="ellipse"];
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine@sha256:94792824df2df33402f201713f932b58cb9de94a0cd524164a0f2283343547b3" shape="ellipse"];
  "sha256:555752eb965e670101be5c45966c41f8a7b3e5b0ec2ee0ed5a221feda875f93e" [label="local://context" shape="ellipse"];
  "sha256:bccd1b2deb4e40f44d8f6571f811c9abd07e576bc8c32e4427a78c13545df689" [label="copy{src=/Application.java, dest=/var/app/}" shape="note"];
  "sha256:1784c9d1fe5bf83ca739489f4785832156fb73f2f5e2b29163486e07109f88dc" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:75cec5214a550c5fe536ac6370e7867f239f5a517b4ab6dcd1382c9b70b14267" [label="/bin/sh -c javac Application.java" shape="box"];
  "sha256:e79be56584898c5757f6b0bbb2cd17bcfe5ebc3b81e7dd2565ab7c15ad021461" [label="copy{src=/var/app/*, dest=/var/app/}" shape="note"];
  "sha256:5ca5dd947e1f35548c706b2fc88ca411e1c20ec7013da86c3b5f310d343ecee4" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:6a0ef4c12ad36cedbb045477de9140f2eaae5aea407a53f8cb8aadb32494b267" [label="sha256:6a0ef4c12ad36cedbb045477de9140f2eaae5aea407a53f8cb8aadb32494b267" shape="plaintext"];
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" -> "sha256:bccd1b2deb4e40f44d8f6571f811c9abd07e576bc8c32e4427a78c13545df689" [label=""];
  "sha256:555752eb965e670101be5c45966c41f8a7b3e5b0ec2ee0ed5a221feda875f93e" -> "sha256:bccd1b2deb4e40f44d8f6571f811c9abd07e576bc8c32e4427a78c13545df689" [label=""];
  "sha256:bccd1b2deb4e40f44d8f6571f811c9abd07e576bc8c32e4427a78c13545df689" -> "sha256:1784c9d1fe5bf83ca739489f4785832156fb73f2f5e2b29163486e07109f88dc" [label=""];
  "sha256:1784c9d1fe5bf83ca739489f4785832156fb73f2f5e2b29163486e07109f88dc" -> "sha256:75cec5214a550c5fe536ac6370e7867f239f5a517b4ab6dcd1382c9b70b14267" [label=""];
  "sha256:0fa9d77ffba4c0cfb36bec29d2e0b02d36226b626b50f29355d5a97517be8e0b" -> "sha256:e79be56584898c5757f6b0bbb2cd17bcfe5ebc3b81e7dd2565ab7c15ad021461" [label=""];
  "sha256:75cec5214a550c5fe536ac6370e7867f239f5a517b4ab6dcd1382c9b70b14267" -> "sha256:e79be56584898c5757f6b0bbb2cd17bcfe5ebc3b81e7dd2565ab7c15ad021461" [label=""];
  "sha256:e79be56584898c5757f6b0bbb2cd17bcfe5ebc3b81e7dd2565ab7c15ad021461" -> "sha256:5ca5dd947e1f35548c706b2fc88ca411e1c20ec7013da86c3b5f310d343ecee4" [label=""];
  "sha256:5ca5dd947e1f35548c706b2fc88ca411e1c20ec7013da86c3b5f310d343ecee4" -> "sha256:6a0ef4c12ad36cedbb045477de9140f2eaae5aea407a53f8cb8aadb32494b267" [label=""];
}

