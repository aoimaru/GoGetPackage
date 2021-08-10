[app/sources/236041250.Dockerfile]
digraph {
  "sha256:1d193f58de9cdf69612a0f110f3aa064ddf7807e69996c7650efa4b5b4c58a49" [label="docker-image://docker.io/cuteribs/alpine:latest" shape="ellipse"];
  "sha256:3dc51845eca4fc14fc70568c6294ec8b7e00b3f30522935c23fbc36a143e4896" [label="local://context" shape="ellipse"];
  "sha256:880936776a517c1400da699e1e4f4b3be762857e9720c2c882c837d9111ddd6b" [label="copy{src=/*.bz, dest=/ss/}" shape="note"];
  "sha256:5b64b99a859ef34e55fbe821ba85e830f50a5a735817b6cc7b957519f0d3b82e" [label="/bin/sh -c apk add --no-cache python libsodium && \trm -rf /var/cache/apk/*" shape="box"];
  "sha256:6e30368a5601838ef3b9536e4f9f750998f8ccb175a7b8e206685edb7a1c26aa" [label="mkdir{path=/ss/shadowsocks}" shape="note"];
  "sha256:717d5ad9ba03c152e56c0d6f397b3e12d11fad4e2bca3c67a3efc52650b199e0" [label="sha256:717d5ad9ba03c152e56c0d6f397b3e12d11fad4e2bca3c67a3efc52650b199e0" shape="plaintext"];
  "sha256:1d193f58de9cdf69612a0f110f3aa064ddf7807e69996c7650efa4b5b4c58a49" -> "sha256:880936776a517c1400da699e1e4f4b3be762857e9720c2c882c837d9111ddd6b" [label=""];
  "sha256:3dc51845eca4fc14fc70568c6294ec8b7e00b3f30522935c23fbc36a143e4896" -> "sha256:880936776a517c1400da699e1e4f4b3be762857e9720c2c882c837d9111ddd6b" [label=""];
  "sha256:880936776a517c1400da699e1e4f4b3be762857e9720c2c882c837d9111ddd6b" -> "sha256:5b64b99a859ef34e55fbe821ba85e830f50a5a735817b6cc7b957519f0d3b82e" [label=""];
  "sha256:5b64b99a859ef34e55fbe821ba85e830f50a5a735817b6cc7b957519f0d3b82e" -> "sha256:6e30368a5601838ef3b9536e4f9f750998f8ccb175a7b8e206685edb7a1c26aa" [label=""];
  "sha256:6e30368a5601838ef3b9536e4f9f750998f8ccb175a7b8e206685edb7a1c26aa" -> "sha256:717d5ad9ba03c152e56c0d6f397b3e12d11fad4e2bca3c67a3efc52650b199e0" [label=""];
}

