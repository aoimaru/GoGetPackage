[app/sources/136862094.Dockerfile]
digraph {
  "sha256:d810d9a4f2557112c861fa0bb8113f7e1bd9d356c802a346806d2251b93c6fc4" [label="docker-image://docker.io/spotify/alpine:latest" shape="ellipse"];
  "sha256:c2e5181eeeed7c4b73d76135fec2c0211fb9c93920243003a1460f37814d2ec1" [label="/bin/sh -c curl -L -o /tmp/syslog-redirector.zip https://github.com/spotify/syslog-redirector/releases/download/0.0.5/syslog-redirector.zip" shape="box"];
  "sha256:e4bf11bf6854dc4dec4acbd5c1c033a734ec57bc0b22b69ffcca01ce24468ba7" [label="/bin/sh -c unzip /tmp/syslog-redirector.zip syslog-redirector -d / && rm /tmp/syslog-redirector.zip" shape="box"];
  "sha256:896cb58405f8508a31e5551225e5a731ec317558c4ee7d32c6dac23243ec90f9" [label="sha256:896cb58405f8508a31e5551225e5a731ec317558c4ee7d32c6dac23243ec90f9" shape="plaintext"];
  "sha256:d810d9a4f2557112c861fa0bb8113f7e1bd9d356c802a346806d2251b93c6fc4" -> "sha256:c2e5181eeeed7c4b73d76135fec2c0211fb9c93920243003a1460f37814d2ec1" [label=""];
  "sha256:c2e5181eeeed7c4b73d76135fec2c0211fb9c93920243003a1460f37814d2ec1" -> "sha256:e4bf11bf6854dc4dec4acbd5c1c033a734ec57bc0b22b69ffcca01ce24468ba7" [label=""];
  "sha256:e4bf11bf6854dc4dec4acbd5c1c033a734ec57bc0b22b69ffcca01ce24468ba7" -> "sha256:896cb58405f8508a31e5551225e5a731ec317558c4ee7d32c6dac23243ec90f9" [label=""];
}

