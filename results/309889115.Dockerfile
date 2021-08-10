[app/sources/309889115.Dockerfile]
digraph {
  "sha256:22f8f49a0fff6d2492fa2190ce4771d7ff243d22e9b6f0f0e4a72bfd676d48e4" [label="docker-image://quay.io/infrabox/images-base:build_" shape="ellipse"];
  "sha256:67df69818f944565d1fb3c665cf774d97126d6f49019d6e0fd500d173ddd7d35" [label="local://context" shape="ellipse"];
  "sha256:db1b68a256c54e85fe3514fb3b00269d38149b55c405ca3ae29ff3865d425d3e" [label="copy{src=/src/github/trigger/trigger.py, dest=/trigger.py}" shape="note"];
  "sha256:c059c3b7244b9861b33865d1cf2363868849233b3123ad5fa895cfe404e3b34f" [label="copy{src=/src/pyinfraboxutils, dest=/pyinfraboxutils}" shape="note"];
  "sha256:f052f346dfd6be2ab6aee18246d93ab8fc2830dd1e4f4a3b4dd67e0101e5f771" [label="copy{src=/src/pyinfrabox, dest=/pyinfrabox}" shape="note"];
  "sha256:29d85ab154360cfa2518c2cdd7939333c0d963f0b1531814f27743f3115b9124" [label="sha256:29d85ab154360cfa2518c2cdd7939333c0d963f0b1531814f27743f3115b9124" shape="plaintext"];
  "sha256:22f8f49a0fff6d2492fa2190ce4771d7ff243d22e9b6f0f0e4a72bfd676d48e4" -> "sha256:db1b68a256c54e85fe3514fb3b00269d38149b55c405ca3ae29ff3865d425d3e" [label=""];
  "sha256:67df69818f944565d1fb3c665cf774d97126d6f49019d6e0fd500d173ddd7d35" -> "sha256:db1b68a256c54e85fe3514fb3b00269d38149b55c405ca3ae29ff3865d425d3e" [label=""];
  "sha256:db1b68a256c54e85fe3514fb3b00269d38149b55c405ca3ae29ff3865d425d3e" -> "sha256:c059c3b7244b9861b33865d1cf2363868849233b3123ad5fa895cfe404e3b34f" [label=""];
  "sha256:67df69818f944565d1fb3c665cf774d97126d6f49019d6e0fd500d173ddd7d35" -> "sha256:c059c3b7244b9861b33865d1cf2363868849233b3123ad5fa895cfe404e3b34f" [label=""];
  "sha256:c059c3b7244b9861b33865d1cf2363868849233b3123ad5fa895cfe404e3b34f" -> "sha256:f052f346dfd6be2ab6aee18246d93ab8fc2830dd1e4f4a3b4dd67e0101e5f771" [label=""];
  "sha256:67df69818f944565d1fb3c665cf774d97126d6f49019d6e0fd500d173ddd7d35" -> "sha256:f052f346dfd6be2ab6aee18246d93ab8fc2830dd1e4f4a3b4dd67e0101e5f771" [label=""];
  "sha256:f052f346dfd6be2ab6aee18246d93ab8fc2830dd1e4f4a3b4dd67e0101e5f771" -> "sha256:29d85ab154360cfa2518c2cdd7939333c0d963f0b1531814f27743f3115b9124" [label=""];
}

