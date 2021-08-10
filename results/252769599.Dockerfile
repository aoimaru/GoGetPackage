[app/sources/252769599.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:8a147fb0b7c2f1ae2b5a82dfa088cd454bc53192bb65e5bcce75781bd9d58fee" [label="/bin/sh -c apt-get update && apt-get install -y curl git ruby &&rm -rf /var/lib/apt/lists/* && git clone git://github.com/artemave/StarLogs.git && cd /StarLogs/ && gem install sass && npm install -g node-static pogo" shape="box"];
  "sha256:a26475614baf6c68e92103dc8a12773acdf595399f618074c79a904f99c6685b" [label="local://context" shape="ellipse"];
  "sha256:1b77ecb992300fb1e4d572af4a68b1646d021e2cccf324bc748f31193a54296a" [label="copy{src=/start.sh, dest=/StarLogs/start.sh}" shape="note"];
  "sha256:1cdf6f2ece9f0acdceee2d001124263ebf6163d021305dc502fe4b8277275bf8" [label="/bin/sh -c chmod 774 /StarLogs/start.sh" shape="box"];
  "sha256:71823b136ecbf9c047298563ef7869d4776e74b787fb4b9989b43f0ddb06633b" [label="mkdir{path=/StarLogs}" shape="note"];
  "sha256:e1fe0f60f167a89edf48e6f429276e91340015b19cb911980838d579fc343cea" [label="sha256:e1fe0f60f167a89edf48e6f429276e91340015b19cb911980838d579fc343cea" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:8a147fb0b7c2f1ae2b5a82dfa088cd454bc53192bb65e5bcce75781bd9d58fee" [label=""];
  "sha256:8a147fb0b7c2f1ae2b5a82dfa088cd454bc53192bb65e5bcce75781bd9d58fee" -> "sha256:1b77ecb992300fb1e4d572af4a68b1646d021e2cccf324bc748f31193a54296a" [label=""];
  "sha256:a26475614baf6c68e92103dc8a12773acdf595399f618074c79a904f99c6685b" -> "sha256:1b77ecb992300fb1e4d572af4a68b1646d021e2cccf324bc748f31193a54296a" [label=""];
  "sha256:1b77ecb992300fb1e4d572af4a68b1646d021e2cccf324bc748f31193a54296a" -> "sha256:1cdf6f2ece9f0acdceee2d001124263ebf6163d021305dc502fe4b8277275bf8" [label=""];
  "sha256:1cdf6f2ece9f0acdceee2d001124263ebf6163d021305dc502fe4b8277275bf8" -> "sha256:71823b136ecbf9c047298563ef7869d4776e74b787fb4b9989b43f0ddb06633b" [label=""];
  "sha256:71823b136ecbf9c047298563ef7869d4776e74b787fb4b9989b43f0ddb06633b" -> "sha256:e1fe0f60f167a89edf48e6f429276e91340015b19cb911980838d579fc343cea" [label=""];
}

