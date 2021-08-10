[app/sources/241862899.Dockerfile]
digraph {
  "sha256:6f4df1301e8364ed4509ca0677888c24c3bdb09ece8d675481aaa3a2f3d0145f" [label="docker-image://docker.io/alexellis2/go-armhf:1.9" shape="ellipse"];
  "sha256:ba26620a5fdedf8a0f4b6a5596a4a9d122bdd05976146611cb5de22fa47ba9d5" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:16c77e2b6c458839f6a49b1f7c62331b3ac902c38314bca462c94c2df97c684b" [label="/bin/sh -c go get -d -u github.com/alexellis/blinkt_go/sysfs/gpio" shape="box"];
  "sha256:7cc3f95dc0623c806c64681d84840081d707406eaa36c08a0ed7a682deb7c2c2" [label="/bin/sh -c mkdir -p /go/src/github.com/alexellis/blink_go_examples/example" shape="box"];
  "sha256:250295d7d274cfc8b97338905b425d750982ebf7615e7fe3ab0bc1a0cf811f89" [label="mkdir{path=/go/src/github.com/alexellis/blinkt_go_examples/example}" shape="note"];
  "sha256:56488193a772e0cdf3e525e4280fad399ded2befa0b4e935fe2ab22873284bc7" [label="local://context" shape="ellipse"];
  "sha256:d576495d5e5de21ad80968eade5ff2be6a829a9a6fa34a7a29e83cc5f1901b4f" [label="copy{src=/, dest=/go/src/github.com/alexellis/blinkt_go_examples/example/}" shape="note"];
  "sha256:fe6b842316515c01fc77413821ed841188ab9a3f7398188d811676ba56df92d2" [label="/bin/sh -c GOARM=6 CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /usr/bin/app ." shape="box"];
  "sha256:1f5e1ba3d7e2a5f32946d793764f76368eaf28532ef98ef4fdb42d3af1e02a6a" [label="copy{src=/usr/bin/app, dest=/app}" shape="note"];
  "sha256:abb30b5936a35ef8ab052573722c47be14ac29d470511cbdf5f26f0724bf437c" [label="sha256:abb30b5936a35ef8ab052573722c47be14ac29d470511cbdf5f26f0724bf437c" shape="plaintext"];
  "sha256:6f4df1301e8364ed4509ca0677888c24c3bdb09ece8d675481aaa3a2f3d0145f" -> "sha256:ba26620a5fdedf8a0f4b6a5596a4a9d122bdd05976146611cb5de22fa47ba9d5" [label=""];
  "sha256:ba26620a5fdedf8a0f4b6a5596a4a9d122bdd05976146611cb5de22fa47ba9d5" -> "sha256:16c77e2b6c458839f6a49b1f7c62331b3ac902c38314bca462c94c2df97c684b" [label=""];
  "sha256:16c77e2b6c458839f6a49b1f7c62331b3ac902c38314bca462c94c2df97c684b" -> "sha256:7cc3f95dc0623c806c64681d84840081d707406eaa36c08a0ed7a682deb7c2c2" [label=""];
  "sha256:7cc3f95dc0623c806c64681d84840081d707406eaa36c08a0ed7a682deb7c2c2" -> "sha256:250295d7d274cfc8b97338905b425d750982ebf7615e7fe3ab0bc1a0cf811f89" [label=""];
  "sha256:250295d7d274cfc8b97338905b425d750982ebf7615e7fe3ab0bc1a0cf811f89" -> "sha256:d576495d5e5de21ad80968eade5ff2be6a829a9a6fa34a7a29e83cc5f1901b4f" [label=""];
  "sha256:56488193a772e0cdf3e525e4280fad399ded2befa0b4e935fe2ab22873284bc7" -> "sha256:d576495d5e5de21ad80968eade5ff2be6a829a9a6fa34a7a29e83cc5f1901b4f" [label=""];
  "sha256:d576495d5e5de21ad80968eade5ff2be6a829a9a6fa34a7a29e83cc5f1901b4f" -> "sha256:fe6b842316515c01fc77413821ed841188ab9a3f7398188d811676ba56df92d2" [label=""];
  "sha256:fe6b842316515c01fc77413821ed841188ab9a3f7398188d811676ba56df92d2" -> "sha256:1f5e1ba3d7e2a5f32946d793764f76368eaf28532ef98ef4fdb42d3af1e02a6a" [label=""];
  "sha256:1f5e1ba3d7e2a5f32946d793764f76368eaf28532ef98ef4fdb42d3af1e02a6a" -> "sha256:abb30b5936a35ef8ab052573722c47be14ac29d470511cbdf5f26f0724bf437c" [label=""];
}

