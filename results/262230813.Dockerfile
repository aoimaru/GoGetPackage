[app/sources/262230813.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:00f3f5ec51ffd88544e410f8a64957255176bc1028e6fb9228e3049920426580" [label="local://context" shape="ellipse"];
  "sha256:0b825711702b6d9cea8a532d4958c453c8ede198361380ab6fcc04be11b33f17" [label="copy{src=/.gradle/tomcat, dest=/tomcat}" shape="note"];
  "sha256:d6fc7a05792963195a21ee1c9e2be15308072e08daa23638c04ef13f705e2649" [label="sha256:d6fc7a05792963195a21ee1c9e2be15308072e08daa23638c04ef13f705e2649" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:0b825711702b6d9cea8a532d4958c453c8ede198361380ab6fcc04be11b33f17" [label=""];
  "sha256:00f3f5ec51ffd88544e410f8a64957255176bc1028e6fb9228e3049920426580" -> "sha256:0b825711702b6d9cea8a532d4958c453c8ede198361380ab6fcc04be11b33f17" [label=""];
  "sha256:0b825711702b6d9cea8a532d4958c453c8ede198361380ab6fcc04be11b33f17" -> "sha256:d6fc7a05792963195a21ee1c9e2be15308072e08daa23638c04ef13f705e2649" [label=""];
}

