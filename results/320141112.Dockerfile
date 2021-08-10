[app/sources/320141112.Dockerfile]
digraph {
  "sha256:58f1adde76739e45848abe18576fe77cbd49385649efc13eafd5ceb0dd39cf38" [label="docker-image://docker.io/adoptopenjdk/openjdk8:jdk8u202-b08-alpine-slim" shape="ellipse"];
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" [label="docker-image://docker.io/library/maven:3.5-jdk-8-alpine" shape="ellipse"];
  "sha256:81b5480bc7efe48b88f2cbe3a734f199a16594ba07e149a0dd05d30cce751083" [label="mkdir{path=/app}" shape="note"];
  "sha256:b15576b1cd1b2eeae95f3dd9a765c5743b8e5ad3af9cf2a7a0846a722dc7e50e" [label="local://context" shape="ellipse"];
  "sha256:5481d9a164e5b8012065daede8021c9c4aaf2d4bbd14d25f39fc0de878ff355d" [label="copy{src=/pom.xml, dest=/app/}" shape="note"];
  "sha256:038f41866c29ca3dac6d32b87201f7d1d8131d529acf6ba639809056274ca4ef" [label="copy{src=/src, dest=/app/src}" shape="note"];
  "sha256:b4e8068628c3d3409abb7b23afbad830ff8d266bf52a377be5b1d47ae8e7ca1e" [label="/bin/sh -c mvn package -DskipTests" shape="box"];
  "sha256:908a62aede4a880dd14e101c42a2bb5058e6ff7da00d78059b9d53e100408761" [label="copy{src=/app/target/helloworld-1.0.0-SNAPSHOT.jar, dest=/helloworld.jar}" shape="note"];
  "sha256:19b5c1d713e161b41b6ae551b37ad716cdbf1e28a55a1d31a8da1c93d9eac23b" [label="sha256:19b5c1d713e161b41b6ae551b37ad716cdbf1e28a55a1d31a8da1c93d9eac23b" shape="plaintext"];
  "sha256:3df6e55851489e86c2e3c0067dad00a58a7b3cefba766c18f4bff092aaf173d0" -> "sha256:81b5480bc7efe48b88f2cbe3a734f199a16594ba07e149a0dd05d30cce751083" [label=""];
  "sha256:81b5480bc7efe48b88f2cbe3a734f199a16594ba07e149a0dd05d30cce751083" -> "sha256:5481d9a164e5b8012065daede8021c9c4aaf2d4bbd14d25f39fc0de878ff355d" [label=""];
  "sha256:b15576b1cd1b2eeae95f3dd9a765c5743b8e5ad3af9cf2a7a0846a722dc7e50e" -> "sha256:5481d9a164e5b8012065daede8021c9c4aaf2d4bbd14d25f39fc0de878ff355d" [label=""];
  "sha256:5481d9a164e5b8012065daede8021c9c4aaf2d4bbd14d25f39fc0de878ff355d" -> "sha256:038f41866c29ca3dac6d32b87201f7d1d8131d529acf6ba639809056274ca4ef" [label=""];
  "sha256:b15576b1cd1b2eeae95f3dd9a765c5743b8e5ad3af9cf2a7a0846a722dc7e50e" -> "sha256:038f41866c29ca3dac6d32b87201f7d1d8131d529acf6ba639809056274ca4ef" [label=""];
  "sha256:038f41866c29ca3dac6d32b87201f7d1d8131d529acf6ba639809056274ca4ef" -> "sha256:b4e8068628c3d3409abb7b23afbad830ff8d266bf52a377be5b1d47ae8e7ca1e" [label=""];
  "sha256:58f1adde76739e45848abe18576fe77cbd49385649efc13eafd5ceb0dd39cf38" -> "sha256:908a62aede4a880dd14e101c42a2bb5058e6ff7da00d78059b9d53e100408761" [label=""];
  "sha256:b4e8068628c3d3409abb7b23afbad830ff8d266bf52a377be5b1d47ae8e7ca1e" -> "sha256:908a62aede4a880dd14e101c42a2bb5058e6ff7da00d78059b9d53e100408761" [label=""];
  "sha256:908a62aede4a880dd14e101c42a2bb5058e6ff7da00d78059b9d53e100408761" -> "sha256:19b5c1d713e161b41b6ae551b37ad716cdbf1e28a55a1d31a8da1c93d9eac23b" [label=""];
}

