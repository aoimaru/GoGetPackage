[app/sources/248071202.Dockerfile]
digraph {
  "sha256:81793188fce0906be51f3349936498a5af5267420c6c2c9eab9989dcb73a69de" [label="docker-image://docker.io/opensuse/amd64:leap" shape="ellipse"];
  "sha256:1286dd5bcf7657b7a14bbf887d46b5312eb7418bc2d6ca2613753ac8b8cdd5f1" [label="/bin/sh -c zypper -n install --no-recommends ruby2.1-rubygem-ffi ruby2.1-rubygem-rake ruby2.1-rubygem-bundler git-core" shape="box"];
  "sha256:3b7362cbc7be84cb07de563c17a556a46ae1645fd2485bf6d867366367dddc88" [label="mkdir{path=/src}" shape="note"];
  "sha256:cc856abb7ebc5b4a39fce4aa521c1424bb846299fb2df69c1f7d5b06c528916f" [label="sha256:cc856abb7ebc5b4a39fce4aa521c1424bb846299fb2df69c1f7d5b06c528916f" shape="plaintext"];
  "sha256:81793188fce0906be51f3349936498a5af5267420c6c2c9eab9989dcb73a69de" -> "sha256:1286dd5bcf7657b7a14bbf887d46b5312eb7418bc2d6ca2613753ac8b8cdd5f1" [label=""];
  "sha256:1286dd5bcf7657b7a14bbf887d46b5312eb7418bc2d6ca2613753ac8b8cdd5f1" -> "sha256:3b7362cbc7be84cb07de563c17a556a46ae1645fd2485bf6d867366367dddc88" [label=""];
  "sha256:3b7362cbc7be84cb07de563c17a556a46ae1645fd2485bf6d867366367dddc88" -> "sha256:cc856abb7ebc5b4a39fce4aa521c1424bb846299fb2df69c1f7d5b06c528916f" [label=""];
}

