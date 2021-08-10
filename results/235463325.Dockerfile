[app/sources/235463325.Dockerfile]
digraph {
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:844167dbfa0f241902761f6ab98bba3a6ce72dcbe6ee979d3de926c2d6086a56" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:ed50679925e6a605e35ab9cc21e0d5ce2cc0f911da85bbe64d15d69ddc8b962e" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:48f125ce603a6ee9d02e716a7337951706f08f0da5cc9139eba6d41a187e1c59" [label="copy{src=/null, dest=/}" shape="note"];
  "sha256:2582067327710284e7637e1f27faeed5c4f1711ace2b02acbe9874cd304617fd" [label="copy{src=/nullfile, dest=/tmp}" shape="note"];
  "sha256:39508bfce1264d8c9a4a517726b0e13fd418ec74fdc2d4a3fc51b953be2d3f97" [label="copy{src=/vimrc, dest=/tmp}" shape="note"];
  "sha256:c8d182fe562c843ac0fc3d7621676630295f86dff4f2ac14b374f18451d1e116" [label="copy{src=/bashrc, dest=/tmp}" shape="note"];
  "sha256:c82eb6f27b6e1d4ccc19022def76d6d76c46f1bd94ef6ed30fc8d7344c424ee1" [label="copy{src=/test file, dest=/tmp}" shape="note"];
  "sha256:84aeaafd657c51643cf9d309ce9566dc701e7f980f3192224ba6667f8b2145b3" [label="copy{src=/test file, dest=/tmp/test file}" shape="note"];
  "sha256:8660d03432272c216b2bc70845607dccd4ae4058ecdd5bff0f50e01a3f836bb3" [label="sha256:8660d03432272c216b2bc70845607dccd4ae4058ecdd5bff0f50e01a3f836bb3" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:844167dbfa0f241902761f6ab98bba3a6ce72dcbe6ee979d3de926c2d6086a56" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:844167dbfa0f241902761f6ab98bba3a6ce72dcbe6ee979d3de926c2d6086a56" [label=""];
  "sha256:844167dbfa0f241902761f6ab98bba3a6ce72dcbe6ee979d3de926c2d6086a56" -> "sha256:ed50679925e6a605e35ab9cc21e0d5ce2cc0f911da85bbe64d15d69ddc8b962e" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:ed50679925e6a605e35ab9cc21e0d5ce2cc0f911da85bbe64d15d69ddc8b962e" [label=""];
  "sha256:ed50679925e6a605e35ab9cc21e0d5ce2cc0f911da85bbe64d15d69ddc8b962e" -> "sha256:48f125ce603a6ee9d02e716a7337951706f08f0da5cc9139eba6d41a187e1c59" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:48f125ce603a6ee9d02e716a7337951706f08f0da5cc9139eba6d41a187e1c59" [label=""];
  "sha256:48f125ce603a6ee9d02e716a7337951706f08f0da5cc9139eba6d41a187e1c59" -> "sha256:2582067327710284e7637e1f27faeed5c4f1711ace2b02acbe9874cd304617fd" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:2582067327710284e7637e1f27faeed5c4f1711ace2b02acbe9874cd304617fd" [label=""];
  "sha256:2582067327710284e7637e1f27faeed5c4f1711ace2b02acbe9874cd304617fd" -> "sha256:39508bfce1264d8c9a4a517726b0e13fd418ec74fdc2d4a3fc51b953be2d3f97" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:39508bfce1264d8c9a4a517726b0e13fd418ec74fdc2d4a3fc51b953be2d3f97" [label=""];
  "sha256:39508bfce1264d8c9a4a517726b0e13fd418ec74fdc2d4a3fc51b953be2d3f97" -> "sha256:c8d182fe562c843ac0fc3d7621676630295f86dff4f2ac14b374f18451d1e116" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:c8d182fe562c843ac0fc3d7621676630295f86dff4f2ac14b374f18451d1e116" [label=""];
  "sha256:c8d182fe562c843ac0fc3d7621676630295f86dff4f2ac14b374f18451d1e116" -> "sha256:c82eb6f27b6e1d4ccc19022def76d6d76c46f1bd94ef6ed30fc8d7344c424ee1" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:c82eb6f27b6e1d4ccc19022def76d6d76c46f1bd94ef6ed30fc8d7344c424ee1" [label=""];
  "sha256:c82eb6f27b6e1d4ccc19022def76d6d76c46f1bd94ef6ed30fc8d7344c424ee1" -> "sha256:84aeaafd657c51643cf9d309ce9566dc701e7f980f3192224ba6667f8b2145b3" [label=""];
  "sha256:1ebbfe675f0a14e8aa4d26f38e2d6aa11dfed0625983ffb259519f153320bbe7" -> "sha256:84aeaafd657c51643cf9d309ce9566dc701e7f980f3192224ba6667f8b2145b3" [label=""];
  "sha256:84aeaafd657c51643cf9d309ce9566dc701e7f980f3192224ba6667f8b2145b3" -> "sha256:8660d03432272c216b2bc70845607dccd4ae4058ecdd5bff0f50e01a3f836bb3" [label=""];
}

