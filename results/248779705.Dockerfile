[app/sources/248779705.Dockerfile]
digraph {
  "sha256:ba960f3482a0507522274699cc206150005dcac2f69092dc3f0a9eb0fe65c59f" [label="local://context" shape="ellipse"];
  "sha256:bbe42c648e68adbeacbd954de217470ff8efab742e012fe99fe4ed3e4a75b3f7" [label="docker-image://docker.io/amazon/amazon-ecs-scratch:make" shape="ellipse"];
  "sha256:dd064a88146d1b43ebe3ff5c8e9bb3a1db4faa95cc4416cf062e99039f39c875" [label="copy{src=/out/ecs-secrets, dest=/ecs-secrets}" shape="note"];
  "sha256:81c262cb84c345b33ce68c7015fb83ad833cbf0ae1f8b67a9e6dd5082e6d8026" [label="copy{src=/LICENSE, dest=/}" shape="note"];
  "sha256:392218095631fe6d69191df7498ac8fda93f17b1c33953d11435cf0cbd239dfe" [label="copy{src=/misc/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:842a5e6288739d2568ed836ef763a003a960c88dfcb9ccb2f3d58bea17e9afeb" [label="sha256:842a5e6288739d2568ed836ef763a003a960c88dfcb9ccb2f3d58bea17e9afeb" shape="plaintext"];
  "sha256:bbe42c648e68adbeacbd954de217470ff8efab742e012fe99fe4ed3e4a75b3f7" -> "sha256:dd064a88146d1b43ebe3ff5c8e9bb3a1db4faa95cc4416cf062e99039f39c875" [label=""];
  "sha256:ba960f3482a0507522274699cc206150005dcac2f69092dc3f0a9eb0fe65c59f" -> "sha256:dd064a88146d1b43ebe3ff5c8e9bb3a1db4faa95cc4416cf062e99039f39c875" [label=""];
  "sha256:dd064a88146d1b43ebe3ff5c8e9bb3a1db4faa95cc4416cf062e99039f39c875" -> "sha256:81c262cb84c345b33ce68c7015fb83ad833cbf0ae1f8b67a9e6dd5082e6d8026" [label=""];
  "sha256:ba960f3482a0507522274699cc206150005dcac2f69092dc3f0a9eb0fe65c59f" -> "sha256:81c262cb84c345b33ce68c7015fb83ad833cbf0ae1f8b67a9e6dd5082e6d8026" [label=""];
  "sha256:81c262cb84c345b33ce68c7015fb83ad833cbf0ae1f8b67a9e6dd5082e6d8026" -> "sha256:392218095631fe6d69191df7498ac8fda93f17b1c33953d11435cf0cbd239dfe" [label=""];
  "sha256:ba960f3482a0507522274699cc206150005dcac2f69092dc3f0a9eb0fe65c59f" -> "sha256:392218095631fe6d69191df7498ac8fda93f17b1c33953d11435cf0cbd239dfe" [label=""];
  "sha256:392218095631fe6d69191df7498ac8fda93f17b1c33953d11435cf0cbd239dfe" -> "sha256:842a5e6288739d2568ed836ef763a003a960c88dfcb9ccb2f3d58bea17e9afeb" [label=""];
}

