[app/sources/345356525.Dockerfile]
digraph {
  "sha256:c67de82e5ef73cba3d20d6aebc39ef97a893025ecf297f8cff6a50b17a66d8b1" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:trusty-build" shape="ellipse"];
  "sha256:3a56a3e14daa83a68dab7b35bdd6f5e2e58bafda1c57ffe15b10b82c43158add" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:93a991d45b9af0e02b64d104cb624756131fed1accb98d168da5aabd61f48afe" [label="sha256:93a991d45b9af0e02b64d104cb624756131fed1accb98d168da5aabd61f48afe" shape="plaintext"];
  "sha256:c67de82e5ef73cba3d20d6aebc39ef97a893025ecf297f8cff6a50b17a66d8b1" -> "sha256:3a56a3e14daa83a68dab7b35bdd6f5e2e58bafda1c57ffe15b10b82c43158add" [label=""];
  "sha256:3a56a3e14daa83a68dab7b35bdd6f5e2e58bafda1c57ffe15b10b82c43158add" -> "sha256:93a991d45b9af0e02b64d104cb624756131fed1accb98d168da5aabd61f48afe" [label=""];
}

