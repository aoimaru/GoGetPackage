[app/sources/322149249.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:e805b84a0ce5bf6abf465566d72bfafba5acfd600be6ee56b07e02ba0fd1c798" [label="local://context" shape="ellipse"];
  "sha256:836516e6f1a5c8542e9fa189cd426f8f4cb4b48097f5a3254ce15f0ac1fd9b8c" [label="copy{src=/lion-id.jar, dest=/app.jar}" shape="note"];
  "sha256:cb7e9c96b2a1b9ed33ecf5fa0078ec4df3da4bfa69db796acca6968b7b6e526a" [label="sha256:cb7e9c96b2a1b9ed33ecf5fa0078ec4df3da4bfa69db796acca6968b7b6e526a" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:836516e6f1a5c8542e9fa189cd426f8f4cb4b48097f5a3254ce15f0ac1fd9b8c" [label=""];
  "sha256:e805b84a0ce5bf6abf465566d72bfafba5acfd600be6ee56b07e02ba0fd1c798" -> "sha256:836516e6f1a5c8542e9fa189cd426f8f4cb4b48097f5a3254ce15f0ac1fd9b8c" [label=""];
  "sha256:836516e6f1a5c8542e9fa189cd426f8f4cb4b48097f5a3254ce15f0ac1fd9b8c" -> "sha256:cb7e9c96b2a1b9ed33ecf5fa0078ec4df3da4bfa69db796acca6968b7b6e526a" [label=""];
}

