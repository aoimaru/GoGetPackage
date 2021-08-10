[app/sources/318145079.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:dde7ed5d9db6091431f458c57ca5cea7d91c154115f5741a72a29693278dbe83" [label="local://context" shape="ellipse"];
  "sha256:f752d0586a34e7a5bebf92e2b8953b8e009aa2f919bbd8b71a3bfb4747737261" [label="copy{src=/target/*.jar, dest=/app.jar}" shape="note"];
  "sha256:51e75180da3874e08e7487e68abca90e791fee5bf673a64ff5a54a65a33c427c" [label="sha256:51e75180da3874e08e7487e68abca90e791fee5bf673a64ff5a54a65a33c427c" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:f752d0586a34e7a5bebf92e2b8953b8e009aa2f919bbd8b71a3bfb4747737261" [label=""];
  "sha256:dde7ed5d9db6091431f458c57ca5cea7d91c154115f5741a72a29693278dbe83" -> "sha256:f752d0586a34e7a5bebf92e2b8953b8e009aa2f919bbd8b71a3bfb4747737261" [label=""];
  "sha256:f752d0586a34e7a5bebf92e2b8953b8e009aa2f919bbd8b71a3bfb4747737261" -> "sha256:51e75180da3874e08e7487e68abca90e791fee5bf673a64ff5a54a65a33c427c" [label=""];
}

