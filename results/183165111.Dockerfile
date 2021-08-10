[app/sources/183165111.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:4dce66a49a3f904b5016666f52f9cc1f55fd048dfd56a8eee7573fa3c5d711e9" [label="/bin/sh -c apk add --no-cache --update bash" shape="box"];
  "sha256:3d838072e3df9527d52e691232fc7302c59ff164251e8a9267437919d6b19d93" [label="local://context" shape="ellipse"];
  "sha256:9083f8f397424b0aa25e5daa4c54810aa510ffced4faa814da4ab227b14b0152" [label="copy{src=/src/main/docker/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:b493080792859df179954f0304ab649d474fb1f5be94db7149ec8cbbcdd5993c" [label="copy{src=/, dest=/opt/gremlin-console}" shape="note"];
  "sha256:861d8c90d2acd36e58201671e0cce6f65bdc6b1e4b64d3008b8fedac71ecd034" [label="mkdir{path=/opt/gremlin-console}" shape="note"];
  "sha256:6aa6875bc89fb4d45a21362d75f310d6c976e6a8f89b4fe4d96e109f0d3fea11" [label="/bin/sh -c addgroup -S gremlin && adduser -S -s /bin/false -G gremlin gremlin" shape="box"];
  "sha256:84279d16da28c5a138e5493f33f8c7073c950ba05665db242f0d905ea1dccc30" [label="/bin/sh -c chown -R gremlin:gremlin /opt/gremlin-console" shape="box"];
  "sha256:444f00c2d8927cc0975f5204764dd2d1627c853bfb2728a1724d9cfcc7a9b319" [label="sha256:444f00c2d8927cc0975f5204764dd2d1627c853bfb2728a1724d9cfcc7a9b319" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:4dce66a49a3f904b5016666f52f9cc1f55fd048dfd56a8eee7573fa3c5d711e9" [label=""];
  "sha256:4dce66a49a3f904b5016666f52f9cc1f55fd048dfd56a8eee7573fa3c5d711e9" -> "sha256:9083f8f397424b0aa25e5daa4c54810aa510ffced4faa814da4ab227b14b0152" [label=""];
  "sha256:3d838072e3df9527d52e691232fc7302c59ff164251e8a9267437919d6b19d93" -> "sha256:9083f8f397424b0aa25e5daa4c54810aa510ffced4faa814da4ab227b14b0152" [label=""];
  "sha256:9083f8f397424b0aa25e5daa4c54810aa510ffced4faa814da4ab227b14b0152" -> "sha256:b493080792859df179954f0304ab649d474fb1f5be94db7149ec8cbbcdd5993c" [label=""];
  "sha256:3d838072e3df9527d52e691232fc7302c59ff164251e8a9267437919d6b19d93" -> "sha256:b493080792859df179954f0304ab649d474fb1f5be94db7149ec8cbbcdd5993c" [label=""];
  "sha256:b493080792859df179954f0304ab649d474fb1f5be94db7149ec8cbbcdd5993c" -> "sha256:861d8c90d2acd36e58201671e0cce6f65bdc6b1e4b64d3008b8fedac71ecd034" [label=""];
  "sha256:861d8c90d2acd36e58201671e0cce6f65bdc6b1e4b64d3008b8fedac71ecd034" -> "sha256:6aa6875bc89fb4d45a21362d75f310d6c976e6a8f89b4fe4d96e109f0d3fea11" [label=""];
  "sha256:6aa6875bc89fb4d45a21362d75f310d6c976e6a8f89b4fe4d96e109f0d3fea11" -> "sha256:84279d16da28c5a138e5493f33f8c7073c950ba05665db242f0d905ea1dccc30" [label=""];
  "sha256:84279d16da28c5a138e5493f33f8c7073c950ba05665db242f0d905ea1dccc30" -> "sha256:444f00c2d8927cc0975f5204764dd2d1627c853bfb2728a1724d9cfcc7a9b319" [label=""];
}

