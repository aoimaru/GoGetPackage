[app/sources/411870268.Dockerfile]
digraph {
  "sha256:9e6e83686b5d10e22c99a5a6af9d66271f5653d25c27363fc589b09bd763f2c8" [label="local://context" shape="ellipse"];
  "sha256:42821cf2789917e1ae7068e8f24983f13e2938ff45a63eca7e6316aaa6db8d65" [label="docker-image://docker.io/library/tomcat:8.5.34-jre8" shape="ellipse"];
  "sha256:dc8b4931159e9f9e4fe56d2992a946ad19d4660c07101f23094a69390194214e" [label="copy{src=/target/dependency/jacocoagent.jar, dest=/usr/local/tomcat/jacocoagent.jar}" shape="note"];
  "sha256:7fa5ca1a17a4ba00122414e66965280773270978841ed10351f9d2aa11a034ae" [label="copy{src=/target/petclinic.war, dest=/usr/local/tomcat/webapps/petclinic.war}" shape="note"];
  "sha256:84b7a3abc04c496013629e516be8bbe62ff3f2f18e7664aaf20d8e6dc73ea053" [label="sha256:84b7a3abc04c496013629e516be8bbe62ff3f2f18e7664aaf20d8e6dc73ea053" shape="plaintext"];
  "sha256:42821cf2789917e1ae7068e8f24983f13e2938ff45a63eca7e6316aaa6db8d65" -> "sha256:dc8b4931159e9f9e4fe56d2992a946ad19d4660c07101f23094a69390194214e" [label=""];
  "sha256:9e6e83686b5d10e22c99a5a6af9d66271f5653d25c27363fc589b09bd763f2c8" -> "sha256:dc8b4931159e9f9e4fe56d2992a946ad19d4660c07101f23094a69390194214e" [label=""];
  "sha256:dc8b4931159e9f9e4fe56d2992a946ad19d4660c07101f23094a69390194214e" -> "sha256:7fa5ca1a17a4ba00122414e66965280773270978841ed10351f9d2aa11a034ae" [label=""];
  "sha256:9e6e83686b5d10e22c99a5a6af9d66271f5653d25c27363fc589b09bd763f2c8" -> "sha256:7fa5ca1a17a4ba00122414e66965280773270978841ed10351f9d2aa11a034ae" [label=""];
  "sha256:7fa5ca1a17a4ba00122414e66965280773270978841ed10351f9d2aa11a034ae" -> "sha256:84b7a3abc04c496013629e516be8bbe62ff3f2f18e7664aaf20d8e6dc73ea053" [label=""];
}

