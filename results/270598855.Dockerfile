[app/sources/270598855.Dockerfile]
digraph {
  "sha256:d5dc0126c3ece01ded069e34029235e6512c03ab499a918891ee3e273afbde18" [label="local://context" shape="ellipse"];
  "sha256:ae05398a60c95466bf5ddad01703e5e3b0e43f10baaefe95a42ebcb647a691f0" [label="copy{src=/kubernetes-envoy-sds, dest=/kubernetes-envoy-sds}" shape="note"];
  "sha256:e613d5f5cafa48a5a8e96e82de843a363b194642a022a62fc5c28083ae338fae" [label="sha256:e613d5f5cafa48a5a8e96e82de843a363b194642a022a62fc5c28083ae338fae" shape="plaintext"];
  "sha256:d5dc0126c3ece01ded069e34029235e6512c03ab499a918891ee3e273afbde18" -> "sha256:ae05398a60c95466bf5ddad01703e5e3b0e43f10baaefe95a42ebcb647a691f0" [label=""];
  "sha256:ae05398a60c95466bf5ddad01703e5e3b0e43f10baaefe95a42ebcb647a691f0" -> "sha256:e613d5f5cafa48a5a8e96e82de843a363b194642a022a62fc5c28083ae338fae" [label=""];
}

