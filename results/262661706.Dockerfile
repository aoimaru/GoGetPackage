[app/sources/262661706.Dockerfile]
digraph {
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:33e2ead2af88e29938bd552d3e86c4be05f0be37bd61d1931e7e182654d0201d" [label="/bin/sh -c apt-get update && apt-get install -y make gcc net-tools build-essential libtool ruby" shape="box"];
  "sha256:06398df14841924cf24e153a90f4cc2f1399eaf7403869492d51a40eaba8950f" [label="local://context" shape="ellipse"];
  "sha256:c939c1e00f94f70a3e47b0f57328580a71316248751d3ac77cfee50f38c890b6" [label="copy{src=/soft, dest=/usr/local/src/}" shape="note"];
  "sha256:f310160cd6bc9415a19c857a181373b561cbffc1268e920aa3880eac6e23775d" [label="mkdir{path=/usr/local/src}" shape="note"];
  "sha256:5c4fd98fac85fa3f0d2cee38f4d99d187a4d72bc5ebddc46a7198b6092cd10a8" [label="/bin/sh -c tar -zxf redis-3.0.0.tar.gz && \trm -f redis-3.0.0.tar.gz && \tgem install redis && \tcd redis-3.0.0 && \tmake && \tmake install && \tcp src/redis-trib.rb /usr/local/bin/ && \tcd .. && \tmkdir redis_cluster && \tcd redis_cluster && \tmkdir 7001 && \tmkdir 7002 && \tmkdir 7003 && \tcd /usr/local/src/ && \tmv redis-7001.conf redis_cluster/7001/ && \tmv redis-7002.conf redis_cluster/7002/ && \tmv redis-7003.conf redis_cluster/7003/ && \tchmod u+x three-single-cluster.sh" shape="box"];
  "sha256:9a724f7c821ef71a724e1642de9f05445c1fe51067f778f45935e83ca40b4463" [label="sha256:9a724f7c821ef71a724e1642de9f05445c1fe51067f778f45935e83ca40b4463" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:33e2ead2af88e29938bd552d3e86c4be05f0be37bd61d1931e7e182654d0201d" [label=""];
  "sha256:33e2ead2af88e29938bd552d3e86c4be05f0be37bd61d1931e7e182654d0201d" -> "sha256:c939c1e00f94f70a3e47b0f57328580a71316248751d3ac77cfee50f38c890b6" [label=""];
  "sha256:06398df14841924cf24e153a90f4cc2f1399eaf7403869492d51a40eaba8950f" -> "sha256:c939c1e00f94f70a3e47b0f57328580a71316248751d3ac77cfee50f38c890b6" [label=""];
  "sha256:c939c1e00f94f70a3e47b0f57328580a71316248751d3ac77cfee50f38c890b6" -> "sha256:f310160cd6bc9415a19c857a181373b561cbffc1268e920aa3880eac6e23775d" [label=""];
  "sha256:f310160cd6bc9415a19c857a181373b561cbffc1268e920aa3880eac6e23775d" -> "sha256:5c4fd98fac85fa3f0d2cee38f4d99d187a4d72bc5ebddc46a7198b6092cd10a8" [label=""];
  "sha256:5c4fd98fac85fa3f0d2cee38f4d99d187a4d72bc5ebddc46a7198b6092cd10a8" -> "sha256:9a724f7c821ef71a724e1642de9f05445c1fe51067f778f45935e83ca40b4463" [label=""];
}

