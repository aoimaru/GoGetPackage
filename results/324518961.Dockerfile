[app/sources/324518961.Dockerfile]
digraph {
  "sha256:354f74e2bc3da5fe836cad93957a01946dd8c47ff6177b5b3f6e13cc798d33dd" [label="docker-image://docker.io/library/golang:1.10.0-alpine" shape="ellipse"];
  "sha256:57956e9334354a41676346c23b833b0a0a19ca3d7489c5c1d918ea6a11a54863" [label="/bin/sh -c echo 4" shape="box"];
  "sha256:6b531f13d0f873d27706258a1982f1cb6b1d950a832fe93c6731eebb448dc6d0" [label="/bin/sh -c apk add --no-cache git make" shape="box"];
  "sha256:b63b3b73445174729d7fed24ff7e9ee5fe5eace8eddc27482345de1818924e62" [label="/bin/sh -c /bin/true     && go get -u github.com/golang/dep/cmd/dep     && go get -u github.com/alecthomas/gometalinter     && gometalinter --install     && rm -rf /go/src /go/pkg" shape="box"];
  "sha256:b81ed9416aa9efae70f398f5117563cfe4ddc0598772fcc6cc3237f9217d1208" [label="/bin/sh -c /bin/true   && mkdir /scowl-wl   && wget -O /scowl-wl/words-US-60.txt ${SOURCE_US}   && wget -O /scowl-wl/words-GB-ise-60.txt ${SOURCE_GB_ISE}" shape="box"];
  "sha256:8ae902ace0c6bb55281b780b2ed21d287286ed90be6657ba2af13491e4cc4d9f" [label="sha256:8ae902ace0c6bb55281b780b2ed21d287286ed90be6657ba2af13491e4cc4d9f" shape="plaintext"];
  "sha256:354f74e2bc3da5fe836cad93957a01946dd8c47ff6177b5b3f6e13cc798d33dd" -> "sha256:57956e9334354a41676346c23b833b0a0a19ca3d7489c5c1d918ea6a11a54863" [label=""];
  "sha256:57956e9334354a41676346c23b833b0a0a19ca3d7489c5c1d918ea6a11a54863" -> "sha256:6b531f13d0f873d27706258a1982f1cb6b1d950a832fe93c6731eebb448dc6d0" [label=""];
  "sha256:6b531f13d0f873d27706258a1982f1cb6b1d950a832fe93c6731eebb448dc6d0" -> "sha256:b63b3b73445174729d7fed24ff7e9ee5fe5eace8eddc27482345de1818924e62" [label=""];
  "sha256:b63b3b73445174729d7fed24ff7e9ee5fe5eace8eddc27482345de1818924e62" -> "sha256:b81ed9416aa9efae70f398f5117563cfe4ddc0598772fcc6cc3237f9217d1208" [label=""];
  "sha256:b81ed9416aa9efae70f398f5117563cfe4ddc0598772fcc6cc3237f9217d1208" -> "sha256:8ae902ace0c6bb55281b780b2ed21d287286ed90be6657ba2af13491e4cc4d9f" [label=""];
}

