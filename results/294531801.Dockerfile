[app/sources/294531801.Dockerfile]
digraph {
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" [label="docker-image://docker.io/library/java:8-jre" shape="ellipse"];
  "sha256:d67fce6835a4746a3456445f4dae117bbf7645491178ac620ebb82f1bbb680c6" [label="local://context" shape="ellipse"];
  "sha256:b8c2504b1f3018a5eccaad67e00b9cca1e63c4634af4b2b6c7a0e2a8516f1aca" [label="copy{src=/target/notification-service.jar, dest=/app/}" shape="note"];
  "sha256:3539c00a9bb7d840cefa47c163b006cacb7be0a727a2b2eff2c4a4481b09d623" [label="sha256:3539c00a9bb7d840cefa47c163b006cacb7be0a727a2b2eff2c4a4481b09d623" shape="plaintext"];
  "sha256:a6e599f7ff249667003523783f1c96cc7be7735699806462f5da1fe897012158" -> "sha256:b8c2504b1f3018a5eccaad67e00b9cca1e63c4634af4b2b6c7a0e2a8516f1aca" [label=""];
  "sha256:d67fce6835a4746a3456445f4dae117bbf7645491178ac620ebb82f1bbb680c6" -> "sha256:b8c2504b1f3018a5eccaad67e00b9cca1e63c4634af4b2b6c7a0e2a8516f1aca" [label=""];
  "sha256:b8c2504b1f3018a5eccaad67e00b9cca1e63c4634af4b2b6c7a0e2a8516f1aca" -> "sha256:3539c00a9bb7d840cefa47c163b006cacb7be0a727a2b2eff2c4a4481b09d623" [label=""];
}

