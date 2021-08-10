[app/sources/323703139.Dockerfile]
digraph {
  "sha256:694983004aded737b1d3f44e0f12283fd07b3a5634a95a656e50dbd8d89c184e" [label="local://context" shape="ellipse"];
  "sha256:1cb8ce604cffb6eb630d578efac5cda10395477be43fbfb16407480deace159e" [label="docker-image://docker.elastic.co/logstash/logstash:7.0.0@sha256:4d6c69575f150ac962bb2950bef24b6e3c677bfa325b0fa36c8c6493f143fd86" shape="ellipse"];
  "sha256:8a50c5c0c0d4fca32d49245ef9b9f38896d6ea0d1b1108f5969b61fa4ebc6ec8" [label="copy{src=/logstash/logstash.yml, dest=/usr/share/logstash/config/logstash.yml}" shape="note"];
  "sha256:2e8d37f825e6fae059eb1c9ba0250ad501835b7fe200e9cae14db724ef2a0a95" [label="copy{src=/logstash/logstash.conf, dest=/usr/share/logstash/pipeline/logstash.conf}" shape="note"];
  "sha256:6aaf55cf1c35be7a316bab2c2bcc727dbc06506c755fe94fb4463c4cbaa00507" [label="sha256:6aaf55cf1c35be7a316bab2c2bcc727dbc06506c755fe94fb4463c4cbaa00507" shape="plaintext"];
  "sha256:1cb8ce604cffb6eb630d578efac5cda10395477be43fbfb16407480deace159e" -> "sha256:8a50c5c0c0d4fca32d49245ef9b9f38896d6ea0d1b1108f5969b61fa4ebc6ec8" [label=""];
  "sha256:694983004aded737b1d3f44e0f12283fd07b3a5634a95a656e50dbd8d89c184e" -> "sha256:8a50c5c0c0d4fca32d49245ef9b9f38896d6ea0d1b1108f5969b61fa4ebc6ec8" [label=""];
  "sha256:8a50c5c0c0d4fca32d49245ef9b9f38896d6ea0d1b1108f5969b61fa4ebc6ec8" -> "sha256:2e8d37f825e6fae059eb1c9ba0250ad501835b7fe200e9cae14db724ef2a0a95" [label=""];
  "sha256:694983004aded737b1d3f44e0f12283fd07b3a5634a95a656e50dbd8d89c184e" -> "sha256:2e8d37f825e6fae059eb1c9ba0250ad501835b7fe200e9cae14db724ef2a0a95" [label=""];
  "sha256:2e8d37f825e6fae059eb1c9ba0250ad501835b7fe200e9cae14db724ef2a0a95" -> "sha256:6aaf55cf1c35be7a316bab2c2bcc727dbc06506c755fe94fb4463c4cbaa00507" [label=""];
}

