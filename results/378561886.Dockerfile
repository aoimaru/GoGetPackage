[app/sources/378561886.Dockerfile]
digraph {
  "sha256:ab54b836158d2158aaedaf13ec97d31d1c7214d5c2d25bdbad7b5d94976c9e44" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:a93a720e9b9919b025241ea5a592421bb97e2d3544537e63024cebf698861489" [label="copy{src=/spring-doge/target/*.jar, dest=/usr/src/spring-doge/spring-doge.jar}" shape="note"];
  "sha256:df245b6f94d1e9d52e3d24114054b551f5d774e74a7c60a6ec6143be7e7fa31f" [label="mkdir{path=/usr/src/spring-doge}" shape="note"];
  "sha256:c5cdb8728abed391cc15b3ab0cff402bce30c651a3affbcfbf75245efb5c9fd1" [label="sha256:c5cdb8728abed391cc15b3ab0cff402bce30c651a3affbcfbf75245efb5c9fd1" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:a93a720e9b9919b025241ea5a592421bb97e2d3544537e63024cebf698861489" [label=""];
  "sha256:ab54b836158d2158aaedaf13ec97d31d1c7214d5c2d25bdbad7b5d94976c9e44" -> "sha256:a93a720e9b9919b025241ea5a592421bb97e2d3544537e63024cebf698861489" [label=""];
  "sha256:a93a720e9b9919b025241ea5a592421bb97e2d3544537e63024cebf698861489" -> "sha256:df245b6f94d1e9d52e3d24114054b551f5d774e74a7c60a6ec6143be7e7fa31f" [label=""];
  "sha256:df245b6f94d1e9d52e3d24114054b551f5d774e74a7c60a6ec6143be7e7fa31f" -> "sha256:c5cdb8728abed391cc15b3ab0cff402bce30c651a3affbcfbf75245efb5c9fd1" [label=""];
}

