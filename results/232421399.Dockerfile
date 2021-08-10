[app/sources/232421399.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:a4f7e67e104a2eb34deea53302f24e5d95e80d8b26781df4d36ea129f71f4f57" [label="local://context" shape="ellipse"];
  "sha256:1df7a41baf474da4dfa58d8200630a72f9af11b347cd55d952c2257824124052" [label="copy{src=/, dest=/tmp/asm3}" shape="note"];
  "sha256:3d4cb1d9a4243e08f8a59ab51b8308f0f2011fa60035ba815bb8063c0b615321" [label="mkdir{path=/tmp/asm3/install/deb}" shape="note"];
  "sha256:05741418eb9788ac08497afe0cecd8e641997cabe75a03107319042bf869372b" [label="/bin/sh -c ./makedeb.sh && rm -rf sheltermanager3" shape="box"];
  "sha256:df1faa57ff165652f1bf31f88f4c5d02025b1598d430b31e345c52007e6b05e2" [label="/bin/sh -c apt-get update     && apt-get install -y make python python-pil python-webpy python-mysqldb python-psycopg2 memcached python-memcache     && apt-get install -y imagemagick     && apt-get install -y wkhtmltopdf     && apt-get install -y python-reportlab     && apt-get install -y python-requests     && apt-get install -y python-boto3" shape="box"];
  "sha256:d1bdecaaf62a7f137e6a42e6115d4431ea253fa8ae0e38920b10579d7ba64a86" [label="/bin/sh -c dpkg -i sheltermanager3_`cat ../../VERSION`_all.deb" shape="box"];
  "sha256:d234e185c62af4e5196f216b8ff67462e015e662bd872930e43862dcb99a64a6" [label="sha256:d234e185c62af4e5196f216b8ff67462e015e662bd872930e43862dcb99a64a6" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:1df7a41baf474da4dfa58d8200630a72f9af11b347cd55d952c2257824124052" [label=""];
  "sha256:a4f7e67e104a2eb34deea53302f24e5d95e80d8b26781df4d36ea129f71f4f57" -> "sha256:1df7a41baf474da4dfa58d8200630a72f9af11b347cd55d952c2257824124052" [label=""];
  "sha256:1df7a41baf474da4dfa58d8200630a72f9af11b347cd55d952c2257824124052" -> "sha256:3d4cb1d9a4243e08f8a59ab51b8308f0f2011fa60035ba815bb8063c0b615321" [label=""];
  "sha256:3d4cb1d9a4243e08f8a59ab51b8308f0f2011fa60035ba815bb8063c0b615321" -> "sha256:05741418eb9788ac08497afe0cecd8e641997cabe75a03107319042bf869372b" [label=""];
  "sha256:05741418eb9788ac08497afe0cecd8e641997cabe75a03107319042bf869372b" -> "sha256:df1faa57ff165652f1bf31f88f4c5d02025b1598d430b31e345c52007e6b05e2" [label=""];
  "sha256:df1faa57ff165652f1bf31f88f4c5d02025b1598d430b31e345c52007e6b05e2" -> "sha256:d1bdecaaf62a7f137e6a42e6115d4431ea253fa8ae0e38920b10579d7ba64a86" [label=""];
  "sha256:d1bdecaaf62a7f137e6a42e6115d4431ea253fa8ae0e38920b10579d7ba64a86" -> "sha256:d234e185c62af4e5196f216b8ff67462e015e662bd872930e43862dcb99a64a6" [label=""];
}

