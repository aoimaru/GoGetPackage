[app/sources/227509307.Dockerfile]
digraph {
  "sha256:640a90467c2f86632f51bfadb3b76b8f0dfd998a36f459d28276baa723c86dfe" [label="local://context" shape="ellipse"];
  "sha256:5c1605fa29f564e0dde7741f0ea3b8feb8ff35b839991d8848a4c212d97dea40" [label="docker-image://docker.io/norionomura/sourcekit:302" shape="ellipse"];
  "sha256:42618928132423c9788a06e578d22340e120152e822c30d3174f1f640cf5f6ee" [label="mkdir{path=/root}" shape="note"];
  "sha256:54870fcc59838a8f9a56feb59b3dc4528f0faedcdcab589ef295ca609df04d95" [label="/bin/sh -c apt-get update &&  apt-get -y install build-essential" shape="box"];
  "sha256:a5e72d71d872e7de675c691f5ac752351c95d099a1560d796b7768904b75955e" [label="/bin/sh -c cd /tmp/     && curl -L -O https://github.com/zeromq/zeromq4-1/releases/download/v4.1.4/zeromq-4.1.4.tar.gz     && tar xf /tmp/zeromq-4.1.4.tar.gz     && cd /tmp/zeromq-4.1.4     && ./configure --without-libsodium     && make     && make install" shape="box"];
  "sha256:09069f32587d35b45d1fee0bb81160b53240e624faa3279fdf3c5149739fdb5f" [label="/bin/sh -c apt-get -y install openssl libssl-dev" shape="box"];
  "sha256:bd45feb01f962c533ed22d1afd5b1c3e6c2cefbc7f0ef081224b82e6b91bf1f7" [label="/bin/sh -c apt-get install -y python3-pip" shape="box"];
  "sha256:df2f691fefaf1f27b4bc5ff6c436b445812be4431fecc08e66037fb05be24ef7" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:46036242afef3961a955f3bf805de18d0cb874be64f162149506e80e0bfce483" [label="/bin/sh -c pip3 install jupyter" shape="box"];
  "sha256:7ca548f99644a4fa0e263e2208cc93a843e20280dfcc4110e4c78c96e4a76ff5" [label="copy{src=/, dest=/root/iSwift}" shape="note"];
  "sha256:d47030498f2c4207de9c3c0ba0e2e44fc4bdaad006b678c2434a548a5407111e" [label="mkdir{path=/root/iSwift}" shape="note"];
  "sha256:015bc4a0e8b76f52f8df624e473eaa1b5cf475f8ece8ed0cfc65ac23cfb7d2d5" [label="/bin/sh -c swift package update" shape="box"];
  "sha256:e99b5ee6f72b1895072e88a18244f0e986dd94641caf7bb9fc7f167c1fd56746" [label="/bin/sh -c swift build" shape="box"];
  "sha256:36b3513f9376b213394a565e8fa8b888c23d06ab49e7c41b871c78b1008d44a4" [label="/bin/sh -c jupyter kernelspec install iSwiftKernel" shape="box"];
  "sha256:91bba1bf973f29ff9fc960a786dbbc1368914b6032269f9ff877bb72af0990b0" [label="/bin/sh -c mkdir notebooks" shape="box"];
  "sha256:df2c57545690c65e5ceaa353a748721abe1bb5805072d120e4d7acfc6ff224ea" [label="sha256:df2c57545690c65e5ceaa353a748721abe1bb5805072d120e4d7acfc6ff224ea" shape="plaintext"];
  "sha256:5c1605fa29f564e0dde7741f0ea3b8feb8ff35b839991d8848a4c212d97dea40" -> "sha256:42618928132423c9788a06e578d22340e120152e822c30d3174f1f640cf5f6ee" [label=""];
  "sha256:42618928132423c9788a06e578d22340e120152e822c30d3174f1f640cf5f6ee" -> "sha256:54870fcc59838a8f9a56feb59b3dc4528f0faedcdcab589ef295ca609df04d95" [label=""];
  "sha256:54870fcc59838a8f9a56feb59b3dc4528f0faedcdcab589ef295ca609df04d95" -> "sha256:a5e72d71d872e7de675c691f5ac752351c95d099a1560d796b7768904b75955e" [label=""];
  "sha256:a5e72d71d872e7de675c691f5ac752351c95d099a1560d796b7768904b75955e" -> "sha256:09069f32587d35b45d1fee0bb81160b53240e624faa3279fdf3c5149739fdb5f" [label=""];
  "sha256:09069f32587d35b45d1fee0bb81160b53240e624faa3279fdf3c5149739fdb5f" -> "sha256:bd45feb01f962c533ed22d1afd5b1c3e6c2cefbc7f0ef081224b82e6b91bf1f7" [label=""];
  "sha256:bd45feb01f962c533ed22d1afd5b1c3e6c2cefbc7f0ef081224b82e6b91bf1f7" -> "sha256:df2f691fefaf1f27b4bc5ff6c436b445812be4431fecc08e66037fb05be24ef7" [label=""];
  "sha256:df2f691fefaf1f27b4bc5ff6c436b445812be4431fecc08e66037fb05be24ef7" -> "sha256:46036242afef3961a955f3bf805de18d0cb874be64f162149506e80e0bfce483" [label=""];
  "sha256:46036242afef3961a955f3bf805de18d0cb874be64f162149506e80e0bfce483" -> "sha256:7ca548f99644a4fa0e263e2208cc93a843e20280dfcc4110e4c78c96e4a76ff5" [label=""];
  "sha256:640a90467c2f86632f51bfadb3b76b8f0dfd998a36f459d28276baa723c86dfe" -> "sha256:7ca548f99644a4fa0e263e2208cc93a843e20280dfcc4110e4c78c96e4a76ff5" [label=""];
  "sha256:7ca548f99644a4fa0e263e2208cc93a843e20280dfcc4110e4c78c96e4a76ff5" -> "sha256:d47030498f2c4207de9c3c0ba0e2e44fc4bdaad006b678c2434a548a5407111e" [label=""];
  "sha256:d47030498f2c4207de9c3c0ba0e2e44fc4bdaad006b678c2434a548a5407111e" -> "sha256:015bc4a0e8b76f52f8df624e473eaa1b5cf475f8ece8ed0cfc65ac23cfb7d2d5" [label=""];
  "sha256:015bc4a0e8b76f52f8df624e473eaa1b5cf475f8ece8ed0cfc65ac23cfb7d2d5" -> "sha256:e99b5ee6f72b1895072e88a18244f0e986dd94641caf7bb9fc7f167c1fd56746" [label=""];
  "sha256:e99b5ee6f72b1895072e88a18244f0e986dd94641caf7bb9fc7f167c1fd56746" -> "sha256:36b3513f9376b213394a565e8fa8b888c23d06ab49e7c41b871c78b1008d44a4" [label=""];
  "sha256:36b3513f9376b213394a565e8fa8b888c23d06ab49e7c41b871c78b1008d44a4" -> "sha256:91bba1bf973f29ff9fc960a786dbbc1368914b6032269f9ff877bb72af0990b0" [label=""];
  "sha256:91bba1bf973f29ff9fc960a786dbbc1368914b6032269f9ff877bb72af0990b0" -> "sha256:df2c57545690c65e5ceaa353a748721abe1bb5805072d120e4d7acfc6ff224ea" [label=""];
}

