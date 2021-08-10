[app/sources/202561176.Dockerfile]
digraph {
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" [label="docker-image://docker.io/resin/rpi-raspbian:jessie" shape="ellipse"];
  "sha256:d594490f675263dd2c9c777797dabce6fc744e594a33af68b7d762e02ad3f2f4" [label="/bin/sh -c apt-get update && apt-get install -y -q     android-tools*     ca-certificates     curl     usbutils     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9a14c5b682ff7007b8984390c8500a00f3e91f6a1c96e381205e41de5e1b41c6" [label="/bin/sh -c mkdir -m 0750 /root/.android" shape="box"];
  "sha256:f10b7cc84ce1dbcd7f4011f842693c7b7949be4e52a474f1e99b861cb2e00284" [label="local://context" shape="ellipse"];
  "sha256:2b6a56b5b07dff4c3913b4c83673bd7e118a9fa900d03a1a03384b5e5c35d87a" [label="copy{src=/insecure_shared_adbkey, dest=/root/.android/adbkey}" shape="note"];
  "sha256:39b2dfaa22c2afa700277c52af3ed348fe784633acf70a572eb05b1e37ecf5cd" [label="copy{src=/insecure_shared_adbkey.pub, dest=/root/.android/adbkey.pub}" shape="note"];
  "sha256:c85f7ac4cc3f09b6420d1ab41139b4cf2eaf6249c795a5c68822c9884986d01e" [label="sha256:c85f7ac4cc3f09b6420d1ab41139b4cf2eaf6249c795a5c68822c9884986d01e" shape="plaintext"];
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" -> "sha256:d594490f675263dd2c9c777797dabce6fc744e594a33af68b7d762e02ad3f2f4" [label=""];
  "sha256:d594490f675263dd2c9c777797dabce6fc744e594a33af68b7d762e02ad3f2f4" -> "sha256:9a14c5b682ff7007b8984390c8500a00f3e91f6a1c96e381205e41de5e1b41c6" [label=""];
  "sha256:9a14c5b682ff7007b8984390c8500a00f3e91f6a1c96e381205e41de5e1b41c6" -> "sha256:2b6a56b5b07dff4c3913b4c83673bd7e118a9fa900d03a1a03384b5e5c35d87a" [label=""];
  "sha256:f10b7cc84ce1dbcd7f4011f842693c7b7949be4e52a474f1e99b861cb2e00284" -> "sha256:2b6a56b5b07dff4c3913b4c83673bd7e118a9fa900d03a1a03384b5e5c35d87a" [label=""];
  "sha256:2b6a56b5b07dff4c3913b4c83673bd7e118a9fa900d03a1a03384b5e5c35d87a" -> "sha256:39b2dfaa22c2afa700277c52af3ed348fe784633acf70a572eb05b1e37ecf5cd" [label=""];
  "sha256:f10b7cc84ce1dbcd7f4011f842693c7b7949be4e52a474f1e99b861cb2e00284" -> "sha256:39b2dfaa22c2afa700277c52af3ed348fe784633acf70a572eb05b1e37ecf5cd" [label=""];
  "sha256:39b2dfaa22c2afa700277c52af3ed348fe784633acf70a572eb05b1e37ecf5cd" -> "sha256:c85f7ac4cc3f09b6420d1ab41139b4cf2eaf6249c795a5c68822c9884986d01e" [label=""];
}

