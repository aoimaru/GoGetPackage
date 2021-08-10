[app/sources/333943298.Dockerfile]
digraph {
  "sha256:fcec5d3d6167a573ea2de099af9347c14943ca285909e436427a05d8c6b513c8" [label="local://context" shape="ellipse"];
  "sha256:a0026d333bdfbb3ef4ee3bc2595c2184b7a3ca86f063df53e1671d49011f401f" [label="copy{src=/localhost.crt, dest=/localhost.crt}" shape="note"];
  "sha256:3ed62fe5238d932adad1a0f1eca7c4051a89cb8d7e8fd430ed79d8414921cb08" [label="copy{src=/localhost.key, dest=/localhost.key}" shape="note"];
  "sha256:14d23ea371d694cfb623ca9f15c6c98f5d0f851fe8fa153cd5ac327cc1a7096d" [label="copy{src=/porter, dest=/porter}" shape="note"];
  "sha256:844ada1f8d6dfc3bc56fa7e0d7c62de789f0e03e9e7bf1e15d12041c4e047ce6" [label="sha256:844ada1f8d6dfc3bc56fa7e0d7c62de789f0e03e9e7bf1e15d12041c4e047ce6" shape="plaintext"];
  "sha256:fcec5d3d6167a573ea2de099af9347c14943ca285909e436427a05d8c6b513c8" -> "sha256:a0026d333bdfbb3ef4ee3bc2595c2184b7a3ca86f063df53e1671d49011f401f" [label=""];
  "sha256:a0026d333bdfbb3ef4ee3bc2595c2184b7a3ca86f063df53e1671d49011f401f" -> "sha256:3ed62fe5238d932adad1a0f1eca7c4051a89cb8d7e8fd430ed79d8414921cb08" [label=""];
  "sha256:fcec5d3d6167a573ea2de099af9347c14943ca285909e436427a05d8c6b513c8" -> "sha256:3ed62fe5238d932adad1a0f1eca7c4051a89cb8d7e8fd430ed79d8414921cb08" [label=""];
  "sha256:3ed62fe5238d932adad1a0f1eca7c4051a89cb8d7e8fd430ed79d8414921cb08" -> "sha256:14d23ea371d694cfb623ca9f15c6c98f5d0f851fe8fa153cd5ac327cc1a7096d" [label=""];
  "sha256:fcec5d3d6167a573ea2de099af9347c14943ca285909e436427a05d8c6b513c8" -> "sha256:14d23ea371d694cfb623ca9f15c6c98f5d0f851fe8fa153cd5ac327cc1a7096d" [label=""];
  "sha256:14d23ea371d694cfb623ca9f15c6c98f5d0f851fe8fa153cd5ac327cc1a7096d" -> "sha256:844ada1f8d6dfc3bc56fa7e0d7c62de789f0e03e9e7bf1e15d12041c4e047ce6" [label=""];
}

