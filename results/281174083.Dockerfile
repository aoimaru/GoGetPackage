[app/sources/281174083.Dockerfile]
digraph {
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7ab18375bbf1f7f542259b8db96b4d04a4a1cfaae6b2c55945ea11f2e12da03a" [label="mkdir{path=/app/bin}" shape="note"];
  "sha256:7118e992a66f3a6f438f6878da5e05465f55a3ee6f245620cc3e892b0b7f9bab" [label="copy{src=/assets/config.toml, dest=/app/bin/config.toml}" shape="note"];
  "sha256:2e6dd3d2876bb05d403fc1af0be8c2fe8d1bfa2fb596e6de52aac1712dc7047d" [label="copy{src=/assets/ip.toml, dest=/app/bin/ip.toml}" shape="note"];
  "sha256:713f4225295d23d25a94bbabfd66bcb86f83cbd8182b629e4f5ba8056dce28e5" [label="copy{src=/assets/server_type.toml, dest=/app/bin/server_type.toml}" shape="note"];
  "sha256:407b8d98bc8cab598b7655b78615c8314e6e4b5d253a96feb456b252f2124d7f" [label="copy{src=/bin/login, dest=/app/bin/login}" shape="note"];
  "sha256:fd51f5b2954f03df8321f4e8a5dd0e87f1558fe10f6b56fece3135e6201ac523" [label="copy{src=/bin/gateway, dest=/app/bin/gateway}" shape="note"];
  "sha256:56275a65b8a25b9aa16cd6e5972b6f347f778120f9027444a96d7066d16335cf" [label="copy{src=/bin/hub, dest=/app/bin/hub}" shape="note"];
  "sha256:189099c529fea20ada9a7e62edbf7200b346f22e0ade1e9383adc7524d704ae7" [label="copy{src=/bin/lobby, dest=/app/bin/lobby}" shape="note"];
  "sha256:e42cb353e4373c74aa6e663b1240dfcbd7561dfc7e30fa67a13de88771168488" [label="copy{src=/bin/room, dest=/app/bin/room}" shape="note"];
  "sha256:6e8c525cb6dee268a2bceafcd727b67581e07b3a2c86758c749e3841e01f9fdd" [label="sha256:6e8c525cb6dee268a2bceafcd727b67581e07b3a2c86758c749e3841e01f9fdd" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:7ab18375bbf1f7f542259b8db96b4d04a4a1cfaae6b2c55945ea11f2e12da03a" [label=""];
  "sha256:7ab18375bbf1f7f542259b8db96b4d04a4a1cfaae6b2c55945ea11f2e12da03a" -> "sha256:7118e992a66f3a6f438f6878da5e05465f55a3ee6f245620cc3e892b0b7f9bab" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:7118e992a66f3a6f438f6878da5e05465f55a3ee6f245620cc3e892b0b7f9bab" [label=""];
  "sha256:7118e992a66f3a6f438f6878da5e05465f55a3ee6f245620cc3e892b0b7f9bab" -> "sha256:2e6dd3d2876bb05d403fc1af0be8c2fe8d1bfa2fb596e6de52aac1712dc7047d" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:2e6dd3d2876bb05d403fc1af0be8c2fe8d1bfa2fb596e6de52aac1712dc7047d" [label=""];
  "sha256:2e6dd3d2876bb05d403fc1af0be8c2fe8d1bfa2fb596e6de52aac1712dc7047d" -> "sha256:713f4225295d23d25a94bbabfd66bcb86f83cbd8182b629e4f5ba8056dce28e5" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:713f4225295d23d25a94bbabfd66bcb86f83cbd8182b629e4f5ba8056dce28e5" [label=""];
  "sha256:713f4225295d23d25a94bbabfd66bcb86f83cbd8182b629e4f5ba8056dce28e5" -> "sha256:407b8d98bc8cab598b7655b78615c8314e6e4b5d253a96feb456b252f2124d7f" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:407b8d98bc8cab598b7655b78615c8314e6e4b5d253a96feb456b252f2124d7f" [label=""];
  "sha256:407b8d98bc8cab598b7655b78615c8314e6e4b5d253a96feb456b252f2124d7f" -> "sha256:fd51f5b2954f03df8321f4e8a5dd0e87f1558fe10f6b56fece3135e6201ac523" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:fd51f5b2954f03df8321f4e8a5dd0e87f1558fe10f6b56fece3135e6201ac523" [label=""];
  "sha256:fd51f5b2954f03df8321f4e8a5dd0e87f1558fe10f6b56fece3135e6201ac523" -> "sha256:56275a65b8a25b9aa16cd6e5972b6f347f778120f9027444a96d7066d16335cf" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:56275a65b8a25b9aa16cd6e5972b6f347f778120f9027444a96d7066d16335cf" [label=""];
  "sha256:56275a65b8a25b9aa16cd6e5972b6f347f778120f9027444a96d7066d16335cf" -> "sha256:189099c529fea20ada9a7e62edbf7200b346f22e0ade1e9383adc7524d704ae7" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:189099c529fea20ada9a7e62edbf7200b346f22e0ade1e9383adc7524d704ae7" [label=""];
  "sha256:189099c529fea20ada9a7e62edbf7200b346f22e0ade1e9383adc7524d704ae7" -> "sha256:e42cb353e4373c74aa6e663b1240dfcbd7561dfc7e30fa67a13de88771168488" [label=""];
  "sha256:d0c9af639a2c3eb6c93224d1607e4755805190df6fcbd66b33a1563bb534848f" -> "sha256:e42cb353e4373c74aa6e663b1240dfcbd7561dfc7e30fa67a13de88771168488" [label=""];
  "sha256:e42cb353e4373c74aa6e663b1240dfcbd7561dfc7e30fa67a13de88771168488" -> "sha256:6e8c525cb6dee268a2bceafcd727b67581e07b3a2c86758c749e3841e01f9fdd" [label=""];
}

