[app/sources/387623588.Dockerfile]
digraph {
  "sha256:f982d30f19f13163b5596c7f4ef75fa89fde89bfffe85b0206dd57d59a9ed571" [label="local://context" shape="ellipse"];
  "sha256:05d431421449cbe1199d09a488ce8b7ae7802532d6a6c1916fdeb35c3d3548c7" [label="copy{src=/localhost.crt, dest=/localhost.crt}" shape="note"];
  "sha256:9ab0eb2a9a3309d25afbf37fd9f75b57cd7f55165e474812ddc7f2097cd0e198" [label="copy{src=/localhost.key, dest=/localhost.key}" shape="note"];
  "sha256:6b58733eee4ff211b8e8a78b8ac8b73941c07299519513b2823758a2394a018a" [label="copy{src=/porter, dest=/porter}" shape="note"];
  "sha256:0a4c787d38e7661981ddf89cc64f32f53bf16c6e30d7aff4dc5c0e73e9f63d53" [label="sha256:0a4c787d38e7661981ddf89cc64f32f53bf16c6e30d7aff4dc5c0e73e9f63d53" shape="plaintext"];
  "sha256:f982d30f19f13163b5596c7f4ef75fa89fde89bfffe85b0206dd57d59a9ed571" -> "sha256:05d431421449cbe1199d09a488ce8b7ae7802532d6a6c1916fdeb35c3d3548c7" [label=""];
  "sha256:05d431421449cbe1199d09a488ce8b7ae7802532d6a6c1916fdeb35c3d3548c7" -> "sha256:9ab0eb2a9a3309d25afbf37fd9f75b57cd7f55165e474812ddc7f2097cd0e198" [label=""];
  "sha256:f982d30f19f13163b5596c7f4ef75fa89fde89bfffe85b0206dd57d59a9ed571" -> "sha256:9ab0eb2a9a3309d25afbf37fd9f75b57cd7f55165e474812ddc7f2097cd0e198" [label=""];
  "sha256:9ab0eb2a9a3309d25afbf37fd9f75b57cd7f55165e474812ddc7f2097cd0e198" -> "sha256:6b58733eee4ff211b8e8a78b8ac8b73941c07299519513b2823758a2394a018a" [label=""];
  "sha256:f982d30f19f13163b5596c7f4ef75fa89fde89bfffe85b0206dd57d59a9ed571" -> "sha256:6b58733eee4ff211b8e8a78b8ac8b73941c07299519513b2823758a2394a018a" [label=""];
  "sha256:6b58733eee4ff211b8e8a78b8ac8b73941c07299519513b2823758a2394a018a" -> "sha256:0a4c787d38e7661981ddf89cc64f32f53bf16c6e30d7aff4dc5c0e73e9f63d53" [label=""];
}

