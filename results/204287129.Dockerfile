[app/sources/204287129.Dockerfile]
digraph {
  "sha256:ac5b80ea9c0fb449fe9aa409015ffdb70e9b979ccca54338e4b13e436878582a" [label="local://context" shape="ellipse"];
  "sha256:c37ed964134f8f9cec8ba67ab46805fc35ecb51ba3362bd3546ff57c7f5dd50a" [label="https://mkcert.org/generate/" shape="ellipse"];
  "sha256:08863f285a4c146e720d083b49b2bddf3802f8df5af9df6a1fb68f82498883ec" [label="copy{src=/generate, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:3160abdfc42c513dde70badca3e35de0d3799e535aa723daa5fd4a9e8b0bed9f" [label="copy{src=/fetcher, dest=/fetcher}" shape="note"];
  "sha256:038477615bcbfc1c6fdfa7e74b798ecacdc12e8e97dd5ff8229fd0cee8befbd2" [label="sha256:038477615bcbfc1c6fdfa7e74b798ecacdc12e8e97dd5ff8229fd0cee8befbd2" shape="plaintext"];
  "sha256:c37ed964134f8f9cec8ba67ab46805fc35ecb51ba3362bd3546ff57c7f5dd50a" -> "sha256:08863f285a4c146e720d083b49b2bddf3802f8df5af9df6a1fb68f82498883ec" [label=""];
  "sha256:08863f285a4c146e720d083b49b2bddf3802f8df5af9df6a1fb68f82498883ec" -> "sha256:3160abdfc42c513dde70badca3e35de0d3799e535aa723daa5fd4a9e8b0bed9f" [label=""];
  "sha256:ac5b80ea9c0fb449fe9aa409015ffdb70e9b979ccca54338e4b13e436878582a" -> "sha256:3160abdfc42c513dde70badca3e35de0d3799e535aa723daa5fd4a9e8b0bed9f" [label=""];
  "sha256:3160abdfc42c513dde70badca3e35de0d3799e535aa723daa5fd4a9e8b0bed9f" -> "sha256:038477615bcbfc1c6fdfa7e74b798ecacdc12e8e97dd5ff8229fd0cee8befbd2" [label=""];
}

