[app/sources/358673555.Dockerfile]
digraph {
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" [label="docker-image://docker.io/biocontainers/biocontainers:v1.0.0_cv4@sha256:586c2bfecebee37ccef5db40d6c91483178ab04fea775bdbada179d9631e956f" shape="ellipse"];
  "sha256:a1f385adf117928de5095f852f760c3a02e251f4c081fca4eedbcb44c7b88563" [label="/bin/sh -c conda install picard=1.141" shape="box"];
  "sha256:3eb775016fa2832296ff3d88d8c6cc99b9fb8dbf978e376ccb61b6973ae6ed97" [label="mkdir{path=/data}" shape="note"];
  "sha256:720632e6af644a6df1b444fbd9b13cd39b53cbaa61948c72ffc77927977b7069" [label="sha256:720632e6af644a6df1b444fbd9b13cd39b53cbaa61948c72ffc77927977b7069" shape="plaintext"];
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" -> "sha256:a1f385adf117928de5095f852f760c3a02e251f4c081fca4eedbcb44c7b88563" [label=""];
  "sha256:a1f385adf117928de5095f852f760c3a02e251f4c081fca4eedbcb44c7b88563" -> "sha256:3eb775016fa2832296ff3d88d8c6cc99b9fb8dbf978e376ccb61b6973ae6ed97" [label=""];
  "sha256:3eb775016fa2832296ff3d88d8c6cc99b9fb8dbf978e376ccb61b6973ae6ed97" -> "sha256:720632e6af644a6df1b444fbd9b13cd39b53cbaa61948c72ffc77927977b7069" [label=""];
}

