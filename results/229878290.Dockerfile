[app/sources/229878290.Dockerfile]
digraph {
  "sha256:40a73f27bf6d511f88e7c7875af07b7bf01053671dad592afa7a0a19961c866e" [label="docker-image://docker.io/nginx/unit:latest" shape="ellipse"];
  "sha256:09a41cb21e3ee2f90073a9b1fbe304c8893aaad67bb8176fa295593e04a1745a" [label="local://context" shape="ellipse"];
  "sha256:cb637181a3851264a8699c910ea6379666fff6133e0a980f8a6474ae0ec1532a" [label="copy{src=/start.sh, dest=/usr/local/sbin}" shape="note"];
  "sha256:0c38cb92e6114de8926326236507b2c3ab646c3ce4d034b9ce0b50402c8e95c1" [label="/bin/sh -c chmod +x /usr/local/sbin/start.sh" shape="box"];
  "sha256:4ad0fbb1e9a56ee6fd1924650d9338a6aed9a20b9d96e8e0800e33ad34398160" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e7c740a93cc02526cbebb77b20d36f678b1dda80d6b9ae6ff8a0b7c38cca25a8" [label="/bin/sh -c apt-get install -y procps net-tools" shape="box"];
  "sha256:c013cae234a8a0b1d77c7cf1136bad2914d288f7b1f14bac18e2d3062b5d46e6" [label="/bin/sh -c apt-get install -y apt-transport-https curl wget" shape="box"];
  "sha256:5ff493d3320dfded52ee4b74de810678c9d53c049b4ce68afffcfb1fd5ced781" [label="/bin/sh -c apt-get install -y php7.0-curl" shape="box"];
  "sha256:8f2d383ace6264114b5542d3f3878cd128daa645ec67b3fe5c46ded3557a4fdd" [label="/bin/sh -c apt-get install -y stress" shape="box"];
  "sha256:23e5b71b21e617d0ecaae554244e700b305eed1d96c03746e7c93decb0c204b3" [label="sha256:23e5b71b21e617d0ecaae554244e700b305eed1d96c03746e7c93decb0c204b3" shape="plaintext"];
  "sha256:40a73f27bf6d511f88e7c7875af07b7bf01053671dad592afa7a0a19961c866e" -> "sha256:cb637181a3851264a8699c910ea6379666fff6133e0a980f8a6474ae0ec1532a" [label=""];
  "sha256:09a41cb21e3ee2f90073a9b1fbe304c8893aaad67bb8176fa295593e04a1745a" -> "sha256:cb637181a3851264a8699c910ea6379666fff6133e0a980f8a6474ae0ec1532a" [label=""];
  "sha256:cb637181a3851264a8699c910ea6379666fff6133e0a980f8a6474ae0ec1532a" -> "sha256:0c38cb92e6114de8926326236507b2c3ab646c3ce4d034b9ce0b50402c8e95c1" [label=""];
  "sha256:0c38cb92e6114de8926326236507b2c3ab646c3ce4d034b9ce0b50402c8e95c1" -> "sha256:4ad0fbb1e9a56ee6fd1924650d9338a6aed9a20b9d96e8e0800e33ad34398160" [label=""];
  "sha256:4ad0fbb1e9a56ee6fd1924650d9338a6aed9a20b9d96e8e0800e33ad34398160" -> "sha256:e7c740a93cc02526cbebb77b20d36f678b1dda80d6b9ae6ff8a0b7c38cca25a8" [label=""];
  "sha256:e7c740a93cc02526cbebb77b20d36f678b1dda80d6b9ae6ff8a0b7c38cca25a8" -> "sha256:c013cae234a8a0b1d77c7cf1136bad2914d288f7b1f14bac18e2d3062b5d46e6" [label=""];
  "sha256:c013cae234a8a0b1d77c7cf1136bad2914d288f7b1f14bac18e2d3062b5d46e6" -> "sha256:5ff493d3320dfded52ee4b74de810678c9d53c049b4ce68afffcfb1fd5ced781" [label=""];
  "sha256:5ff493d3320dfded52ee4b74de810678c9d53c049b4ce68afffcfb1fd5ced781" -> "sha256:8f2d383ace6264114b5542d3f3878cd128daa645ec67b3fe5c46ded3557a4fdd" [label=""];
  "sha256:8f2d383ace6264114b5542d3f3878cd128daa645ec67b3fe5c46ded3557a4fdd" -> "sha256:23e5b71b21e617d0ecaae554244e700b305eed1d96c03746e7c93decb0c204b3" [label=""];
}

