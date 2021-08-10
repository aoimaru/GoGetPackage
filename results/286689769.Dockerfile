[app/sources/286689769.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:b73d6a7368542f88edd403ac3183ecfd6102656f2fb3bde83c2fd6a8fff720e2" [label="/bin/sh -c apt-get update &&     apt-get install -y less openjdk-7-jre-headless net-tools vim-tiny sudo openssh-server &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e754f7cd4c233455c3fbe14ef064c58cf73f14b7b56da35d55f249e94a0b3c20" [label="http://www.scala-lang.org/files/archive/scala-2.11.7.tgz" shape="ellipse"];
  "sha256:7449e85ec727f8cebf5a66b953d83b6d6bf49e0cc6d63b0820536d17380fa040" [label="copy{src=/scala-2.11.7.tgz, dest=/}" shape="note"];
  "sha256:98b4c8f400d7bf2b4caa9d795d03a20a11a3acff2d8da6df1ba602a990473226" [label="/bin/sh -c (cd / && gunzip < scala-$SCALA_VERSION.tgz)|(cd /opt && tar -xvf -)" shape="box"];
  "sha256:82d1558c3cf3afce75c63c74da830e4385f44127c54ff14fd571168d35b891c8" [label="/bin/sh -c rm /scala-$SCALA_VERSION.tgz" shape="box"];
  "sha256:35b53b31a06547b08e18aa1661ce2de056abc3f017bf0d76f6605c0e9fca696d" [label="sha256:35b53b31a06547b08e18aa1661ce2de056abc3f017bf0d76f6605c0e9fca696d" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:b73d6a7368542f88edd403ac3183ecfd6102656f2fb3bde83c2fd6a8fff720e2" [label=""];
  "sha256:b73d6a7368542f88edd403ac3183ecfd6102656f2fb3bde83c2fd6a8fff720e2" -> "sha256:7449e85ec727f8cebf5a66b953d83b6d6bf49e0cc6d63b0820536d17380fa040" [label=""];
  "sha256:e754f7cd4c233455c3fbe14ef064c58cf73f14b7b56da35d55f249e94a0b3c20" -> "sha256:7449e85ec727f8cebf5a66b953d83b6d6bf49e0cc6d63b0820536d17380fa040" [label=""];
  "sha256:7449e85ec727f8cebf5a66b953d83b6d6bf49e0cc6d63b0820536d17380fa040" -> "sha256:98b4c8f400d7bf2b4caa9d795d03a20a11a3acff2d8da6df1ba602a990473226" [label=""];
  "sha256:98b4c8f400d7bf2b4caa9d795d03a20a11a3acff2d8da6df1ba602a990473226" -> "sha256:82d1558c3cf3afce75c63c74da830e4385f44127c54ff14fd571168d35b891c8" [label=""];
  "sha256:82d1558c3cf3afce75c63c74da830e4385f44127c54ff14fd571168d35b891c8" -> "sha256:35b53b31a06547b08e18aa1661ce2de056abc3f017bf0d76f6605c0e9fca696d" [label=""];
}

