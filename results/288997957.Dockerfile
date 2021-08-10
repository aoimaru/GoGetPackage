[app/sources/288997957.Dockerfile]
digraph {
  "sha256:caacf3393c9c8765c7e321d18622cf1f6d34c09d98bf8c8073b0a256dbaf5024" [label="docker-image://docker.io/wch1/r-devel:latest" shape="ellipse"];
  "sha256:0bd98afc38e30670155e934fa21ac3d66fc7fd5b7d4cf45b345eb3a6718cd8fb" [label="/bin/sh -c /tmp/buildR.sh valgrind" shape="box"];
  "sha256:88402e5ba3f4085ea3dcaaedfbab239107349dafde075ced0a5e9d454cdc628a" [label="/bin/sh -c RDvalgrind -q -e 'install.packages(c(\"devtools\", \"Rcpp\", \"roxygen2\", \"testthat\"))'" shape="box"];
  "sha256:5640ace1c9e48da405f66668797377e4ede3716fe90abbb91ecec5961821ca33" [label="sha256:5640ace1c9e48da405f66668797377e4ede3716fe90abbb91ecec5961821ca33" shape="plaintext"];
  "sha256:caacf3393c9c8765c7e321d18622cf1f6d34c09d98bf8c8073b0a256dbaf5024" -> "sha256:0bd98afc38e30670155e934fa21ac3d66fc7fd5b7d4cf45b345eb3a6718cd8fb" [label=""];
  "sha256:0bd98afc38e30670155e934fa21ac3d66fc7fd5b7d4cf45b345eb3a6718cd8fb" -> "sha256:88402e5ba3f4085ea3dcaaedfbab239107349dafde075ced0a5e9d454cdc628a" [label=""];
  "sha256:88402e5ba3f4085ea3dcaaedfbab239107349dafde075ced0a5e9d454cdc628a" -> "sha256:5640ace1c9e48da405f66668797377e4ede3716fe90abbb91ecec5961821ca33" [label=""];
}

