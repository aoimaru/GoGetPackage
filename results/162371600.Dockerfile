[app/sources/162371600.Dockerfile]
digraph {
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label="/bin/sh -c apk update && apk upgrade && apk add netcat-openbsd" shape="box"];
  "sha256:8dab6d5467ee083976e9730fde83a3ed0467df48639980269e5320a9a1952cf7" [label="/bin/sh -c mkdir -p /usr/local/zipkinserver" shape="box"];
  "sha256:d8a192e43fff75c5c11d743c1058b1cfad75149e8096dc75ffff8ea96aa33d9f" [label="local://context" shape="ellipse"];
  "sha256:5716b7c816fc2907297a8ba21cc6960ca6a2dd53695e705ea1c5ed7cbdbca917" [label="copy{src=/@project.build.finalName@.jar, dest=/usr/local/zipkinserver/}" shape="note"];
  "sha256:67fecd3e0917d07bafb889376f44d772599750993f07ae815c5bfd5a774fcd0a" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:77befb83d8d41b124e20d8837158c8877917672bb863700c88fbcf950fc8c963" [label="/bin/sh -c chmod +x run.sh" shape="box"];
  "sha256:c537d737184e133cae61401bb60238280daf4e7b8388332d6b74d41f63d5c7df" [label="sha256:c537d737184e133cae61401bb60238280daf4e7b8388332d6b74d41f63d5c7df" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" [label=""];
  "sha256:05f9bc04e8a8446a31a409066f24baf8177f460a6898e4951807bc4962a70231" -> "sha256:8dab6d5467ee083976e9730fde83a3ed0467df48639980269e5320a9a1952cf7" [label=""];
  "sha256:8dab6d5467ee083976e9730fde83a3ed0467df48639980269e5320a9a1952cf7" -> "sha256:5716b7c816fc2907297a8ba21cc6960ca6a2dd53695e705ea1c5ed7cbdbca917" [label=""];
  "sha256:d8a192e43fff75c5c11d743c1058b1cfad75149e8096dc75ffff8ea96aa33d9f" -> "sha256:5716b7c816fc2907297a8ba21cc6960ca6a2dd53695e705ea1c5ed7cbdbca917" [label=""];
  "sha256:5716b7c816fc2907297a8ba21cc6960ca6a2dd53695e705ea1c5ed7cbdbca917" -> "sha256:67fecd3e0917d07bafb889376f44d772599750993f07ae815c5bfd5a774fcd0a" [label=""];
  "sha256:d8a192e43fff75c5c11d743c1058b1cfad75149e8096dc75ffff8ea96aa33d9f" -> "sha256:67fecd3e0917d07bafb889376f44d772599750993f07ae815c5bfd5a774fcd0a" [label=""];
  "sha256:67fecd3e0917d07bafb889376f44d772599750993f07ae815c5bfd5a774fcd0a" -> "sha256:77befb83d8d41b124e20d8837158c8877917672bb863700c88fbcf950fc8c963" [label=""];
  "sha256:77befb83d8d41b124e20d8837158c8877917672bb863700c88fbcf950fc8c963" -> "sha256:c537d737184e133cae61401bb60238280daf4e7b8388332d6b74d41f63d5c7df" [label=""];
}

