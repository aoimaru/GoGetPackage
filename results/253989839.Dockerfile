[app/sources/253989839.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:5fc7cbb949985594f37adbcf025ed43c5be1fc760c6e28db645a095594edafd0" [label="local://context" shape="ellipse"];
  "sha256:6158de8883822bbcb4d787adf994e8d9cec0214cbd7efe9b3d2da0429a880be5" [label="copy{src=/target/apia-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:3fca85930bc89b0ec92cd1883919ffd59e6aa427798f09b8d4a10a53fa99d477" [label="sha256:3fca85930bc89b0ec92cd1883919ffd59e6aa427798f09b8d4a10a53fa99d477" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:6158de8883822bbcb4d787adf994e8d9cec0214cbd7efe9b3d2da0429a880be5" [label=""];
  "sha256:5fc7cbb949985594f37adbcf025ed43c5be1fc760c6e28db645a095594edafd0" -> "sha256:6158de8883822bbcb4d787adf994e8d9cec0214cbd7efe9b3d2da0429a880be5" [label=""];
  "sha256:6158de8883822bbcb4d787adf994e8d9cec0214cbd7efe9b3d2da0429a880be5" -> "sha256:3fca85930bc89b0ec92cd1883919ffd59e6aa427798f09b8d4a10a53fa99d477" [label=""];
}

