[app/sources/186869677.Dockerfile]
digraph {
  "sha256:95fbc8f73673872b9673b977e59c396a9ca9184598bd9ae265093cd9d49ae77f" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:93604a7ea484c22ba1930811a35c7d9dffb8748fe0d4f7090bc1dcac7f1e9cce" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:14a1a2b7fad23339b62116230548d6f12d5f0eddeb61b002edd73ddac0628c55" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5794f9931a3ad8d5070f15a05cc9e5d0031887716c58972ceebe12f2df4eb505" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:77ad2886bb756e690d926236ca1970974695d7723f7e4f65d6e39c8a56636076" [label="/bin/sh -c pip3 install -r ./requirements.txt" shape="box"];
  "sha256:4457445dec1783c8fc879a9634b841413a6144670bea0ccb3a636d2891cb69d2" [label="/bin/sh -c apt-get update &&     apt-get install -y nodejs" shape="box"];
  "sha256:1ccb8788bb7e7a58bb50dea47cc43c2b966abe2b19f7fa956fe1a95a3f1cb59f" [label="mkdir{path=/usr/src/app/src}" shape="note"];
  "sha256:ad564ea958b66070c7593bc97de0c1c54f37d7ae3d5018ba2627b8486e6ffdb5" [label="sha256:ad564ea958b66070c7593bc97de0c1c54f37d7ae3d5018ba2627b8486e6ffdb5" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:93604a7ea484c22ba1930811a35c7d9dffb8748fe0d4f7090bc1dcac7f1e9cce" [label=""];
  "sha256:93604a7ea484c22ba1930811a35c7d9dffb8748fe0d4f7090bc1dcac7f1e9cce" -> "sha256:14a1a2b7fad23339b62116230548d6f12d5f0eddeb61b002edd73ddac0628c55" [label=""];
  "sha256:14a1a2b7fad23339b62116230548d6f12d5f0eddeb61b002edd73ddac0628c55" -> "sha256:5794f9931a3ad8d5070f15a05cc9e5d0031887716c58972ceebe12f2df4eb505" [label=""];
  "sha256:95fbc8f73673872b9673b977e59c396a9ca9184598bd9ae265093cd9d49ae77f" -> "sha256:5794f9931a3ad8d5070f15a05cc9e5d0031887716c58972ceebe12f2df4eb505" [label=""];
  "sha256:5794f9931a3ad8d5070f15a05cc9e5d0031887716c58972ceebe12f2df4eb505" -> "sha256:77ad2886bb756e690d926236ca1970974695d7723f7e4f65d6e39c8a56636076" [label=""];
  "sha256:77ad2886bb756e690d926236ca1970974695d7723f7e4f65d6e39c8a56636076" -> "sha256:4457445dec1783c8fc879a9634b841413a6144670bea0ccb3a636d2891cb69d2" [label=""];
  "sha256:4457445dec1783c8fc879a9634b841413a6144670bea0ccb3a636d2891cb69d2" -> "sha256:1ccb8788bb7e7a58bb50dea47cc43c2b966abe2b19f7fa956fe1a95a3f1cb59f" [label=""];
  "sha256:1ccb8788bb7e7a58bb50dea47cc43c2b966abe2b19f7fa956fe1a95a3f1cb59f" -> "sha256:ad564ea958b66070c7593bc97de0c1c54f37d7ae3d5018ba2627b8486e6ffdb5" [label=""];
}

