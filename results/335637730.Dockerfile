[app/sources/335637730.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label="mkdir{path=/app}" shape="note"];
  "sha256:d1c20ea41c15608250cff7ffbeddfe12c0cf1cca81374cd34994f0819888807b" [label="local://context" shape="ellipse"];
  "sha256:43dfddb935812a3d8d9b547b7310d1cbbd3e0c6668e40bdef3e301436248ad6b" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:6910f6e82788fce06932d0cf01211c6183fd2158e6e4c11bda5dd3c959b85ccd" [label="/bin/sh -c npm install" shape="box"];
  "sha256:84cc3dbaf577621e68f127a2a306933f588484bb78108bfa426bfcc670de5503" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:c1b2c0cfa8c3427136b1e4241f77e8533b78a3f969ba1737e33c35b4832e35ff" [label="sha256:c1b2c0cfa8c3427136b1e4241f77e8533b78a3f969ba1737e33c35b4832e35ff" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label=""];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" -> "sha256:43dfddb935812a3d8d9b547b7310d1cbbd3e0c6668e40bdef3e301436248ad6b" [label=""];
  "sha256:d1c20ea41c15608250cff7ffbeddfe12c0cf1cca81374cd34994f0819888807b" -> "sha256:43dfddb935812a3d8d9b547b7310d1cbbd3e0c6668e40bdef3e301436248ad6b" [label=""];
  "sha256:43dfddb935812a3d8d9b547b7310d1cbbd3e0c6668e40bdef3e301436248ad6b" -> "sha256:6910f6e82788fce06932d0cf01211c6183fd2158e6e4c11bda5dd3c959b85ccd" [label=""];
  "sha256:6910f6e82788fce06932d0cf01211c6183fd2158e6e4c11bda5dd3c959b85ccd" -> "sha256:84cc3dbaf577621e68f127a2a306933f588484bb78108bfa426bfcc670de5503" [label=""];
  "sha256:d1c20ea41c15608250cff7ffbeddfe12c0cf1cca81374cd34994f0819888807b" -> "sha256:84cc3dbaf577621e68f127a2a306933f588484bb78108bfa426bfcc670de5503" [label=""];
  "sha256:84cc3dbaf577621e68f127a2a306933f588484bb78108bfa426bfcc670de5503" -> "sha256:c1b2c0cfa8c3427136b1e4241f77e8533b78a3f969ba1737e33c35b4832e35ff" [label=""];
}

