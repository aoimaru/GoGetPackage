[app/sources/200631130.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:8d92563521f6b9d0ae5e22e58049a0af25d96ceabdecc5122652237ef9978495" [label="/bin/sh -c apt-get update && apt-get install -y\tlibgeos-dev \tpython3-pip \tcron" shape="box"];
  "sha256:89e311f0c7f419f1208ed458d970a0f398fbb1fc2a9717f718d46eb64e3edc33" [label="/bin/sh -c apt-get build-dep -y \tpython-matplotlib \tpython3-lxml" shape="box"];
  "sha256:1cdf20137e62a5e1f51806f1aaafbc7d05be091c4bd647cbbb54834140d83e07" [label="mkdir{path=/src}" shape="note"];
  "sha256:6c4cf401578ce1a589a68ddfeb458e4a26b50f906d7f60cb502ba4b6b776808e" [label="local://context" shape="ellipse"];
  "sha256:0d9124755375209ea87a60347ba87650fcdb2b6c5f52492feab2db24f4a18b5e" [label="copy{src=/requirements.txt, dest=/src}" shape="note"];
  "sha256:9054c9891cb3bd3b3f8a71a7a50cca7d1febf11b20eaf2434d1de6d30062ee06" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:ec926e8804100f7b318f0068c95883af8986832724629f243647bf84723379c3" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:f9aca8663865355bf727627c8349a34f49fdf76430385edcf96e04759e8294ca" [label="/bin/sh -c chmod 777 main.sh" shape="box"];
  "sha256:da2b11e9ecbef48dffc0700a5e27af6ef7b2c4b52726517ba4d780d04e8747df" [label="/bin/sh -c chmod 777 run_cron.sh" shape="box"];
  "sha256:f8e6d31c956690c1839caecf02187bfc42588c80c4c05ddcb325c085f6645ffe" [label="sha256:f8e6d31c956690c1839caecf02187bfc42588c80c4c05ddcb325c085f6645ffe" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:8d92563521f6b9d0ae5e22e58049a0af25d96ceabdecc5122652237ef9978495" [label=""];
  "sha256:8d92563521f6b9d0ae5e22e58049a0af25d96ceabdecc5122652237ef9978495" -> "sha256:89e311f0c7f419f1208ed458d970a0f398fbb1fc2a9717f718d46eb64e3edc33" [label=""];
  "sha256:89e311f0c7f419f1208ed458d970a0f398fbb1fc2a9717f718d46eb64e3edc33" -> "sha256:1cdf20137e62a5e1f51806f1aaafbc7d05be091c4bd647cbbb54834140d83e07" [label=""];
  "sha256:1cdf20137e62a5e1f51806f1aaafbc7d05be091c4bd647cbbb54834140d83e07" -> "sha256:0d9124755375209ea87a60347ba87650fcdb2b6c5f52492feab2db24f4a18b5e" [label=""];
  "sha256:6c4cf401578ce1a589a68ddfeb458e4a26b50f906d7f60cb502ba4b6b776808e" -> "sha256:0d9124755375209ea87a60347ba87650fcdb2b6c5f52492feab2db24f4a18b5e" [label=""];
  "sha256:0d9124755375209ea87a60347ba87650fcdb2b6c5f52492feab2db24f4a18b5e" -> "sha256:9054c9891cb3bd3b3f8a71a7a50cca7d1febf11b20eaf2434d1de6d30062ee06" [label=""];
  "sha256:9054c9891cb3bd3b3f8a71a7a50cca7d1febf11b20eaf2434d1de6d30062ee06" -> "sha256:ec926e8804100f7b318f0068c95883af8986832724629f243647bf84723379c3" [label=""];
  "sha256:6c4cf401578ce1a589a68ddfeb458e4a26b50f906d7f60cb502ba4b6b776808e" -> "sha256:ec926e8804100f7b318f0068c95883af8986832724629f243647bf84723379c3" [label=""];
  "sha256:ec926e8804100f7b318f0068c95883af8986832724629f243647bf84723379c3" -> "sha256:f9aca8663865355bf727627c8349a34f49fdf76430385edcf96e04759e8294ca" [label=""];
  "sha256:f9aca8663865355bf727627c8349a34f49fdf76430385edcf96e04759e8294ca" -> "sha256:da2b11e9ecbef48dffc0700a5e27af6ef7b2c4b52726517ba4d780d04e8747df" [label=""];
  "sha256:da2b11e9ecbef48dffc0700a5e27af6ef7b2c4b52726517ba4d780d04e8747df" -> "sha256:f8e6d31c956690c1839caecf02187bfc42588c80c4c05ddcb325c085f6645ffe" [label=""];
}

