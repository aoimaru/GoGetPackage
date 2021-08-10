[app/sources/256591553.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:f08504b4d9a70a867b4c78df1346a6d742c93acff092c9e94711b117c679b8bc" [label="local://context" shape="ellipse"];
  "sha256:3a0e52b83ac84d81852796188d95dd3d767e4a0997c26871c78a671caa919ba3" [label="copy{src=/gateway-1.0.jar, dest=/gateway.jar}" shape="note"];
  "sha256:9726034843f0e5397363fc1e0ccab5e5c79dce90795b15e1116c8c4fdcde0fee" [label="sha256:9726034843f0e5397363fc1e0ccab5e5c79dce90795b15e1116c8c4fdcde0fee" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:3a0e52b83ac84d81852796188d95dd3d767e4a0997c26871c78a671caa919ba3" [label=""];
  "sha256:f08504b4d9a70a867b4c78df1346a6d742c93acff092c9e94711b117c679b8bc" -> "sha256:3a0e52b83ac84d81852796188d95dd3d767e4a0997c26871c78a671caa919ba3" [label=""];
  "sha256:3a0e52b83ac84d81852796188d95dd3d767e4a0997c26871c78a671caa919ba3" -> "sha256:9726034843f0e5397363fc1e0ccab5e5c79dce90795b15e1116c8c4fdcde0fee" [label=""];
}

