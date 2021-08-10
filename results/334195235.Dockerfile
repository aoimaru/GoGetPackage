[app/sources/334195235.Dockerfile]
digraph {
  "sha256:0a863811eb72e72e7264e72ab309b90cc905a3f4bbbbaefcd03f5fb9cda3d18a" [label="docker-image://docker.io/library/elixir:1.6.0" shape="ellipse"];
  "sha256:0fad1fcb2fbf0544462a03de5ce582ae85630dabb51345bc3f4cf7071a607a15" [label="/bin/sh -c mix local.hex --force" shape="box"];
  "sha256:7c7838fcecc7be3724b78eed03a17b2799b36912814b39386a537747bc607164" [label="/bin/sh -c mix local.rebar --force" shape="box"];
  "sha256:127655d229914b396ff077acc642c44b90cad78b7b33ea867728c06bc6655523" [label="/bin/sh -c mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force" shape="box"];
  "sha256:5e20b4981166ab543ed8ea54f348aee88fb2ac379d78ffdc11889d8158a6c427" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:151d71b3cbb90dbbcff886a6a3fa6bfcd38cbd3c9023d9b8c1397681cbd9e889" [label="local://context" shape="ellipse"];
  "sha256:5bd693a2a087537cdb23c8ed962b78f644d7239ea8ca7a0037ef3c51b714bf3f" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:198d7cb96f211f44292979f868aa8df846d97f5af794bac3bf86dd5738424822" [label="mkdir{path=/app}" shape="note"];
  "sha256:0a84f250ec4bf374e379706e06ba2cef43996c2da8ee85e67c039137a15f5f25" [label="sha256:0a84f250ec4bf374e379706e06ba2cef43996c2da8ee85e67c039137a15f5f25" shape="plaintext"];
  "sha256:0a863811eb72e72e7264e72ab309b90cc905a3f4bbbbaefcd03f5fb9cda3d18a" -> "sha256:0fad1fcb2fbf0544462a03de5ce582ae85630dabb51345bc3f4cf7071a607a15" [label=""];
  "sha256:0fad1fcb2fbf0544462a03de5ce582ae85630dabb51345bc3f4cf7071a607a15" -> "sha256:7c7838fcecc7be3724b78eed03a17b2799b36912814b39386a537747bc607164" [label=""];
  "sha256:7c7838fcecc7be3724b78eed03a17b2799b36912814b39386a537747bc607164" -> "sha256:127655d229914b396ff077acc642c44b90cad78b7b33ea867728c06bc6655523" [label=""];
  "sha256:127655d229914b396ff077acc642c44b90cad78b7b33ea867728c06bc6655523" -> "sha256:5e20b4981166ab543ed8ea54f348aee88fb2ac379d78ffdc11889d8158a6c427" [label=""];
  "sha256:5e20b4981166ab543ed8ea54f348aee88fb2ac379d78ffdc11889d8158a6c427" -> "sha256:5bd693a2a087537cdb23c8ed962b78f644d7239ea8ca7a0037ef3c51b714bf3f" [label=""];
  "sha256:151d71b3cbb90dbbcff886a6a3fa6bfcd38cbd3c9023d9b8c1397681cbd9e889" -> "sha256:5bd693a2a087537cdb23c8ed962b78f644d7239ea8ca7a0037ef3c51b714bf3f" [label=""];
  "sha256:5bd693a2a087537cdb23c8ed962b78f644d7239ea8ca7a0037ef3c51b714bf3f" -> "sha256:198d7cb96f211f44292979f868aa8df846d97f5af794bac3bf86dd5738424822" [label=""];
  "sha256:198d7cb96f211f44292979f868aa8df846d97f5af794bac3bf86dd5738424822" -> "sha256:0a84f250ec4bf374e379706e06ba2cef43996c2da8ee85e67c039137a15f5f25" [label=""];
}

