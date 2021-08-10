[app/sources/346944892.Dockerfile]
digraph {
  "sha256:ecddb69b0e9ffec65ce2b93da3093d6ceaa06343beecbcefe445bbcb729ef0b5" [label="docker-image://docker.io/baekjoon/onlinejudge-base:14.04" shape="ellipse"];
  "sha256:f989fa429ebf8d7565e71ceb50bdc4e32b7345dcd3404c95ee8cbf55343d7726" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:bb555cd1f0d7770580f746e930e63adf25e9afe2631a84e11a222d0e79172618" [label="/bin/sh -c ln -s  /usr/bin/nodejs  /usr/bin/node" shape="box"];
  "sha256:d8e3d23fc27c0c883b7c2cd8e17b822a8b0854ad07922774f043b13ab3ce3784" [label="/bin/sh -c apt-get install -y npm" shape="box"];
  "sha256:3d236ca29559f7e21e710078e1ae85aac01767a0398392ccd26d7ba49f53e2ae" [label="/bin/sh -c npm install -g uglify-js" shape="box"];
  "sha256:5171d647a4dce54341d7f8de3ec27bbcb351c64d974763212bda278c46f90227" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9582bb4d0a815b596085a1c92f41cf401ff122cb94ed57c4333c65f6cf1dc097" [label="sha256:9582bb4d0a815b596085a1c92f41cf401ff122cb94ed57c4333c65f6cf1dc097" shape="plaintext"];
  "sha256:ecddb69b0e9ffec65ce2b93da3093d6ceaa06343beecbcefe445bbcb729ef0b5" -> "sha256:f989fa429ebf8d7565e71ceb50bdc4e32b7345dcd3404c95ee8cbf55343d7726" [label=""];
  "sha256:f989fa429ebf8d7565e71ceb50bdc4e32b7345dcd3404c95ee8cbf55343d7726" -> "sha256:bb555cd1f0d7770580f746e930e63adf25e9afe2631a84e11a222d0e79172618" [label=""];
  "sha256:bb555cd1f0d7770580f746e930e63adf25e9afe2631a84e11a222d0e79172618" -> "sha256:d8e3d23fc27c0c883b7c2cd8e17b822a8b0854ad07922774f043b13ab3ce3784" [label=""];
  "sha256:d8e3d23fc27c0c883b7c2cd8e17b822a8b0854ad07922774f043b13ab3ce3784" -> "sha256:3d236ca29559f7e21e710078e1ae85aac01767a0398392ccd26d7ba49f53e2ae" [label=""];
  "sha256:3d236ca29559f7e21e710078e1ae85aac01767a0398392ccd26d7ba49f53e2ae" -> "sha256:5171d647a4dce54341d7f8de3ec27bbcb351c64d974763212bda278c46f90227" [label=""];
  "sha256:5171d647a4dce54341d7f8de3ec27bbcb351c64d974763212bda278c46f90227" -> "sha256:9582bb4d0a815b596085a1c92f41cf401ff122cb94ed57c4333c65f6cf1dc097" [label=""];
}

