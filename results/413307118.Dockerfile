[app/sources/413307118.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:db3d8fa399a1291c3201011c0d1baa936d92d23a4fa1ca8090f782f3c23c3410" [label="local://context" shape="ellipse"];
  "sha256:e1ab9fd7547f2a55a020240bab3994973e66a793ca1266dc3ba9c26858d2af05" [label="copy{src=/install/ubuntu_core.sh, dest=/work/}" shape="note"];
  "sha256:b7280823b120130db2cf5f371739e6913ba3b3045f241fc4d31ffbb6b7517854" [label="/bin/sh -c /work/ubuntu_core.sh" shape="box"];
  "sha256:6d911ca4fa355e01d623629a59519879ed3f5e150d787d83aa2921605759c89f" [label="copy{src=/install/ubuntu_python.sh, dest=/work/}" shape="note"];
  "sha256:d504ab388fe383fdfc525bc59fd2a5034999aca866164900104926649831b4a2" [label="/bin/sh -c /work/ubuntu_python.sh" shape="box"];
  "sha256:e5395da1b5670747de3020f659eafe43d74167dce0bce896b30424ebe915bbf6" [label="copy{src=/install/ubuntu_npm_blc.sh, dest=/work/}" shape="note"];
  "sha256:44c24a258fb91191f399e4c49930225d52f3366e4b251daa1afc02d5cb6bb2a3" [label="/bin/sh -c /work/ubuntu_npm_blc.sh" shape="box"];
  "sha256:71111700f23683bdc8f2f28e087e18758be22b3abbe3f0a623077dbc11369fa0" [label="copy{src=/install/ubuntu_adduser.sh, dest=/work/}" shape="note"];
  "sha256:dad51245b730dafd287380580fcee5553687747205dcd6b50613e58011d3ff3f" [label="/bin/sh -c /work/ubuntu_adduser.sh" shape="box"];
  "sha256:deb5d2b795a84dd0b52bfd81f4438ccff38ababfb348a214198a7f0bb5e3417f" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:d2a8d938c6aca833b2d36d421751a2e9aa1d8c41005b30b6ce6f2c31b6e2bb3c" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:85b6a87212a2bbc80af01da030234581b8550d5ee7f0cfda634d6d8eebec4711" [label="sha256:85b6a87212a2bbc80af01da030234581b8550d5ee7f0cfda634d6d8eebec4711" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label=""];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" -> "sha256:e1ab9fd7547f2a55a020240bab3994973e66a793ca1266dc3ba9c26858d2af05" [label=""];
  "sha256:db3d8fa399a1291c3201011c0d1baa936d92d23a4fa1ca8090f782f3c23c3410" -> "sha256:e1ab9fd7547f2a55a020240bab3994973e66a793ca1266dc3ba9c26858d2af05" [label=""];
  "sha256:e1ab9fd7547f2a55a020240bab3994973e66a793ca1266dc3ba9c26858d2af05" -> "sha256:b7280823b120130db2cf5f371739e6913ba3b3045f241fc4d31ffbb6b7517854" [label=""];
  "sha256:b7280823b120130db2cf5f371739e6913ba3b3045f241fc4d31ffbb6b7517854" -> "sha256:6d911ca4fa355e01d623629a59519879ed3f5e150d787d83aa2921605759c89f" [label=""];
  "sha256:db3d8fa399a1291c3201011c0d1baa936d92d23a4fa1ca8090f782f3c23c3410" -> "sha256:6d911ca4fa355e01d623629a59519879ed3f5e150d787d83aa2921605759c89f" [label=""];
  "sha256:6d911ca4fa355e01d623629a59519879ed3f5e150d787d83aa2921605759c89f" -> "sha256:d504ab388fe383fdfc525bc59fd2a5034999aca866164900104926649831b4a2" [label=""];
  "sha256:d504ab388fe383fdfc525bc59fd2a5034999aca866164900104926649831b4a2" -> "sha256:e5395da1b5670747de3020f659eafe43d74167dce0bce896b30424ebe915bbf6" [label=""];
  "sha256:db3d8fa399a1291c3201011c0d1baa936d92d23a4fa1ca8090f782f3c23c3410" -> "sha256:e5395da1b5670747de3020f659eafe43d74167dce0bce896b30424ebe915bbf6" [label=""];
  "sha256:e5395da1b5670747de3020f659eafe43d74167dce0bce896b30424ebe915bbf6" -> "sha256:44c24a258fb91191f399e4c49930225d52f3366e4b251daa1afc02d5cb6bb2a3" [label=""];
  "sha256:44c24a258fb91191f399e4c49930225d52f3366e4b251daa1afc02d5cb6bb2a3" -> "sha256:71111700f23683bdc8f2f28e087e18758be22b3abbe3f0a623077dbc11369fa0" [label=""];
  "sha256:db3d8fa399a1291c3201011c0d1baa936d92d23a4fa1ca8090f782f3c23c3410" -> "sha256:71111700f23683bdc8f2f28e087e18758be22b3abbe3f0a623077dbc11369fa0" [label=""];
  "sha256:71111700f23683bdc8f2f28e087e18758be22b3abbe3f0a623077dbc11369fa0" -> "sha256:dad51245b730dafd287380580fcee5553687747205dcd6b50613e58011d3ff3f" [label=""];
  "sha256:dad51245b730dafd287380580fcee5553687747205dcd6b50613e58011d3ff3f" -> "sha256:deb5d2b795a84dd0b52bfd81f4438ccff38ababfb348a214198a7f0bb5e3417f" [label=""];
  "sha256:db3d8fa399a1291c3201011c0d1baa936d92d23a4fa1ca8090f782f3c23c3410" -> "sha256:deb5d2b795a84dd0b52bfd81f4438ccff38ababfb348a214198a7f0bb5e3417f" [label=""];
  "sha256:deb5d2b795a84dd0b52bfd81f4438ccff38ababfb348a214198a7f0bb5e3417f" -> "sha256:d2a8d938c6aca833b2d36d421751a2e9aa1d8c41005b30b6ce6f2c31b6e2bb3c" [label=""];
  "sha256:d2a8d938c6aca833b2d36d421751a2e9aa1d8c41005b30b6ce6f2c31b6e2bb3c" -> "sha256:85b6a87212a2bbc80af01da030234581b8550d5ee7f0cfda634d6d8eebec4711" [label=""];
}

