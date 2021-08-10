[app/sources/228420128.Dockerfile]
digraph {
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" [label="docker-image://docker.io/library/node:11-alpine" shape="ellipse"];
  "sha256:7986888b67d262bdc3d7c4becbe8089b43556394f0ad06254fd3d4489c5d38b8" [label="mkdir{path=/pangolin}" shape="note"];
  "sha256:bcf359a1b9a6f3c75fc1e9bf81762c373d8db87b8bc20f027d6f1bfa453a6679" [label="local://context" shape="ellipse"];
  "sha256:8ae7d91038c44ffb833d10ca5605bfa88439223e67c3cb40c6b44edacb7eb9be" [label="copy{src=/package*.json, dest=/pangolin/}" shape="note"];
  "sha256:9707a324fc797de0c91db77a4b4cd9f61891b187beffc2f6b2396a7f15294c23" [label="/bin/sh -c npm install" shape="box"];
  "sha256:3c5c28fb7c2fe92cac1038555625ac165c6eb0b4e9b0d2c907fdaede399b76c8" [label="mkdir{path=/pangolin/test/project}" shape="note"];
  "sha256:b789bedaa48a90bc1bcccc4471c5c632faaea5e5d54ad5dd976fff471962249d" [label="copy{src=/test/project/package.json, dest=/pangolin/test/project/}" shape="note"];
  "sha256:27749a41198ac2d370fb6d7212c7ce76503f2a13152db62ab220eab771e36eb7" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9ff7fc078636e44aeadabbe7e94f605991e41c1a2c83bbbb38d308a8405c6ca6" [label="mkdir{path=/pangolin}" shape="note"];
  "sha256:37ea4b636edd28ca2115ae4b432a6bbe096958f3e64fceb79e09b02ab30daf5a" [label="copy{src=/, dest=/pangolin/}" shape="note"];
  "sha256:121005dd2ee63c56f9a51c904b83d4e7f9905b49caa59ebdaa18431bb51c197a" [label="/bin/sh -c npm run prepare" shape="box"];
  "sha256:098ad03d1a5dbfd37bd535a274df8c6db1e738fb8b43ff3a341fde74ddf7d5eb" [label="mkdir{path=/pangolin/test/project}" shape="note"];
  "sha256:48699d51aca65bfe02cac8e48022a843756bf8ca3415e65d19b8a8afa1ac79ef" [label="sha256:48699d51aca65bfe02cac8e48022a843756bf8ca3415e65d19b8a8afa1ac79ef" shape="plaintext"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" -> "sha256:7986888b67d262bdc3d7c4becbe8089b43556394f0ad06254fd3d4489c5d38b8" [label=""];
  "sha256:7986888b67d262bdc3d7c4becbe8089b43556394f0ad06254fd3d4489c5d38b8" -> "sha256:8ae7d91038c44ffb833d10ca5605bfa88439223e67c3cb40c6b44edacb7eb9be" [label=""];
  "sha256:bcf359a1b9a6f3c75fc1e9bf81762c373d8db87b8bc20f027d6f1bfa453a6679" -> "sha256:8ae7d91038c44ffb833d10ca5605bfa88439223e67c3cb40c6b44edacb7eb9be" [label=""];
  "sha256:8ae7d91038c44ffb833d10ca5605bfa88439223e67c3cb40c6b44edacb7eb9be" -> "sha256:9707a324fc797de0c91db77a4b4cd9f61891b187beffc2f6b2396a7f15294c23" [label=""];
  "sha256:9707a324fc797de0c91db77a4b4cd9f61891b187beffc2f6b2396a7f15294c23" -> "sha256:3c5c28fb7c2fe92cac1038555625ac165c6eb0b4e9b0d2c907fdaede399b76c8" [label=""];
  "sha256:3c5c28fb7c2fe92cac1038555625ac165c6eb0b4e9b0d2c907fdaede399b76c8" -> "sha256:b789bedaa48a90bc1bcccc4471c5c632faaea5e5d54ad5dd976fff471962249d" [label=""];
  "sha256:bcf359a1b9a6f3c75fc1e9bf81762c373d8db87b8bc20f027d6f1bfa453a6679" -> "sha256:b789bedaa48a90bc1bcccc4471c5c632faaea5e5d54ad5dd976fff471962249d" [label=""];
  "sha256:b789bedaa48a90bc1bcccc4471c5c632faaea5e5d54ad5dd976fff471962249d" -> "sha256:27749a41198ac2d370fb6d7212c7ce76503f2a13152db62ab220eab771e36eb7" [label=""];
  "sha256:27749a41198ac2d370fb6d7212c7ce76503f2a13152db62ab220eab771e36eb7" -> "sha256:9ff7fc078636e44aeadabbe7e94f605991e41c1a2c83bbbb38d308a8405c6ca6" [label=""];
  "sha256:9ff7fc078636e44aeadabbe7e94f605991e41c1a2c83bbbb38d308a8405c6ca6" -> "sha256:37ea4b636edd28ca2115ae4b432a6bbe096958f3e64fceb79e09b02ab30daf5a" [label=""];
  "sha256:bcf359a1b9a6f3c75fc1e9bf81762c373d8db87b8bc20f027d6f1bfa453a6679" -> "sha256:37ea4b636edd28ca2115ae4b432a6bbe096958f3e64fceb79e09b02ab30daf5a" [label=""];
  "sha256:37ea4b636edd28ca2115ae4b432a6bbe096958f3e64fceb79e09b02ab30daf5a" -> "sha256:121005dd2ee63c56f9a51c904b83d4e7f9905b49caa59ebdaa18431bb51c197a" [label=""];
  "sha256:121005dd2ee63c56f9a51c904b83d4e7f9905b49caa59ebdaa18431bb51c197a" -> "sha256:098ad03d1a5dbfd37bd535a274df8c6db1e738fb8b43ff3a341fde74ddf7d5eb" [label=""];
  "sha256:098ad03d1a5dbfd37bd535a274df8c6db1e738fb8b43ff3a341fde74ddf7d5eb" -> "sha256:48699d51aca65bfe02cac8e48022a843756bf8ca3415e65d19b8a8afa1ac79ef" [label=""];
}

