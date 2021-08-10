[app/sources/236318665.Dockerfile]
digraph {
  "sha256:b3cbc0fc7c489531176000cdb70f0664ca86bc65dc54cf1cd35eb3fed643b16b" [label="local://context" shape="ellipse"];
  "sha256:36e9b667764ad6e997e701de7b7b90d5800ac35a8b1f403ff69dce2737da8280" [label="copy{src=/goproxy, dest=/goproxy}" shape="note"];
  "sha256:793763a9fe1e8512c5708cd5f620d94d920f9c6ba8bd48d90095e31508933d1e" [label="sha256:793763a9fe1e8512c5708cd5f620d94d920f9c6ba8bd48d90095e31508933d1e" shape="plaintext"];
  "sha256:b3cbc0fc7c489531176000cdb70f0664ca86bc65dc54cf1cd35eb3fed643b16b" -> "sha256:36e9b667764ad6e997e701de7b7b90d5800ac35a8b1f403ff69dce2737da8280" [label=""];
  "sha256:36e9b667764ad6e997e701de7b7b90d5800ac35a8b1f403ff69dce2737da8280" -> "sha256:793763a9fe1e8512c5708cd5f620d94d920f9c6ba8bd48d90095e31508933d1e" [label=""];
}

