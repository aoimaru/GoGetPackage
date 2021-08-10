[app/sources/252801117.Dockerfile]
digraph {
  "sha256:2a05c36eee517fa9be34bac581b1ef244ce2244c72b834b87339bdbca5010b4a" [label="docker-image://docker.io/dreamcat4/samba@sha256:3d8828b5924e86b29b3e1089e643c5c9e3b3d02b90f518a100ddd12959638064" shape="ellipse"];
  "sha256:4e3ea789c00e7aa54bbfe4366e67b91d946befc298c9dd5c5ce6a19e0cd82365" [label="local://context" shape="ellipse"];
  "sha256:4bd9f876ada1b718281805f6856ee203453b7dd921e60b8d287c6f608814e03c" [label="copy{src=/services.d, dest=/etc/services.d}" shape="note"];
  "sha256:bc203cbf66b6a610f979a05a47dac9d1488432b41d3bd8403f118bdb6a7b7506" [label="sha256:bc203cbf66b6a610f979a05a47dac9d1488432b41d3bd8403f118bdb6a7b7506" shape="plaintext"];
  "sha256:2a05c36eee517fa9be34bac581b1ef244ce2244c72b834b87339bdbca5010b4a" -> "sha256:4bd9f876ada1b718281805f6856ee203453b7dd921e60b8d287c6f608814e03c" [label=""];
  "sha256:4e3ea789c00e7aa54bbfe4366e67b91d946befc298c9dd5c5ce6a19e0cd82365" -> "sha256:4bd9f876ada1b718281805f6856ee203453b7dd921e60b8d287c6f608814e03c" [label=""];
  "sha256:4bd9f876ada1b718281805f6856ee203453b7dd921e60b8d287c6f608814e03c" -> "sha256:bc203cbf66b6a610f979a05a47dac9d1488432b41d3bd8403f118bdb6a7b7506" [label=""];
}

