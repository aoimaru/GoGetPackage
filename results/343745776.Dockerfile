[app/sources/343745776.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:548f6ed662a370042638dc5f0001f4e483239524c99a96ef50636746950a4331" [label="local://context" shape="ellipse"];
  "sha256:c9be9a9ac0f3ad2ca4ddba4ad7cc3a5ab464e9992a683d40c2382d10e7fdea16" [label="copy{src=/sonyflake_server, dest=/}" shape="note"];
  "sha256:ae9aa3e19ef1001d5332eddb6250e9ba2a52752fcacd71d6cfe826a35dd7f9fc" [label="sha256:ae9aa3e19ef1001d5332eddb6250e9ba2a52752fcacd71d6cfe826a35dd7f9fc" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c9be9a9ac0f3ad2ca4ddba4ad7cc3a5ab464e9992a683d40c2382d10e7fdea16" [label=""];
  "sha256:548f6ed662a370042638dc5f0001f4e483239524c99a96ef50636746950a4331" -> "sha256:c9be9a9ac0f3ad2ca4ddba4ad7cc3a5ab464e9992a683d40c2382d10e7fdea16" [label=""];
  "sha256:c9be9a9ac0f3ad2ca4ddba4ad7cc3a5ab464e9992a683d40c2382d10e7fdea16" -> "sha256:ae9aa3e19ef1001d5332eddb6250e9ba2a52752fcacd71d6cfe826a35dd7f9fc" [label=""];
}

