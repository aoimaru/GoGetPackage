[app/sources/474603670.Dockerfile]
digraph {
  "sha256:82f50028f168313cdc54c5f7bda6a092187f30e9f4cb5cdef51a2bab31433e21" [label="docker-image://docker.io/library/node:7-slim" shape="ellipse"];
  "sha256:ed1b62a81e5d4b1708fc2f6ad960e2fb20752b377e0b153fe7cea33cbdd8d680" [label="/bin/sh -c npm install -g webpack webpack-dev-server yarn" shape="box"];
  "sha256:11733e3e0fa0c14cfda06251ed676e24a49b1be6a376af678b4c1ffec8b79488" [label="mkdir{path=/app}" shape="note"];
  "sha256:f5e435e4ea7123d036050d296783fb67e3b2387f2363a00d6416ea1ce0509355" [label="sha256:f5e435e4ea7123d036050d296783fb67e3b2387f2363a00d6416ea1ce0509355" shape="plaintext"];
  "sha256:82f50028f168313cdc54c5f7bda6a092187f30e9f4cb5cdef51a2bab31433e21" -> "sha256:ed1b62a81e5d4b1708fc2f6ad960e2fb20752b377e0b153fe7cea33cbdd8d680" [label=""];
  "sha256:ed1b62a81e5d4b1708fc2f6ad960e2fb20752b377e0b153fe7cea33cbdd8d680" -> "sha256:11733e3e0fa0c14cfda06251ed676e24a49b1be6a376af678b4c1ffec8b79488" [label=""];
  "sha256:11733e3e0fa0c14cfda06251ed676e24a49b1be6a376af678b4c1ffec8b79488" -> "sha256:f5e435e4ea7123d036050d296783fb67e3b2387f2363a00d6416ea1ce0509355" [label=""];
}

