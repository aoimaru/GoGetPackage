[app/sources/337502620.Dockerfile]
digraph {
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" [label="local://context" shape="ellipse"];
  "sha256:53d27a5cb692e7d21f47c9cfdfd1010a621d253745af3b5cf6c61f5b6295389b" [label="docker-image://docker.io/library/python:3@sha256:7a93befe45f3afb6b3377c91ef1e8b28e7b84dc70bbb43fc723415d1ad613bdc" shape="ellipse"];
  "sha256:ffa081f32fc9c6919bc90aace59738d35892db19d210e5bcd5bb601eabb15db0" [label="/bin/sh -c apt-get update   && apt-get install -y lzip tar xz-utils   && pip install gensim" shape="box"];
  "sha256:f4896e6bcf92db7a38bf55338cc09a1d3df12a82948d57ee297dafe524864813" [label="copy{src=/kernel-traces.tar.gz, dest=/dataset/kernel-traces.tar.gz}" shape="note"];
  "sha256:a121b8766e92ae47accb23c87be535ef3ca379b89674a23e18db4d01eea78c3a" [label="copy{src=/best-vectors-vmin-0.txt.tar.lz, dest=/dataset/best-vectors-vmin-0.txt.tar.lz}" shape="note"];
  "sha256:16e1580afb6c5800beca42c1d314cb7f2f2f694b8154c24f554e8ea6ce5343f0" [label="copy{src=/best-vectors-vmin-1000.txt.tar.lz, dest=/dataset/best-vectors-vmin-1000.txt.tar.lz}" shape="note"];
  "sha256:e93f71b9009a91a411e41c174d70b886435f9650515a8e6adb56704183b635a8" [label="copy{src=/peek-traces.sh, dest=/dataset/peek-traces.sh}" shape="note"];
  "sha256:d3034dc7892e947713f8822e427f2193b6c4d36b6efcc282320357d1e29e1943" [label="copy{src=/analogies.py, dest=/dataset/analogies.py}" shape="note"];
  "sha256:59c19abad2b1ea4da2c64a9f3c57fda96fe5df06d7420b583f874d3b8556d20a" [label="copy{src=/README.md, dest=/dataset/README.md}" shape="note"];
  "sha256:21ac21badae3edd0b3a74e013fb430c8891fa0523e28b537df14562b5c8cb268" [label="copy{src=/entrypoint.sh, dest=/app/entrypoint.sh}" shape="note"];
  "sha256:3c2365e27871fe3e2741d57c806151e664de1e76117f97b2d898a75c114f614d" [label="sha256:3c2365e27871fe3e2741d57c806151e664de1e76117f97b2d898a75c114f614d" shape="plaintext"];
  "sha256:53d27a5cb692e7d21f47c9cfdfd1010a621d253745af3b5cf6c61f5b6295389b" -> "sha256:ffa081f32fc9c6919bc90aace59738d35892db19d210e5bcd5bb601eabb15db0" [label=""];
  "sha256:ffa081f32fc9c6919bc90aace59738d35892db19d210e5bcd5bb601eabb15db0" -> "sha256:f4896e6bcf92db7a38bf55338cc09a1d3df12a82948d57ee297dafe524864813" [label=""];
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" -> "sha256:f4896e6bcf92db7a38bf55338cc09a1d3df12a82948d57ee297dafe524864813" [label=""];
  "sha256:f4896e6bcf92db7a38bf55338cc09a1d3df12a82948d57ee297dafe524864813" -> "sha256:a121b8766e92ae47accb23c87be535ef3ca379b89674a23e18db4d01eea78c3a" [label=""];
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" -> "sha256:a121b8766e92ae47accb23c87be535ef3ca379b89674a23e18db4d01eea78c3a" [label=""];
  "sha256:a121b8766e92ae47accb23c87be535ef3ca379b89674a23e18db4d01eea78c3a" -> "sha256:16e1580afb6c5800beca42c1d314cb7f2f2f694b8154c24f554e8ea6ce5343f0" [label=""];
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" -> "sha256:16e1580afb6c5800beca42c1d314cb7f2f2f694b8154c24f554e8ea6ce5343f0" [label=""];
  "sha256:16e1580afb6c5800beca42c1d314cb7f2f2f694b8154c24f554e8ea6ce5343f0" -> "sha256:e93f71b9009a91a411e41c174d70b886435f9650515a8e6adb56704183b635a8" [label=""];
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" -> "sha256:e93f71b9009a91a411e41c174d70b886435f9650515a8e6adb56704183b635a8" [label=""];
  "sha256:e93f71b9009a91a411e41c174d70b886435f9650515a8e6adb56704183b635a8" -> "sha256:d3034dc7892e947713f8822e427f2193b6c4d36b6efcc282320357d1e29e1943" [label=""];
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" -> "sha256:d3034dc7892e947713f8822e427f2193b6c4d36b6efcc282320357d1e29e1943" [label=""];
  "sha256:d3034dc7892e947713f8822e427f2193b6c4d36b6efcc282320357d1e29e1943" -> "sha256:59c19abad2b1ea4da2c64a9f3c57fda96fe5df06d7420b583f874d3b8556d20a" [label=""];
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" -> "sha256:59c19abad2b1ea4da2c64a9f3c57fda96fe5df06d7420b583f874d3b8556d20a" [label=""];
  "sha256:59c19abad2b1ea4da2c64a9f3c57fda96fe5df06d7420b583f874d3b8556d20a" -> "sha256:21ac21badae3edd0b3a74e013fb430c8891fa0523e28b537df14562b5c8cb268" [label=""];
  "sha256:2e1a3dfb06c8e715b0a11afddf288f82ed5a1bb705b995390f9c4f3e4f5e5c10" -> "sha256:21ac21badae3edd0b3a74e013fb430c8891fa0523e28b537df14562b5c8cb268" [label=""];
  "sha256:21ac21badae3edd0b3a74e013fb430c8891fa0523e28b537df14562b5c8cb268" -> "sha256:3c2365e27871fe3e2741d57c806151e664de1e76117f97b2d898a75c114f614d" [label=""];
}

