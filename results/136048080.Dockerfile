[app/sources/136048080.Dockerfile]
digraph {
  "sha256:2770856053184496132a813e06a835694d77bc58e3c92ff3e5b694da97760fea" [label="docker-image://docker.io/library/node:8.11.4" shape="ellipse"];
  "sha256:36706e31d8890c16ff1b7dbeb4c7acf8f38f6ff7c798986e27d7d247a5a80c77" [label="mkdir{path=/app/website}" shape="note"];
  "sha256:902848ffa5ec706e9adf6c7f2750421abcdbec697434d4a4f760b2370ad42adc" [label="local://context" shape="ellipse"];
  "sha256:5958c4a19df12285c662f4448204b8805fc1efcfffd4d3a900a2268ee0a67eb5" [label="copy{src=/docs, dest=/app/docs}" shape="note"];
  "sha256:b261d7cab99f2e69ac7ecaedcbdc0c809e4caaca3eeacfbbcb83757c83aeb760" [label="copy{src=/website, dest=/app/website}" shape="note"];
  "sha256:a296a4e0d4a3d8b0b4b83066edfca64de7f49fd744d092606cd33169e46a85aa" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:9e41ca2cdcc29bd61e52a7559840af7a4cc31da9414daeeefeb317c11b0d3821" [label="sha256:9e41ca2cdcc29bd61e52a7559840af7a4cc31da9414daeeefeb317c11b0d3821" shape="plaintext"];
  "sha256:2770856053184496132a813e06a835694d77bc58e3c92ff3e5b694da97760fea" -> "sha256:36706e31d8890c16ff1b7dbeb4c7acf8f38f6ff7c798986e27d7d247a5a80c77" [label=""];
  "sha256:36706e31d8890c16ff1b7dbeb4c7acf8f38f6ff7c798986e27d7d247a5a80c77" -> "sha256:5958c4a19df12285c662f4448204b8805fc1efcfffd4d3a900a2268ee0a67eb5" [label=""];
  "sha256:902848ffa5ec706e9adf6c7f2750421abcdbec697434d4a4f760b2370ad42adc" -> "sha256:5958c4a19df12285c662f4448204b8805fc1efcfffd4d3a900a2268ee0a67eb5" [label=""];
  "sha256:5958c4a19df12285c662f4448204b8805fc1efcfffd4d3a900a2268ee0a67eb5" -> "sha256:b261d7cab99f2e69ac7ecaedcbdc0c809e4caaca3eeacfbbcb83757c83aeb760" [label=""];
  "sha256:902848ffa5ec706e9adf6c7f2750421abcdbec697434d4a4f760b2370ad42adc" -> "sha256:b261d7cab99f2e69ac7ecaedcbdc0c809e4caaca3eeacfbbcb83757c83aeb760" [label=""];
  "sha256:b261d7cab99f2e69ac7ecaedcbdc0c809e4caaca3eeacfbbcb83757c83aeb760" -> "sha256:a296a4e0d4a3d8b0b4b83066edfca64de7f49fd744d092606cd33169e46a85aa" [label=""];
  "sha256:a296a4e0d4a3d8b0b4b83066edfca64de7f49fd744d092606cd33169e46a85aa" -> "sha256:9e41ca2cdcc29bd61e52a7559840af7a4cc31da9414daeeefeb317c11b0d3821" [label=""];
}

