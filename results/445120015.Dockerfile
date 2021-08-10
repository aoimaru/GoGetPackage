[app/sources/445120015.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:9f5609c5d2da188d9aaa53672165974500872144a41571b9469fa60c051b44b7" [label="local://context" shape="ellipse"];
  "sha256:6c1dbc107c84c96e38efb4cda4f7361b92c5373ad4ba08e988266a9b3437a58c" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:96f9bef81aff95e27c8ff5bf302b460f66fb96bed62cd0ff142f9b30fb8cf452" [label="mkdir{path=/app}" shape="note"];
  "sha256:4d7111ec673d1e1a955540b4a111bc3064d9576b78ef537349bedca722f8dedd" [label="/bin/sh -c cd /app ; go install gumball" shape="box"];
  "sha256:0b9af9ecfb59a9d6d6ef545aeef6c96bccbe23f523d1bf94058ec8559311a3bb" [label="sha256:0b9af9ecfb59a9d6d6ef545aeef6c96bccbe23f523d1bf94058ec8559311a3bb" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" [label=""];
  "sha256:9fd3f35ee725d319e753d9c26fb3f99eeb27b3d6e60298413aa6299d5e2c364a" -> "sha256:6c1dbc107c84c96e38efb4cda4f7361b92c5373ad4ba08e988266a9b3437a58c" [label=""];
  "sha256:9f5609c5d2da188d9aaa53672165974500872144a41571b9469fa60c051b44b7" -> "sha256:6c1dbc107c84c96e38efb4cda4f7361b92c5373ad4ba08e988266a9b3437a58c" [label=""];
  "sha256:6c1dbc107c84c96e38efb4cda4f7361b92c5373ad4ba08e988266a9b3437a58c" -> "sha256:96f9bef81aff95e27c8ff5bf302b460f66fb96bed62cd0ff142f9b30fb8cf452" [label=""];
  "sha256:96f9bef81aff95e27c8ff5bf302b460f66fb96bed62cd0ff142f9b30fb8cf452" -> "sha256:4d7111ec673d1e1a955540b4a111bc3064d9576b78ef537349bedca722f8dedd" [label=""];
  "sha256:4d7111ec673d1e1a955540b4a111bc3064d9576b78ef537349bedca722f8dedd" -> "sha256:0b9af9ecfb59a9d6d6ef545aeef6c96bccbe23f523d1bf94058ec8559311a3bb" [label=""];
}

