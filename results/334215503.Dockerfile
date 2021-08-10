[app/sources/334215503.Dockerfile]
digraph {
  "sha256:306ce45018a23750905ca84c6267ee418435a84c2c5feef4e925e4e4da88d839" [label="local://context" shape="ellipse"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" [label="docker-image://docker.io/tiangolo/uwsgi-nginx-flask:python3.6" shape="ellipse"];
  "sha256:2ad64b853a349d3d75d69865d5ce7e1e8ab1a55f408ec0ec751cc9acd92ad3b7" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:35a64fb5fe6e2b1a36688e1bc8bfa191d9eb396e54acd1ec71fea88ecd3b721f" [label="/bin/sh -c pip install -r ./requirements.txt --no-cache-dir" shape="box"];
  "sha256:fbefc9304faba3bb240d7361b56bc4046ad908a93fb2c057d296bf193d20653b" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:a947ba60eb572473dc4fe66ac7f86baebf88a8324d0f522d5a4157e62ee1d1e6" [label="mkdir{path=/app}" shape="note"];
  "sha256:04f1c8d7a307ef35178144798e5415a50df8730ca1fb2b75d97d458876947f9e" [label="sha256:04f1c8d7a307ef35178144798e5415a50df8730ca1fb2b75d97d458876947f9e" shape="plaintext"];
  "sha256:5b625e1ba14c373bea8ea56ab067e9d1f8223d436ae9a98fe47e61d901df2556" -> "sha256:2ad64b853a349d3d75d69865d5ce7e1e8ab1a55f408ec0ec751cc9acd92ad3b7" [label=""];
  "sha256:306ce45018a23750905ca84c6267ee418435a84c2c5feef4e925e4e4da88d839" -> "sha256:2ad64b853a349d3d75d69865d5ce7e1e8ab1a55f408ec0ec751cc9acd92ad3b7" [label=""];
  "sha256:2ad64b853a349d3d75d69865d5ce7e1e8ab1a55f408ec0ec751cc9acd92ad3b7" -> "sha256:35a64fb5fe6e2b1a36688e1bc8bfa191d9eb396e54acd1ec71fea88ecd3b721f" [label=""];
  "sha256:35a64fb5fe6e2b1a36688e1bc8bfa191d9eb396e54acd1ec71fea88ecd3b721f" -> "sha256:fbefc9304faba3bb240d7361b56bc4046ad908a93fb2c057d296bf193d20653b" [label=""];
  "sha256:306ce45018a23750905ca84c6267ee418435a84c2c5feef4e925e4e4da88d839" -> "sha256:fbefc9304faba3bb240d7361b56bc4046ad908a93fb2c057d296bf193d20653b" [label=""];
  "sha256:fbefc9304faba3bb240d7361b56bc4046ad908a93fb2c057d296bf193d20653b" -> "sha256:a947ba60eb572473dc4fe66ac7f86baebf88a8324d0f522d5a4157e62ee1d1e6" [label=""];
  "sha256:a947ba60eb572473dc4fe66ac7f86baebf88a8324d0f522d5a4157e62ee1d1e6" -> "sha256:04f1c8d7a307ef35178144798e5415a50df8730ca1fb2b75d97d458876947f9e" [label=""];
}

