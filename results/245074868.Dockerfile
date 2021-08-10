[app/sources/245074868.Dockerfile]
digraph {
  "sha256:bd08bd46c44b4ad0c8986c7c2a81ce31e809a0a1a7e7da9ce28e2385a90518fd" [label="docker-image://docker.io/jpetazzo/dind@sha256:f48a1bbf379afdb7a7685abd0130ccd2f214662b086eb7320c296ee83fc6448e" shape="ellipse"];
  "sha256:67969d2a8e82c8a25c47c6329090457ab5c069cb50b8032cb83492d3a86aca17" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:01631fc4e49ae6a5fa5049d3303a558b70a5fa0d7c2a3abb516d0e6c18039cd1" [label="/bin/sh -c apt-get install -y --no-install-recommends     build-essential     dbus     git     software-properties-common" shape="box"];
  "sha256:1ae5a72293b5b38d99f3fa360af5ac97023d17fa346e815788b1b236bb478352" [label="/bin/sh -c wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:0b023cd907cf69f8e23851085e7f72639a1bdfbdd95b10c58cc9357b8c3d701d" [label="/bin/sh -c tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:3e299eae04dcad0d4d0d38f23e151553b6e6b8eec491cc82b4cc855fbe0bdd01" [label="/bin/sh -c rm -f go1.4.2.linux-amd64.tar.gz" shape="box"];
  "sha256:a8f663e046262a786755cf730d05de9dbcf1677c0d15efebc26a0d2001b28d68" [label="/bin/sh -c echo 'PATH=/usr/local/go/bin:${PATH}' >> /root/.bashrc" shape="box"];
  "sha256:777970c58cc4a7c61cb537dde94fca86220bc56fd3375010e8d45845ae307eee" [label="/bin/sh -c mkdir /shared" shape="box"];
  "sha256:a8b2510493cfe178a5cba9a6b7a0bed72335291797f929b300818db747271e7d" [label="/bin/sh -c chmod 666 /shared" shape="box"];
  "sha256:22ceb82665de6234117648cc703103b9e30c23afc4910c68e8ef5246d1ea365c" [label="local://context" shape="ellipse"];
  "sha256:22d863e5c285662b904f10d32d7db36ca04fe599c4875f130acdca852edbf484" [label="copy{src=/, dest=/var/tf-k8s}" shape="note"];
  "sha256:652ce9940a6723485352eacaf64a3dece73e567c28d9039b037c95b977618715" [label="sha256:652ce9940a6723485352eacaf64a3dece73e567c28d9039b037c95b977618715" shape="plaintext"];
  "sha256:bd08bd46c44b4ad0c8986c7c2a81ce31e809a0a1a7e7da9ce28e2385a90518fd" -> "sha256:67969d2a8e82c8a25c47c6329090457ab5c069cb50b8032cb83492d3a86aca17" [label=""];
  "sha256:67969d2a8e82c8a25c47c6329090457ab5c069cb50b8032cb83492d3a86aca17" -> "sha256:01631fc4e49ae6a5fa5049d3303a558b70a5fa0d7c2a3abb516d0e6c18039cd1" [label=""];
  "sha256:01631fc4e49ae6a5fa5049d3303a558b70a5fa0d7c2a3abb516d0e6c18039cd1" -> "sha256:1ae5a72293b5b38d99f3fa360af5ac97023d17fa346e815788b1b236bb478352" [label=""];
  "sha256:1ae5a72293b5b38d99f3fa360af5ac97023d17fa346e815788b1b236bb478352" -> "sha256:0b023cd907cf69f8e23851085e7f72639a1bdfbdd95b10c58cc9357b8c3d701d" [label=""];
  "sha256:0b023cd907cf69f8e23851085e7f72639a1bdfbdd95b10c58cc9357b8c3d701d" -> "sha256:3e299eae04dcad0d4d0d38f23e151553b6e6b8eec491cc82b4cc855fbe0bdd01" [label=""];
  "sha256:3e299eae04dcad0d4d0d38f23e151553b6e6b8eec491cc82b4cc855fbe0bdd01" -> "sha256:a8f663e046262a786755cf730d05de9dbcf1677c0d15efebc26a0d2001b28d68" [label=""];
  "sha256:a8f663e046262a786755cf730d05de9dbcf1677c0d15efebc26a0d2001b28d68" -> "sha256:777970c58cc4a7c61cb537dde94fca86220bc56fd3375010e8d45845ae307eee" [label=""];
  "sha256:777970c58cc4a7c61cb537dde94fca86220bc56fd3375010e8d45845ae307eee" -> "sha256:a8b2510493cfe178a5cba9a6b7a0bed72335291797f929b300818db747271e7d" [label=""];
  "sha256:a8b2510493cfe178a5cba9a6b7a0bed72335291797f929b300818db747271e7d" -> "sha256:22d863e5c285662b904f10d32d7db36ca04fe599c4875f130acdca852edbf484" [label=""];
  "sha256:22ceb82665de6234117648cc703103b9e30c23afc4910c68e8ef5246d1ea365c" -> "sha256:22d863e5c285662b904f10d32d7db36ca04fe599c4875f130acdca852edbf484" [label=""];
  "sha256:22d863e5c285662b904f10d32d7db36ca04fe599c4875f130acdca852edbf484" -> "sha256:652ce9940a6723485352eacaf64a3dece73e567c28d9039b037c95b977618715" [label=""];
}

