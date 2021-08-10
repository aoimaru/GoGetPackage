[app/sources/166332730.Dockerfile]
digraph {
  "sha256:0c553f334753943a31ef68ab18ef040ac9b35185e17cf7fb3d5cf1b743a62a4c" [label="docker-image://docker.io/library/ruby:2.4" shape="ellipse"];
  "sha256:6194167301255e0116016300b0afe2019d65e3422a0199233d4fb8f24f183c8c" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:fc34d15bd33ec030aa90ac475e90e7f2fc42b095671f773a01c1683d0c3f0d16" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:6ef437fc4cd2f1283cf26e1e0ae2d90d7b8027a678e9ddb80e8272254d9d4b07" [label="local://context" shape="ellipse"];
  "sha256:76aa310be2377c972b968ee55447e8d3d6fd7f8fa5de02b68fa0f8a5781f96e4" [label="copy{src=/*.rb, dest=/usr/src/app/}" shape="note"];
  "sha256:f9f96b539496f6197d6ce38cd8b6d506c5463c306a22c19848dbb9b385ac91aa" [label="sha256:f9f96b539496f6197d6ce38cd8b6d506c5463c306a22c19848dbb9b385ac91aa" shape="plaintext"];
  "sha256:0c553f334753943a31ef68ab18ef040ac9b35185e17cf7fb3d5cf1b743a62a4c" -> "sha256:6194167301255e0116016300b0afe2019d65e3422a0199233d4fb8f24f183c8c" [label=""];
  "sha256:6194167301255e0116016300b0afe2019d65e3422a0199233d4fb8f24f183c8c" -> "sha256:fc34d15bd33ec030aa90ac475e90e7f2fc42b095671f773a01c1683d0c3f0d16" [label=""];
  "sha256:fc34d15bd33ec030aa90ac475e90e7f2fc42b095671f773a01c1683d0c3f0d16" -> "sha256:76aa310be2377c972b968ee55447e8d3d6fd7f8fa5de02b68fa0f8a5781f96e4" [label=""];
  "sha256:6ef437fc4cd2f1283cf26e1e0ae2d90d7b8027a678e9ddb80e8272254d9d4b07" -> "sha256:76aa310be2377c972b968ee55447e8d3d6fd7f8fa5de02b68fa0f8a5781f96e4" [label=""];
  "sha256:76aa310be2377c972b968ee55447e8d3d6fd7f8fa5de02b68fa0f8a5781f96e4" -> "sha256:f9f96b539496f6197d6ce38cd8b6d506c5463c306a22c19848dbb9b385ac91aa" [label=""];
}

