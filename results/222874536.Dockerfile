[app/sources/222874536.Dockerfile]
digraph {
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:4e17ae982e2733250f5d94e667abf44888705efeb6121400282e9eab14741b5f" [label="/bin/sh -c apt-get update && apt-get install -y git wget cron bc" shape="box"];
  "sha256:ccad3f96a7c3665f6704b15e84e30c06229648ff7f56f7d2ab06b4673721fce4" [label="/bin/sh -c mkdir -p /letsencrypt/challenges/.well-known/acme-challenge" shape="box"];
  "sha256:23b47ef67c805fb8d7c7cbb0367eeee54c05a44762b10c88823ddd283e57d618" [label="/bin/sh -c git clone https://github.com/certbot/certbot /letsencrypt/app" shape="box"];
  "sha256:48ee58bf9547a18e67a3d2c2c76340cd4845f28458c8a7e1358242a41fdb5916" [label="mkdir{path=/letsencrypt/app}" shape="note"];
  "sha256:9ce1febb1f43254f90d205882e679a4e1cf472aaae7bfd7de240949185b730c5" [label="/bin/sh -c ./letsencrypt-auto; exit 0" shape="box"];
  "sha256:b6d07e7ff5b92086c1ef7a18078a84719f1d5eacb02f419881e10571b610989f" [label="/bin/sh -c echo \"OK\" > /letsencrypt/challenges/.well-known/acme-challenge/health" shape="box"];
  "sha256:bb61936e36793bcbfb51a76759b6801f5c166a10d308d26ba69eba31e241f01b" [label="/bin/sh -c wget https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl" shape="box"];
  "sha256:75c4c6368da7108301278e54f45a80d26ec0805d0070f8e0fa1064cfecba32c9" [label="/bin/sh -c chmod +x kubectl" shape="box"];
  "sha256:38f9817154db52674367a38eb2c64812f367841dc52fec2d6ca4f3576d9a20fe" [label="/bin/sh -c mv kubectl /usr/local/bin/" shape="box"];
  "sha256:de4c1ffa83ba099665bc1b78489c03b57b801c1e389a8c6243a68b23d484d6c1" [label="/bin/sh -c rm /etc/nginx/conf.d/*.conf" shape="box"];
  "sha256:5ac5a64e53f09a5e7403e07c08e9f0b781e61688d5625ec6ac56544cc506e9ee" [label="copy{src=/nginx/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:47c75e28fcd157655e49d860ac1111b09ec4a6e26150e632f7f242ea1ec2e26e" [label="copy{src=/nginx/letsencrypt.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:d8921f1f70cb56a4836835f7585dff73b18b5f0f8c52ead3eb6f6c8c1e7a36a0" [label="copy{src=/fetch_certs.sh, dest=/letsencrypt/}" shape="note"];
  "sha256:c83ed2d9ce105b4202331758874db99c67b6deeb974d518a5c93c901c7a99f64" [label="copy{src=/save_certs.sh, dest=/letsencrypt/}" shape="note"];
  "sha256:1d7df86ec4735a0d0c19b827cc8711844ae027b965322d24ec6dfa78ae5fafc4" [label="copy{src=/recreate_pods.sh, dest=/letsencrypt/}" shape="note"];
  "sha256:0ee2b8054298ddb8d6e4a048c1fa9a6816a0ffbc258d09ff8ed497021a7bdd33" [label="copy{src=/refresh_certs.sh, dest=/letsencrypt/}" shape="note"];
  "sha256:91d6237616e1eba9705030a707213ceffb4e5dc575a00832bca49009e227f32f" [label="copy{src=/start.sh, dest=/letsencrypt/}" shape="note"];
  "sha256:e22e8c5a32f5269e76d050455645ea32f9a7a038cba3919ca8cdc38a36910607" [label="copy{src=/nginx/letsencrypt.conf, dest=/etc/nginx/snippets/letsencrypt.conf}" shape="note"];
  "sha256:07a0bbe536bb2998fe078cf7405c8bccca42c4264f282e26c29efebafc07ce17" [label="/bin/sh -c ln -s /root/.local/share/letsencrypt/bin/letsencrypt /usr/local/bin/letsencrypt" shape="box"];
  "sha256:d5e9ea1e443fa183073bbf555dd259af2b4987c0e9e0810ef6a8414b42df9a9b" [label="mkdir{path=/letsencrypt}" shape="note"];
  "sha256:a2422800bca69dd0ddba23296b6c40da7f3d1c8e749ec6042e693ecbe3d0cce7" [label="sha256:a2422800bca69dd0ddba23296b6c40da7f3d1c8e749ec6042e693ecbe3d0cce7" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:4e17ae982e2733250f5d94e667abf44888705efeb6121400282e9eab14741b5f" [label=""];
  "sha256:4e17ae982e2733250f5d94e667abf44888705efeb6121400282e9eab14741b5f" -> "sha256:ccad3f96a7c3665f6704b15e84e30c06229648ff7f56f7d2ab06b4673721fce4" [label=""];
  "sha256:ccad3f96a7c3665f6704b15e84e30c06229648ff7f56f7d2ab06b4673721fce4" -> "sha256:23b47ef67c805fb8d7c7cbb0367eeee54c05a44762b10c88823ddd283e57d618" [label=""];
  "sha256:23b47ef67c805fb8d7c7cbb0367eeee54c05a44762b10c88823ddd283e57d618" -> "sha256:48ee58bf9547a18e67a3d2c2c76340cd4845f28458c8a7e1358242a41fdb5916" [label=""];
  "sha256:48ee58bf9547a18e67a3d2c2c76340cd4845f28458c8a7e1358242a41fdb5916" -> "sha256:9ce1febb1f43254f90d205882e679a4e1cf472aaae7bfd7de240949185b730c5" [label=""];
  "sha256:9ce1febb1f43254f90d205882e679a4e1cf472aaae7bfd7de240949185b730c5" -> "sha256:b6d07e7ff5b92086c1ef7a18078a84719f1d5eacb02f419881e10571b610989f" [label=""];
  "sha256:b6d07e7ff5b92086c1ef7a18078a84719f1d5eacb02f419881e10571b610989f" -> "sha256:bb61936e36793bcbfb51a76759b6801f5c166a10d308d26ba69eba31e241f01b" [label=""];
  "sha256:bb61936e36793bcbfb51a76759b6801f5c166a10d308d26ba69eba31e241f01b" -> "sha256:75c4c6368da7108301278e54f45a80d26ec0805d0070f8e0fa1064cfecba32c9" [label=""];
  "sha256:75c4c6368da7108301278e54f45a80d26ec0805d0070f8e0fa1064cfecba32c9" -> "sha256:38f9817154db52674367a38eb2c64812f367841dc52fec2d6ca4f3576d9a20fe" [label=""];
  "sha256:38f9817154db52674367a38eb2c64812f367841dc52fec2d6ca4f3576d9a20fe" -> "sha256:de4c1ffa83ba099665bc1b78489c03b57b801c1e389a8c6243a68b23d484d6c1" [label=""];
  "sha256:de4c1ffa83ba099665bc1b78489c03b57b801c1e389a8c6243a68b23d484d6c1" -> "sha256:5ac5a64e53f09a5e7403e07c08e9f0b781e61688d5625ec6ac56544cc506e9ee" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:5ac5a64e53f09a5e7403e07c08e9f0b781e61688d5625ec6ac56544cc506e9ee" [label=""];
  "sha256:5ac5a64e53f09a5e7403e07c08e9f0b781e61688d5625ec6ac56544cc506e9ee" -> "sha256:47c75e28fcd157655e49d860ac1111b09ec4a6e26150e632f7f242ea1ec2e26e" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:47c75e28fcd157655e49d860ac1111b09ec4a6e26150e632f7f242ea1ec2e26e" [label=""];
  "sha256:47c75e28fcd157655e49d860ac1111b09ec4a6e26150e632f7f242ea1ec2e26e" -> "sha256:d8921f1f70cb56a4836835f7585dff73b18b5f0f8c52ead3eb6f6c8c1e7a36a0" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:d8921f1f70cb56a4836835f7585dff73b18b5f0f8c52ead3eb6f6c8c1e7a36a0" [label=""];
  "sha256:d8921f1f70cb56a4836835f7585dff73b18b5f0f8c52ead3eb6f6c8c1e7a36a0" -> "sha256:c83ed2d9ce105b4202331758874db99c67b6deeb974d518a5c93c901c7a99f64" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:c83ed2d9ce105b4202331758874db99c67b6deeb974d518a5c93c901c7a99f64" [label=""];
  "sha256:c83ed2d9ce105b4202331758874db99c67b6deeb974d518a5c93c901c7a99f64" -> "sha256:1d7df86ec4735a0d0c19b827cc8711844ae027b965322d24ec6dfa78ae5fafc4" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:1d7df86ec4735a0d0c19b827cc8711844ae027b965322d24ec6dfa78ae5fafc4" [label=""];
  "sha256:1d7df86ec4735a0d0c19b827cc8711844ae027b965322d24ec6dfa78ae5fafc4" -> "sha256:0ee2b8054298ddb8d6e4a048c1fa9a6816a0ffbc258d09ff8ed497021a7bdd33" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:0ee2b8054298ddb8d6e4a048c1fa9a6816a0ffbc258d09ff8ed497021a7bdd33" [label=""];
  "sha256:0ee2b8054298ddb8d6e4a048c1fa9a6816a0ffbc258d09ff8ed497021a7bdd33" -> "sha256:91d6237616e1eba9705030a707213ceffb4e5dc575a00832bca49009e227f32f" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:91d6237616e1eba9705030a707213ceffb4e5dc575a00832bca49009e227f32f" [label=""];
  "sha256:91d6237616e1eba9705030a707213ceffb4e5dc575a00832bca49009e227f32f" -> "sha256:e22e8c5a32f5269e76d050455645ea32f9a7a038cba3919ca8cdc38a36910607" [label=""];
  "sha256:ec9896f1402b940f094852c8ff013eac7828ff1405cefe205d715be9415a20e3" -> "sha256:e22e8c5a32f5269e76d050455645ea32f9a7a038cba3919ca8cdc38a36910607" [label=""];
  "sha256:e22e8c5a32f5269e76d050455645ea32f9a7a038cba3919ca8cdc38a36910607" -> "sha256:07a0bbe536bb2998fe078cf7405c8bccca42c4264f282e26c29efebafc07ce17" [label=""];
  "sha256:07a0bbe536bb2998fe078cf7405c8bccca42c4264f282e26c29efebafc07ce17" -> "sha256:d5e9ea1e443fa183073bbf555dd259af2b4987c0e9e0810ef6a8414b42df9a9b" [label=""];
  "sha256:d5e9ea1e443fa183073bbf555dd259af2b4987c0e9e0810ef6a8414b42df9a9b" -> "sha256:a2422800bca69dd0ddba23296b6c40da7f3d1c8e749ec6042e693ecbe3d0cce7" [label=""];
}

