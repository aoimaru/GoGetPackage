[app/sources/466810353.Dockerfile]
digraph {
  "sha256:09d4b800532f93fac4376c65bf6b30a6455757f7bd775329eaedff0f03acbb9b" [label="docker-image://docker.io/fabric8/java-centos-openjdk8-jdk:latest" shape="ellipse"];
  "sha256:417bde51a43cd66eae740c0042619cf65eb944f7a56527dec9303d3d1bd8f6e9" [label="local://context" shape="ellipse"];
  "sha256:696e43dd780739c35305731259b22c9d35cca122db9a9643e4577b1f3f769f9e" [label="copy{src=/target/*.jar, dest=/deployments}" shape="note"];
  "sha256:b24390371bdd6dfbc01e379e0730f2d12bd0081e9032da7981b3fe88d4980d81" [label="sha256:b24390371bdd6dfbc01e379e0730f2d12bd0081e9032da7981b3fe88d4980d81" shape="plaintext"];
  "sha256:09d4b800532f93fac4376c65bf6b30a6455757f7bd775329eaedff0f03acbb9b" -> "sha256:696e43dd780739c35305731259b22c9d35cca122db9a9643e4577b1f3f769f9e" [label=""];
  "sha256:417bde51a43cd66eae740c0042619cf65eb944f7a56527dec9303d3d1bd8f6e9" -> "sha256:696e43dd780739c35305731259b22c9d35cca122db9a9643e4577b1f3f769f9e" [label=""];
  "sha256:696e43dd780739c35305731259b22c9d35cca122db9a9643e4577b1f3f769f9e" -> "sha256:b24390371bdd6dfbc01e379e0730f2d12bd0081e9032da7981b3fe88d4980d81" [label=""];
}

