[app/sources/460358628.Dockerfile]
digraph {
  "sha256:cb31b048f9422cd15e5926a46100d3691904bab62223345f7e8da2c903081b71" [label="docker-image://docker.io/library/java:8u111-jdk" shape="ellipse"];
  "sha256:59535d612c69b98ea32b018aa7daf8b31d7ee63bc2a81e37f7944f7e2d5086d3" [label="local://context" shape="ellipse"];
  "sha256:3db8c5d437616f6d38d7eb0b1d1f700a8cd5d4c935ee36d5016c0ef557fec670" [label="copy{src=/mavendockerplugindemo-0.0.2-SNAPSHOT.jar, dest=/home/mavendockerplugindemo.jar}" shape="note"];
  "sha256:75c3aafa096bcd254fb574e2ea56600a97428ec0d1eb356c9157432d5a6b545e" [label="mkdir{path=/home}" shape="note"];
  "sha256:fb6cddb2b8ee391e98af0548c15f7e4717f9b9875e4220eff9175acf9a958a32" [label="sha256:fb6cddb2b8ee391e98af0548c15f7e4717f9b9875e4220eff9175acf9a958a32" shape="plaintext"];
  "sha256:cb31b048f9422cd15e5926a46100d3691904bab62223345f7e8da2c903081b71" -> "sha256:3db8c5d437616f6d38d7eb0b1d1f700a8cd5d4c935ee36d5016c0ef557fec670" [label=""];
  "sha256:59535d612c69b98ea32b018aa7daf8b31d7ee63bc2a81e37f7944f7e2d5086d3" -> "sha256:3db8c5d437616f6d38d7eb0b1d1f700a8cd5d4c935ee36d5016c0ef557fec670" [label=""];
  "sha256:3db8c5d437616f6d38d7eb0b1d1f700a8cd5d4c935ee36d5016c0ef557fec670" -> "sha256:75c3aafa096bcd254fb574e2ea56600a97428ec0d1eb356c9157432d5a6b545e" [label=""];
  "sha256:75c3aafa096bcd254fb574e2ea56600a97428ec0d1eb356c9157432d5a6b545e" -> "sha256:fb6cddb2b8ee391e98af0548c15f7e4717f9b9875e4220eff9175acf9a958a32" [label=""];
}

