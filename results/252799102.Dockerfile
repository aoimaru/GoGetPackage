[app/sources/252799102.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:a7c83a73eb4e8f6f04ba47bff6df5b12bdd1602ab76a98ec90892a832b2349d9" [label="local://context" shape="ellipse"];
  "sha256:86b28c2a54f48500d25e4cf9110a45d031100563ac5e6f89f9486d10c1c6acce" [label="copy{src=/requirements.txt, dest=/root/}" shape="note"];
  "sha256:cffe921145c6e9d77921e2a2c7b2ce0c13629fb49abc60e8e1260f33822e980e" [label="/bin/sh -c pip install -r /root/requirements.txt" shape="box"];
  "sha256:b4b0b599c068794acaddc7e60f9ffadd476ff178e7edfc350f976842c129b47a" [label="copy{src=/updater.py, dest=/usr/bin/route53-updater}" shape="note"];
  "sha256:524f63c5ed8d3dae2beecbbb70590d8f6ebc94adf98e42befcdfc377ca0d55df" [label="sha256:524f63c5ed8d3dae2beecbbb70590d8f6ebc94adf98e42befcdfc377ca0d55df" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:86b28c2a54f48500d25e4cf9110a45d031100563ac5e6f89f9486d10c1c6acce" [label=""];
  "sha256:a7c83a73eb4e8f6f04ba47bff6df5b12bdd1602ab76a98ec90892a832b2349d9" -> "sha256:86b28c2a54f48500d25e4cf9110a45d031100563ac5e6f89f9486d10c1c6acce" [label=""];
  "sha256:86b28c2a54f48500d25e4cf9110a45d031100563ac5e6f89f9486d10c1c6acce" -> "sha256:cffe921145c6e9d77921e2a2c7b2ce0c13629fb49abc60e8e1260f33822e980e" [label=""];
  "sha256:cffe921145c6e9d77921e2a2c7b2ce0c13629fb49abc60e8e1260f33822e980e" -> "sha256:b4b0b599c068794acaddc7e60f9ffadd476ff178e7edfc350f976842c129b47a" [label=""];
  "sha256:a7c83a73eb4e8f6f04ba47bff6df5b12bdd1602ab76a98ec90892a832b2349d9" -> "sha256:b4b0b599c068794acaddc7e60f9ffadd476ff178e7edfc350f976842c129b47a" [label=""];
  "sha256:b4b0b599c068794acaddc7e60f9ffadd476ff178e7edfc350f976842c129b47a" -> "sha256:524f63c5ed8d3dae2beecbbb70590d8f6ebc94adf98e42befcdfc377ca0d55df" [label=""];
}

