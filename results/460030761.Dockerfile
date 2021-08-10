[app/sources/460030761.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:722adbdf2f7e41b2a5c990548fbb6bc3686a9805c144409059593d554d190e13" [label="local://context" shape="ellipse"];
  "sha256:bad52b5d7bd94007c1fc781a0dbf8bc8b48eb1d572e5bd01af99a36c207d19a4" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:542d4a2aee65c9e0e0bec6f14c3b161976ee4800bbf49dfa48b9e915119fd4d5" [label="mkdir{path=/app}" shape="note"];
  "sha256:e10be8670c4b0eb440ba73d8fbb238b698a4b8ecfa593c990805e467e8297473" [label="/bin/sh -c npm install" shape="box"];
  "sha256:4c5671c322801729770f9e71b66203014a1c0abff14fdf3d1cc6dfd8e44490e9" [label="sha256:4c5671c322801729770f9e71b66203014a1c0abff14fdf3d1cc6dfd8e44490e9" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:bad52b5d7bd94007c1fc781a0dbf8bc8b48eb1d572e5bd01af99a36c207d19a4" [label=""];
  "sha256:722adbdf2f7e41b2a5c990548fbb6bc3686a9805c144409059593d554d190e13" -> "sha256:bad52b5d7bd94007c1fc781a0dbf8bc8b48eb1d572e5bd01af99a36c207d19a4" [label=""];
  "sha256:bad52b5d7bd94007c1fc781a0dbf8bc8b48eb1d572e5bd01af99a36c207d19a4" -> "sha256:542d4a2aee65c9e0e0bec6f14c3b161976ee4800bbf49dfa48b9e915119fd4d5" [label=""];
  "sha256:542d4a2aee65c9e0e0bec6f14c3b161976ee4800bbf49dfa48b9e915119fd4d5" -> "sha256:e10be8670c4b0eb440ba73d8fbb238b698a4b8ecfa593c990805e467e8297473" [label=""];
  "sha256:e10be8670c4b0eb440ba73d8fbb238b698a4b8ecfa593c990805e467e8297473" -> "sha256:4c5671c322801729770f9e71b66203014a1c0abff14fdf3d1cc6dfd8e44490e9" [label=""];
}

