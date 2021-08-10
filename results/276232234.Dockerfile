[app/sources/276232234.Dockerfile]
digraph {
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" [label="docker-image://docker.io/aarch64/ubuntu:xenial" shape="ellipse"];
  "sha256:d94f8d0e59d70c45e9ef77bbe3b40f9d6878fa21b089737646b8bee6ba20382d" [label="/bin/sh -c apt-get update && apt-get install -y git golang-go curl" shape="box"];
  "sha256:3e49cc18843f552f07011a034fbde2a389a1612ded6425e1472d5535853b75a8" [label="/bin/sh -c mkdir /usr/src/go &&         curl -fsSL https://golang.org/dl/go${GO_VERSION}.src.tar.gz | tar -v -C /usr/src/go -xz --strip-components=1 &&         cd /usr/src/go/src &&         GOOS=linux GOARCH=arm64 GOROOT_BOOTSTRAP=\"$(go env GOROOT)\" ./make.bash" shape="box"];
  "sha256:74d3f406c25b48c132531f57a97ab2d836f5513beffcaf6e8ffcf5b5f109f8f1" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:376ee5117a828f19f1202dab8f2d134b2690e02c454d941eb3d67c6900857350" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:b753d59651ec8208069ed42b40b76ba76f5ebe638709a48b50782a334849b08e" [label="local://context" shape="ellipse"];
  "sha256:6a53363b9cdd2843c9f3805f1034751cbd36c9d6d3028564649435265f8b7b44" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:0b6c8930d0099a9fa236d728fe19a12ef53303d815922101e312c6c8b9b228a3" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:3b8f6854a95a7ec83367cd78d119d08c4b61efd344c1a545381d61c5e29f5731" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:fccad023213b7030676facb188cd24bd7d686939e175f665eab958b817aacad8" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:86a084c6306dd376965dea030eb62ebf18dab84996ddc5a3f96c9f37626ff513" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:2764dc79557e5fad1791273696e23aaa26f1e05723db35cc108167b18a019e07" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:01e3eefadc00aa6f391b0b766df6e82532dacfc6bf286a170ef52225c8177205" [label="sha256:01e3eefadc00aa6f391b0b766df6e82532dacfc6bf286a170ef52225c8177205" shape="plaintext"];
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" -> "sha256:d94f8d0e59d70c45e9ef77bbe3b40f9d6878fa21b089737646b8bee6ba20382d" [label=""];
  "sha256:d94f8d0e59d70c45e9ef77bbe3b40f9d6878fa21b089737646b8bee6ba20382d" -> "sha256:3e49cc18843f552f07011a034fbde2a389a1612ded6425e1472d5535853b75a8" [label=""];
  "sha256:3e49cc18843f552f07011a034fbde2a389a1612ded6425e1472d5535853b75a8" -> "sha256:74d3f406c25b48c132531f57a97ab2d836f5513beffcaf6e8ffcf5b5f109f8f1" [label=""];
  "sha256:74d3f406c25b48c132531f57a97ab2d836f5513beffcaf6e8ffcf5b5f109f8f1" -> "sha256:376ee5117a828f19f1202dab8f2d134b2690e02c454d941eb3d67c6900857350" [label=""];
  "sha256:376ee5117a828f19f1202dab8f2d134b2690e02c454d941eb3d67c6900857350" -> "sha256:6a53363b9cdd2843c9f3805f1034751cbd36c9d6d3028564649435265f8b7b44" [label=""];
  "sha256:b753d59651ec8208069ed42b40b76ba76f5ebe638709a48b50782a334849b08e" -> "sha256:6a53363b9cdd2843c9f3805f1034751cbd36c9d6d3028564649435265f8b7b44" [label=""];
  "sha256:6a53363b9cdd2843c9f3805f1034751cbd36c9d6d3028564649435265f8b7b44" -> "sha256:0b6c8930d0099a9fa236d728fe19a12ef53303d815922101e312c6c8b9b228a3" [label=""];
  "sha256:b753d59651ec8208069ed42b40b76ba76f5ebe638709a48b50782a334849b08e" -> "sha256:0b6c8930d0099a9fa236d728fe19a12ef53303d815922101e312c6c8b9b228a3" [label=""];
  "sha256:0b6c8930d0099a9fa236d728fe19a12ef53303d815922101e312c6c8b9b228a3" -> "sha256:3b8f6854a95a7ec83367cd78d119d08c4b61efd344c1a545381d61c5e29f5731" [label=""];
  "sha256:3b8f6854a95a7ec83367cd78d119d08c4b61efd344c1a545381d61c5e29f5731" -> "sha256:fccad023213b7030676facb188cd24bd7d686939e175f665eab958b817aacad8" [label=""];
  "sha256:fccad023213b7030676facb188cd24bd7d686939e175f665eab958b817aacad8" -> "sha256:86a084c6306dd376965dea030eb62ebf18dab84996ddc5a3f96c9f37626ff513" [label=""];
  "sha256:86a084c6306dd376965dea030eb62ebf18dab84996ddc5a3f96c9f37626ff513" -> "sha256:2764dc79557e5fad1791273696e23aaa26f1e05723db35cc108167b18a019e07" [label=""];
  "sha256:2764dc79557e5fad1791273696e23aaa26f1e05723db35cc108167b18a019e07" -> "sha256:01e3eefadc00aa6f391b0b766df6e82532dacfc6bf286a170ef52225c8177205" [label=""];
}

