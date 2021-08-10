[app/sources/250573277.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:8166d109368bb867ce4515a71f32cc932e695f8ed9a6d2347ee07bceb14cc20d" [label="/bin/sh -c apk upgrade --no-cache" shape="box"];
  "sha256:9ce9f31c1ddc02438f4bc2a5b344c5960e0e9e95bf3c26be1bfbc55314cd12fd" [label="/bin/sh -c apk add --no-cache ca-certificates openssl bash" shape="box"];
  "sha256:5872f7be986095b51eb974367c8e8d972a8ab880e78bc08f766acbd9553007e5" [label="/bin/sh -c update-ca-certificates" shape="box"];
  "sha256:b51542d54f5cc28cbf35db5b11ce9a77f56ae15fa1281e632fecda8296af0135" [label="/bin/sh -c wget https://storage.googleapis.com/kubernetes-release/release/v1.12.3/bin/linux/amd64/kubectl   -O /usr/bin/kubectl && chmod +x /usr/bin/kubectl" shape="box"];
  "sha256:08ad82eb3e27caf424ab19fd7a8acea7d0132af9fee75d3cfcd624f3231a2209" [label="local://context" shape="ellipse"];
  "sha256:3155a9fae1e4322d29b346bd15361ec7bae34b84d979e1a0433a02a027fe386f" [label="copy{src=/bin/kd_linux_amd64, dest=/bin/kd}" shape="note"];
  "sha256:18c9824b74f0255c25441b96c78f435ddf5eba41e88223358960d9ee4fe6b9ed" [label="/bin/sh -c chmod +x /bin/kd" shape="box"];
  "sha256:8adca5b198a5de2af65b585d582bdd1bd97c5b8b56d778f3ca2c746b89f321bd" [label="sha256:8adca5b198a5de2af65b585d582bdd1bd97c5b8b56d778f3ca2c746b89f321bd" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:8166d109368bb867ce4515a71f32cc932e695f8ed9a6d2347ee07bceb14cc20d" [label=""];
  "sha256:8166d109368bb867ce4515a71f32cc932e695f8ed9a6d2347ee07bceb14cc20d" -> "sha256:9ce9f31c1ddc02438f4bc2a5b344c5960e0e9e95bf3c26be1bfbc55314cd12fd" [label=""];
  "sha256:9ce9f31c1ddc02438f4bc2a5b344c5960e0e9e95bf3c26be1bfbc55314cd12fd" -> "sha256:5872f7be986095b51eb974367c8e8d972a8ab880e78bc08f766acbd9553007e5" [label=""];
  "sha256:5872f7be986095b51eb974367c8e8d972a8ab880e78bc08f766acbd9553007e5" -> "sha256:b51542d54f5cc28cbf35db5b11ce9a77f56ae15fa1281e632fecda8296af0135" [label=""];
  "sha256:b51542d54f5cc28cbf35db5b11ce9a77f56ae15fa1281e632fecda8296af0135" -> "sha256:3155a9fae1e4322d29b346bd15361ec7bae34b84d979e1a0433a02a027fe386f" [label=""];
  "sha256:08ad82eb3e27caf424ab19fd7a8acea7d0132af9fee75d3cfcd624f3231a2209" -> "sha256:3155a9fae1e4322d29b346bd15361ec7bae34b84d979e1a0433a02a027fe386f" [label=""];
  "sha256:3155a9fae1e4322d29b346bd15361ec7bae34b84d979e1a0433a02a027fe386f" -> "sha256:18c9824b74f0255c25441b96c78f435ddf5eba41e88223358960d9ee4fe6b9ed" [label=""];
  "sha256:18c9824b74f0255c25441b96c78f435ddf5eba41e88223358960d9ee4fe6b9ed" -> "sha256:8adca5b198a5de2af65b585d582bdd1bd97c5b8b56d778f3ca2c746b89f321bd" [label=""];
}

