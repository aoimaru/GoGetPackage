[app/sources/252767614.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:4c6f361fac8e1c90a0ecc531599216f08a63a5ddfdc49d96676f685e7fd9ddd3" [label="/bin/sh -c apt-get update && apt-get -y install git && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9ed580259ac054ccbab82f014d3705dc5773d4ccb8894d346cf8ead2ef7cb0fb" [label="/bin/sh -c git clone https://github.com/letsencrypt/letsencrypt /opt/letsencrypt" shape="box"];
  "sha256:3bb5cbc561167354e2533a00c6fb5152d274ca1d7f3a0c37e83113949b6c8ce7" [label="/bin/sh -c /opt/letsencrypt/letsencrypt-auto certonly --help" shape="box"];
  "sha256:a49db90aaa81a185234a982a73b502227c9cbe5aad553d0d327fe18daf528dd2" [label="sha256:a49db90aaa81a185234a982a73b502227c9cbe5aad553d0d327fe18daf528dd2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:4c6f361fac8e1c90a0ecc531599216f08a63a5ddfdc49d96676f685e7fd9ddd3" [label=""];
  "sha256:4c6f361fac8e1c90a0ecc531599216f08a63a5ddfdc49d96676f685e7fd9ddd3" -> "sha256:9ed580259ac054ccbab82f014d3705dc5773d4ccb8894d346cf8ead2ef7cb0fb" [label=""];
  "sha256:9ed580259ac054ccbab82f014d3705dc5773d4ccb8894d346cf8ead2ef7cb0fb" -> "sha256:3bb5cbc561167354e2533a00c6fb5152d274ca1d7f3a0c37e83113949b6c8ce7" [label=""];
  "sha256:3bb5cbc561167354e2533a00c6fb5152d274ca1d7f3a0c37e83113949b6c8ce7" -> "sha256:a49db90aaa81a185234a982a73b502227c9cbe5aad553d0d327fe18daf528dd2" [label=""];
}

