[app/sources/332647715.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:a02dbd210c75d9431d494af1da4c0308fb673907dc3c437790c7e59ba77cfb21" [label="local://context" shape="ellipse"];
  "sha256:15aaa35cc749478359c7516a59278713ea5f46fa3bff1043e0eec233666abf49" [label="copy{src=/agent, dest=/usr/local/bin}" shape="note"];
  "sha256:8f1c0f73bdfb9d91c03e5c1f6ea8c2d26dff9ca915feef0cba3192d571f68a70" [label="sha256:8f1c0f73bdfb9d91c03e5c1f6ea8c2d26dff9ca915feef0cba3192d571f68a70" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:15aaa35cc749478359c7516a59278713ea5f46fa3bff1043e0eec233666abf49" [label=""];
  "sha256:a02dbd210c75d9431d494af1da4c0308fb673907dc3c437790c7e59ba77cfb21" -> "sha256:15aaa35cc749478359c7516a59278713ea5f46fa3bff1043e0eec233666abf49" [label=""];
  "sha256:15aaa35cc749478359c7516a59278713ea5f46fa3bff1043e0eec233666abf49" -> "sha256:8f1c0f73bdfb9d91c03e5c1f6ea8c2d26dff9ca915feef0cba3192d571f68a70" [label=""];
}

