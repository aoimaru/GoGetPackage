[app/sources/467446559.Dockerfile]
digraph {
  "sha256:5685d798f15f9682a405ff05025bbb1c7405286bf44310b89c08ecfbaa905282" [label="docker-image://docker.io/basaltinc/docker-node-php-base:latest" shape="ellipse"];
  "sha256:b3a486a6ea828543f1137817f7a00ac4b7bf3289d2b4a44f2d27b9ab52dc7101" [label="/bin/sh -c echo \"CIRCLE_BUILD_URL: $CIRCLE_BUILD_URL\"" shape="box"];
  "sha256:2816a9fcf4ed35b3bb51ff1e1bd5f9ca7507d905b953ee3a12463a20c80e42f4" [label="/bin/sh -c echo \"//registry.npmjs.org/:_authToken=$NPM_TOKEN\" > ~/.npmrc" shape="box"];
  "sha256:c6feca3c4f79de66162ca6b598a0d1860ab519a8d8582710d355d568cbb6c57e" [label="mkdir{path=/app}" shape="note"];
  "sha256:db08c2c85250a3ccc2512e632a202b821a651d85a6c85973f3e44326aaf15205" [label="/bin/sh -c npx create-knapsack@next my-site && cd my-site && npm install && npm run build" shape="box"];
  "sha256:1f1216d451e4fab9eb77cd56a090bf40e2f619a6d7b11710f498a79e999bcc1b" [label="sha256:1f1216d451e4fab9eb77cd56a090bf40e2f619a6d7b11710f498a79e999bcc1b" shape="plaintext"];
  "sha256:5685d798f15f9682a405ff05025bbb1c7405286bf44310b89c08ecfbaa905282" -> "sha256:b3a486a6ea828543f1137817f7a00ac4b7bf3289d2b4a44f2d27b9ab52dc7101" [label=""];
  "sha256:b3a486a6ea828543f1137817f7a00ac4b7bf3289d2b4a44f2d27b9ab52dc7101" -> "sha256:2816a9fcf4ed35b3bb51ff1e1bd5f9ca7507d905b953ee3a12463a20c80e42f4" [label=""];
  "sha256:2816a9fcf4ed35b3bb51ff1e1bd5f9ca7507d905b953ee3a12463a20c80e42f4" -> "sha256:c6feca3c4f79de66162ca6b598a0d1860ab519a8d8582710d355d568cbb6c57e" [label=""];
  "sha256:c6feca3c4f79de66162ca6b598a0d1860ab519a8d8582710d355d568cbb6c57e" -> "sha256:db08c2c85250a3ccc2512e632a202b821a651d85a6c85973f3e44326aaf15205" [label=""];
  "sha256:db08c2c85250a3ccc2512e632a202b821a651d85a6c85973f3e44326aaf15205" -> "sha256:1f1216d451e4fab9eb77cd56a090bf40e2f619a6d7b11710f498a79e999bcc1b" [label=""];
}

