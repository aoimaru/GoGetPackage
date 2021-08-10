[app/sources/468287923.Dockerfile]
digraph {
  "sha256:500b24f395943a0766f5ae6220d332e8c76c96e2e61d4cceacacf9e57a335709" [label="local://context" shape="ellipse"];
  "sha256:afee4bf83b1ebc19ac15a0e92d248ea614cf9b9ffaae7c27e100f6fcc058bbcd" [label="copy{src=/rootfs.tar, dest=/}" shape="note"];
  "sha256:8d0376531feda49c22bd7cfe8769362a7d44081b33a7031800784458592011e0" [label="sha256:8d0376531feda49c22bd7cfe8769362a7d44081b33a7031800784458592011e0" shape="plaintext"];
  "sha256:500b24f395943a0766f5ae6220d332e8c76c96e2e61d4cceacacf9e57a335709" -> "sha256:afee4bf83b1ebc19ac15a0e92d248ea614cf9b9ffaae7c27e100f6fcc058bbcd" [label=""];
  "sha256:afee4bf83b1ebc19ac15a0e92d248ea614cf9b9ffaae7c27e100f6fcc058bbcd" -> "sha256:8d0376531feda49c22bd7cfe8769362a7d44081b33a7031800784458592011e0" [label=""];
}

