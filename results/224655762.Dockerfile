[app/sources/224655762.Dockerfile]
digraph {
  "sha256:4de592e067b68b353b7442a7904274e11aa9149c9110f3051765caff75e7c5d5" [label="docker-image://docker.io/pronter/jce-java:latest" shape="ellipse"];
  "sha256:e1efe37bb4241ce6f5af2692130814b60cfcac02c68de8b8aa543e624af88dad" [label="local://context" shape="ellipse"];
  "sha256:d191febd2dd016b5aed243a9a1b7a7a927e7c55bdf77d07d717b210c957020f9" [label="copy{src=/target/tcc-coordinator-ms-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:f2bfead9f7ac580392f6abcbb28c3f3fcb865d7892cb3ae7d4a0ad6b704a3fc1" [label="sha256:f2bfead9f7ac580392f6abcbb28c3f3fcb865d7892cb3ae7d4a0ad6b704a3fc1" shape="plaintext"];
  "sha256:4de592e067b68b353b7442a7904274e11aa9149c9110f3051765caff75e7c5d5" -> "sha256:d191febd2dd016b5aed243a9a1b7a7a927e7c55bdf77d07d717b210c957020f9" [label=""];
  "sha256:e1efe37bb4241ce6f5af2692130814b60cfcac02c68de8b8aa543e624af88dad" -> "sha256:d191febd2dd016b5aed243a9a1b7a7a927e7c55bdf77d07d717b210c957020f9" [label=""];
  "sha256:d191febd2dd016b5aed243a9a1b7a7a927e7c55bdf77d07d717b210c957020f9" -> "sha256:f2bfead9f7ac580392f6abcbb28c3f3fcb865d7892cb3ae7d4a0ad6b704a3fc1" [label=""];
}

