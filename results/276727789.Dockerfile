[app/sources/276727789.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label="/bin/sh -c apt-get update && apt-get install -y         curl         gcc         git         make         tar" shape="box"];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\"         | tar -xzC /usr/local" shape="box"];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:3e5d7200f7740942c6b0871c3c744003a05840107acc1c833eb485ee996d72c6" [label="local://context" shape="ellipse"];
  "sha256:d9b81222dfc6844f3ce74fd60f3278382293dc874b71bcadc59f1803339ff1e5" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:fd5d789d12d35eb692d07efec60c5585c84f26b6ece51ba9f54ae1f33a4ba688" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:29228ff271f5446179ec145148624359f736b18be72a880304fd037c679f3c1c" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:17b807178cb7e12109398a180014707298bbb24f3a481769b55363dfb874097b" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:1d01c4cb535b44ae8e7155ff45f1cec1a7719747593d675c410ec90fa31bb471" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:891cf4f819735e50e5718e72b465dce4d147612df12ca4d0013b185630d6f838" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:816acf6fef67d24335b04627fc999b1e9816a4575e05fc74f91449b5464ef576" [label="sha256:816acf6fef67d24335b04627fc999b1e9816a4575e05fc74f91449b5464ef576" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" [label=""];
  "sha256:59ed14c3c2bda61c373321bdb038a05c1bb2f6fb6111878312a5374e575648b6" -> "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" [label=""];
  "sha256:9ec0ffc407eb05ca104bb985fc597b80e312c688f757611afe989a2cf634126c" -> "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" [label=""];
  "sha256:ad11cac08ecdfca2bcc0785236ab53976d18426060d4d58f6e2f1ef19514a1bc" -> "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" [label=""];
  "sha256:4378abe7ec0ea05700356df6ba6329ca5af64944bf6a52e99d61f5140a4732a6" -> "sha256:d9b81222dfc6844f3ce74fd60f3278382293dc874b71bcadc59f1803339ff1e5" [label=""];
  "sha256:3e5d7200f7740942c6b0871c3c744003a05840107acc1c833eb485ee996d72c6" -> "sha256:d9b81222dfc6844f3ce74fd60f3278382293dc874b71bcadc59f1803339ff1e5" [label=""];
  "sha256:d9b81222dfc6844f3ce74fd60f3278382293dc874b71bcadc59f1803339ff1e5" -> "sha256:fd5d789d12d35eb692d07efec60c5585c84f26b6ece51ba9f54ae1f33a4ba688" [label=""];
  "sha256:3e5d7200f7740942c6b0871c3c744003a05840107acc1c833eb485ee996d72c6" -> "sha256:fd5d789d12d35eb692d07efec60c5585c84f26b6ece51ba9f54ae1f33a4ba688" [label=""];
  "sha256:fd5d789d12d35eb692d07efec60c5585c84f26b6ece51ba9f54ae1f33a4ba688" -> "sha256:29228ff271f5446179ec145148624359f736b18be72a880304fd037c679f3c1c" [label=""];
  "sha256:29228ff271f5446179ec145148624359f736b18be72a880304fd037c679f3c1c" -> "sha256:17b807178cb7e12109398a180014707298bbb24f3a481769b55363dfb874097b" [label=""];
  "sha256:17b807178cb7e12109398a180014707298bbb24f3a481769b55363dfb874097b" -> "sha256:1d01c4cb535b44ae8e7155ff45f1cec1a7719747593d675c410ec90fa31bb471" [label=""];
  "sha256:1d01c4cb535b44ae8e7155ff45f1cec1a7719747593d675c410ec90fa31bb471" -> "sha256:891cf4f819735e50e5718e72b465dce4d147612df12ca4d0013b185630d6f838" [label=""];
  "sha256:891cf4f819735e50e5718e72b465dce4d147612df12ca4d0013b185630d6f838" -> "sha256:816acf6fef67d24335b04627fc999b1e9816a4575e05fc74f91449b5464ef576" [label=""];
}

