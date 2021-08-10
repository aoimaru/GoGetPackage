[app/sources/239444274.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:75e4bfb0ee52b3c5b50378679480b2820c0e3d205fc540d46948746968384c73" [label="local://context" shape="ellipse"];
  "sha256:10cf51e46b76c10a10301dd4f8a008443247e5b29e9797b514e0d9b8b8a7d27a" [label="copy{src=/@project.build.finalName@.jar, dest=/@project.build.finalName@.jar}" shape="note"];
  "sha256:a8e64e83b90127b798e5e4ff76613d493722ae9ecf36ca6c8fac4634907dc83d" [label="/bin/sh -c sh -c 'touch /@project.build.finalName@.jar'" shape="box"];
  "sha256:609d88d47eaf38b7437810ac612cddaa3cda77a8f05bada401e90529f8034a84" [label="sha256:609d88d47eaf38b7437810ac612cddaa3cda77a8f05bada401e90529f8034a84" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:10cf51e46b76c10a10301dd4f8a008443247e5b29e9797b514e0d9b8b8a7d27a" [label=""];
  "sha256:75e4bfb0ee52b3c5b50378679480b2820c0e3d205fc540d46948746968384c73" -> "sha256:10cf51e46b76c10a10301dd4f8a008443247e5b29e9797b514e0d9b8b8a7d27a" [label=""];
  "sha256:10cf51e46b76c10a10301dd4f8a008443247e5b29e9797b514e0d9b8b8a7d27a" -> "sha256:a8e64e83b90127b798e5e4ff76613d493722ae9ecf36ca6c8fac4634907dc83d" [label=""];
  "sha256:a8e64e83b90127b798e5e4ff76613d493722ae9ecf36ca6c8fac4634907dc83d" -> "sha256:609d88d47eaf38b7437810ac612cddaa3cda77a8f05bada401e90529f8034a84" [label=""];
}

