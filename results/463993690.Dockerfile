[app/sources/463993690.Dockerfile]
digraph {
  "sha256:fabde6cea0568eb42fc92bbcbb9aa723cf4257905cc61d555850746070670f42" [label="docker-image://docker.io/fabric8/java-jboss-openjdk8-jdk:1.3.1" shape="ellipse"];
  "sha256:39ad472b27101b1afaee87a264d288619a42fd53612f3ad17af0897f3c0a1ece" [label="local://context" shape="ellipse"];
  "sha256:460b25bbd47a517c5327e827f1d09aa10068f020dc6b5440b8201139e3c223e5" [label="copy{src=/target/forum-1.0-SNAPSHOT.jar, dest=/deployments/}" shape="note"];
  "sha256:c4026448ac430eef1b720a79aa1e6ef8caa914f70511390e0d454d7e63149f64" [label="sha256:c4026448ac430eef1b720a79aa1e6ef8caa914f70511390e0d454d7e63149f64" shape="plaintext"];
  "sha256:fabde6cea0568eb42fc92bbcbb9aa723cf4257905cc61d555850746070670f42" -> "sha256:460b25bbd47a517c5327e827f1d09aa10068f020dc6b5440b8201139e3c223e5" [label=""];
  "sha256:39ad472b27101b1afaee87a264d288619a42fd53612f3ad17af0897f3c0a1ece" -> "sha256:460b25bbd47a517c5327e827f1d09aa10068f020dc6b5440b8201139e3c223e5" [label=""];
  "sha256:460b25bbd47a517c5327e827f1d09aa10068f020dc6b5440b8201139e3c223e5" -> "sha256:c4026448ac430eef1b720a79aa1e6ef8caa914f70511390e0d454d7e63149f64" [label=""];
}

