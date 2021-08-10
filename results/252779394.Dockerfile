[app/sources/252779394.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:e908cae51a8b15e59d32fd73b37e0b42b52b839b11feb0a0ed6af1d92abd9b77" [label="/bin/sh -c apt-get update -y && apt-get install --no-install-recommends -y chktex ghostscript latexmk psutils tex-gyre texlive texlive-fonts-extra texlive-fonts-extra-links texlive-fonts-recommended texlive-font-utils texlive-formats-extra texlive-lang-english texlive-latex-extra texlive-pictures texlive-science texlive-xetex && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dd7e640cfecabe4bb5311df79a86544b05ae1607b1191ca8cf6db0fd6f2d9442" [label="mkdir{path=/data}" shape="note"];
  "sha256:355a64a6524987e14348a3de0439b31e6b2198b498d63c65281e338ccd76f093" [label="sha256:355a64a6524987e14348a3de0439b31e6b2198b498d63c65281e338ccd76f093" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:e908cae51a8b15e59d32fd73b37e0b42b52b839b11feb0a0ed6af1d92abd9b77" [label=""];
  "sha256:e908cae51a8b15e59d32fd73b37e0b42b52b839b11feb0a0ed6af1d92abd9b77" -> "sha256:dd7e640cfecabe4bb5311df79a86544b05ae1607b1191ca8cf6db0fd6f2d9442" [label=""];
  "sha256:dd7e640cfecabe4bb5311df79a86544b05ae1607b1191ca8cf6db0fd6f2d9442" -> "sha256:355a64a6524987e14348a3de0439b31e6b2198b498d63c65281e338ccd76f093" [label=""];
}

