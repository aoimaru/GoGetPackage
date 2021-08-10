[app/sources/196639799.Dockerfile]
digraph {
  "sha256:d8713fdc69c0651a0db644e2966e73165003820f152a449076d78c030892722c" [label="docker-image://docker.io/bde2020/flink-base:1.7.2-hadoop2.8" shape="ellipse"];
  "sha256:c547973ddf0d67c4bde2916dba8d3bc287fa8427220db9968eebb0d266116c5a" [label="local://context" shape="ellipse"];
  "sha256:672e3323ab64e87d1862899ec4fd14c6d52614bdf276cb10ef1e15f4c75942e6" [label="copy{src=/submit.sh, dest=/}" shape="note"];
  "sha256:4e8e9032b0ebefeced608c07dad1a1e847fa3b0dec1d8e04e9af9770c37ebf70" [label="sha256:4e8e9032b0ebefeced608c07dad1a1e847fa3b0dec1d8e04e9af9770c37ebf70" shape="plaintext"];
  "sha256:d8713fdc69c0651a0db644e2966e73165003820f152a449076d78c030892722c" -> "sha256:672e3323ab64e87d1862899ec4fd14c6d52614bdf276cb10ef1e15f4c75942e6" [label=""];
  "sha256:c547973ddf0d67c4bde2916dba8d3bc287fa8427220db9968eebb0d266116c5a" -> "sha256:672e3323ab64e87d1862899ec4fd14c6d52614bdf276cb10ef1e15f4c75942e6" [label=""];
  "sha256:672e3323ab64e87d1862899ec4fd14c6d52614bdf276cb10ef1e15f4c75942e6" -> "sha256:4e8e9032b0ebefeced608c07dad1a1e847fa3b0dec1d8e04e9af9770c37ebf70" [label=""];
}

