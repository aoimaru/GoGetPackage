[app/sources/270058447.Dockerfile]
digraph {
  "sha256:ea55d6a7039ce97265217fff6035b94ac2b87f993333ece5e36d7b648e29e94e" [label="docker-image://docker.io/library/openjdk:7-jre" shape="ellipse"];
  "sha256:270cd5136f92b14418ab79befd3b843ffd1779dbcc92e754f6b26b386fdfce08" [label="/bin/sh -c curl https://spark-nomad.s3.amazonaws.com/spark-2.1.1-bin-nomad.tgz | tar -xzC /tmp" shape="box"];
  "sha256:5c0d8415ddefbfb025bfab647d6d58bfe77aa0ad0589207387ba0a84b7824304" [label="/bin/sh -c mv /tmp/spark* /opt/spark" shape="box"];
  "sha256:19814888a506452da8825052b473aa31a26b0c6ecab2603a2a0b8b17fbbbcd11" [label="sha256:19814888a506452da8825052b473aa31a26b0c6ecab2603a2a0b8b17fbbbcd11" shape="plaintext"];
  "sha256:ea55d6a7039ce97265217fff6035b94ac2b87f993333ece5e36d7b648e29e94e" -> "sha256:270cd5136f92b14418ab79befd3b843ffd1779dbcc92e754f6b26b386fdfce08" [label=""];
  "sha256:270cd5136f92b14418ab79befd3b843ffd1779dbcc92e754f6b26b386fdfce08" -> "sha256:5c0d8415ddefbfb025bfab647d6d58bfe77aa0ad0589207387ba0a84b7824304" [label=""];
  "sha256:5c0d8415ddefbfb025bfab647d6d58bfe77aa0ad0589207387ba0a84b7824304" -> "sha256:19814888a506452da8825052b473aa31a26b0c6ecab2603a2a0b8b17fbbbcd11" [label=""];
}

