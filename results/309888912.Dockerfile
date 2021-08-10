[app/sources/309888912.Dockerfile]
digraph {
  "sha256:887ad6e1125f33a5ac617d4d47c0b8d45de31bbd26a780ab9a0c5e1c59c8186e" [label="docker-image://docker.io/library/postgres:9.5.5-alpine" shape="ellipse"];
  "sha256:42b877cc0f9177eb0b0a3373a6f7883ce517dc4f6e3a735d71e47bbdf308320d" [label="local://context" shape="ellipse"];
  "sha256:1f48c7001bb34d0813e50656ad93a6df3e6c1c1a0f5552029f9a0986d38c8d27" [label="copy{src=/src/db/migrations, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:eba46b1c7f2bb317611f6633b56446f83f25a769e12a3b0c5d3ff7cd6255613c" [label="copy{src=/infrabox/utils/storage/postgres/dummy_data/*, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:5599c66d265b08941ac1dae1ac5cf9fbf9e8d10fa02bbf5ac981a860e26bb1bf" [label="sha256:5599c66d265b08941ac1dae1ac5cf9fbf9e8d10fa02bbf5ac981a860e26bb1bf" shape="plaintext"];
  "sha256:887ad6e1125f33a5ac617d4d47c0b8d45de31bbd26a780ab9a0c5e1c59c8186e" -> "sha256:1f48c7001bb34d0813e50656ad93a6df3e6c1c1a0f5552029f9a0986d38c8d27" [label=""];
  "sha256:42b877cc0f9177eb0b0a3373a6f7883ce517dc4f6e3a735d71e47bbdf308320d" -> "sha256:1f48c7001bb34d0813e50656ad93a6df3e6c1c1a0f5552029f9a0986d38c8d27" [label=""];
  "sha256:1f48c7001bb34d0813e50656ad93a6df3e6c1c1a0f5552029f9a0986d38c8d27" -> "sha256:eba46b1c7f2bb317611f6633b56446f83f25a769e12a3b0c5d3ff7cd6255613c" [label=""];
  "sha256:42b877cc0f9177eb0b0a3373a6f7883ce517dc4f6e3a735d71e47bbdf308320d" -> "sha256:eba46b1c7f2bb317611f6633b56446f83f25a769e12a3b0c5d3ff7cd6255613c" [label=""];
  "sha256:eba46b1c7f2bb317611f6633b56446f83f25a769e12a3b0c5d3ff7cd6255613c" -> "sha256:5599c66d265b08941ac1dae1ac5cf9fbf9e8d10fa02bbf5ac981a860e26bb1bf" [label=""];
}

