[app/sources/171898190.Dockerfile]
digraph {
  "sha256:78a8fba67b11923eba944175da1e56a1334ebfc8a403fce60273992f9debd0fd" [label="docker-image://docker.io/balenalib/raspberry-pi:stretch" shape="ellipse"];
  "sha256:298dd55c861df4adae34ac38bdae2a4ad20b6b71c878e2aa19a44c8782a54888" [label="cross-build-start" shape="box"];
  "sha256:ccb6ad9c16d39bdc0574b61f36c5387a1d4772719074478e149a9d78af775f15" [label="/bin/sh -c apt-get update       && apt-get install -y         ca-certificates         nginx       && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:aba8431ab66b04c56ef939ae9c1d597beea3bded0ec0e51a37194db5f941077f" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log       && ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:718b1bc65a48d840235dc95bc6078e9f557306693b3101aea672b0ab6d29be79" [label="local://context" shape="ellipse"];
  "sha256:46761698523aca86d9f5a0fb0849b93437ccbcc9b24aa4794c9feb4082897d07" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:e18e182702a2375472956d0bf4b4e521dd5762aa52460d9ba694ff570866a9c8" [label="cross-build-end" shape="box"];
  "sha256:8f9c605a32806b18181febaa12637df1a66ecb879c761f5fad5a8ae089796d25" [label="sha256:8f9c605a32806b18181febaa12637df1a66ecb879c761f5fad5a8ae089796d25" shape="plaintext"];
  "sha256:78a8fba67b11923eba944175da1e56a1334ebfc8a403fce60273992f9debd0fd" -> "sha256:298dd55c861df4adae34ac38bdae2a4ad20b6b71c878e2aa19a44c8782a54888" [label=""];
  "sha256:298dd55c861df4adae34ac38bdae2a4ad20b6b71c878e2aa19a44c8782a54888" -> "sha256:ccb6ad9c16d39bdc0574b61f36c5387a1d4772719074478e149a9d78af775f15" [label=""];
  "sha256:ccb6ad9c16d39bdc0574b61f36c5387a1d4772719074478e149a9d78af775f15" -> "sha256:aba8431ab66b04c56ef939ae9c1d597beea3bded0ec0e51a37194db5f941077f" [label=""];
  "sha256:aba8431ab66b04c56ef939ae9c1d597beea3bded0ec0e51a37194db5f941077f" -> "sha256:46761698523aca86d9f5a0fb0849b93437ccbcc9b24aa4794c9feb4082897d07" [label=""];
  "sha256:718b1bc65a48d840235dc95bc6078e9f557306693b3101aea672b0ab6d29be79" -> "sha256:46761698523aca86d9f5a0fb0849b93437ccbcc9b24aa4794c9feb4082897d07" [label=""];
  "sha256:46761698523aca86d9f5a0fb0849b93437ccbcc9b24aa4794c9feb4082897d07" -> "sha256:e18e182702a2375472956d0bf4b4e521dd5762aa52460d9ba694ff570866a9c8" [label=""];
  "sha256:e18e182702a2375472956d0bf4b4e521dd5762aa52460d9ba694ff570866a9c8" -> "sha256:8f9c605a32806b18181febaa12637df1a66ecb879c761f5fad5a8ae089796d25" [label=""];
}

