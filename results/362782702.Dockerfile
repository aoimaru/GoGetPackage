[app/sources/362782702.Dockerfile]
digraph {
  "sha256:3bed1eac7a2c3591f7f4878052528d21339fec70f60bffc4a93289f122db5a49" [label="docker-image://docker.io/airhacks/openliberty-webprofile7:latest" shape="ellipse"];
  "sha256:54e024196ab78e6fc0d8e07396a4ff03a7f318778879281041e7e2723fe61496" [label="local://context" shape="ellipse"];
  "sha256:18ef367956a465cbe0324eaf0a410443c5b65858a9a904ca049ef18a8a2d80bb" [label="copy{src=/ping.war, dest=/config/dropins/}" shape="note"];
  "sha256:2d6b1e4bd6ecc9d36c55ffe09b42de73697a7c881940f6eb89a9b69ccfbe3aa0" [label="sha256:2d6b1e4bd6ecc9d36c55ffe09b42de73697a7c881940f6eb89a9b69ccfbe3aa0" shape="plaintext"];
  "sha256:3bed1eac7a2c3591f7f4878052528d21339fec70f60bffc4a93289f122db5a49" -> "sha256:18ef367956a465cbe0324eaf0a410443c5b65858a9a904ca049ef18a8a2d80bb" [label=""];
  "sha256:54e024196ab78e6fc0d8e07396a4ff03a7f318778879281041e7e2723fe61496" -> "sha256:18ef367956a465cbe0324eaf0a410443c5b65858a9a904ca049ef18a8a2d80bb" [label=""];
  "sha256:18ef367956a465cbe0324eaf0a410443c5b65858a9a904ca049ef18a8a2d80bb" -> "sha256:2d6b1e4bd6ecc9d36c55ffe09b42de73697a7c881940f6eb89a9b69ccfbe3aa0" [label=""];
}

