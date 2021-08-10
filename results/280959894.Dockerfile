[app/sources/280959894.Dockerfile]
digraph {
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" [label="docker-image://docker.io/library/golang:1.10" shape="ellipse"];
  "sha256:c50b56f88ed96bf311e356caafd54300625fa573bfbea9dc14477e25e06f6320" [label="/bin/sh -c go get -u github.com/gopherjs/gopherjs" shape="box"];
  "sha256:a8c2e2b8f15239a5acb3da89a63134a132a7ffe2dabe3666e41253bb8df7ad1f" [label="/bin/sh -c go get -u honnef.co/go/js/dom" shape="box"];
  "sha256:4555c53f415495e49f5cd252fd30ddf44e08a6773acb95d1f17a00d951205a37" [label="/bin/sh -c go get -u -d -tags=js github.com/gopherjs/jsbuiltin" shape="box"];
  "sha256:cc9c495e9aa5d67e06ba2c45f83bde82ca4db42f5f54bff259b1a3c5900ddba2" [label="/bin/sh -c go get -u honnef.co/go/js/xhr" shape="box"];
  "sha256:8d7a31e16706c6f8adac0761588f607bc8970346f7aa3bd7180fbad1e1eae371" [label="/bin/sh -c go get -u github.com/gopherjs/websocket" shape="box"];
  "sha256:7218d126748e7c0a535c635a5b370140468190c5775e201192ab504bec1ee9e2" [label="/bin/sh -c go get -u github.com/tdewolff/minify/cmd/minify" shape="box"];
  "sha256:23701bf1dd67447026de06964dd712516dc2c9f020408ec9984643c4508bc056" [label="/bin/sh -c go get -u go.isomorphicgo.org/go/isokit" shape="box"];
  "sha256:171562ef70153b2b8b4b598b6fa8da87196572f3b8c27a6221916a37290f52c4" [label="/bin/sh -c go get -u go.isomorphicgo.org/uxtoolkit/cog" shape="box"];
  "sha256:2cb66262c2744659b885d9972330d357fc54c30193d7ae84401dfdee77303c82" [label="/bin/sh -c go get -u github.com/EngineerKamesh/igb" shape="box"];
  "sha256:21430b8830134670eed97c0389a47bba90e8a852d4bef6a8c292571d6746bf87" [label="/bin/sh -c go install github.com/tdewolff/minify" shape="box"];
  "sha256:9b323fef864846d434ae8eb00c103c53a3266604a8ea0f2802b2cd589f8bebae" [label="/bin/sh -c cd $IGWEB_APP_ROOT/client; go get ./..; /go/bin/gopherjs build -m --verbose --tags clientonly -o $IGWEB_APP_ROOT/static/js/client.min.js" shape="box"];
  "sha256:8df270141edcd97c521dd3c70b70005c35f4c185a76dd666c807208d9310a177" [label="/bin/sh -c go install github.com/EngineerKamesh/igb/igweb" shape="box"];
  "sha256:771a5cc67fa6adb90209abe25b3d2ac589f8e3e761fbb1a23b8dbb814b98f69a" [label="/bin/sh -c /go/bin/igweb --generate-static-assets" shape="box"];
  "sha256:5517eafdcb1eba5c20cc6748940cea9c696b86ef31eb0fae20b31cfde71b64d7" [label="/bin/sh -c /go/bin/minify --mime=\"text/css\" $IGWEB_APP_ROOT/static/css/igweb.css > $IGWEB_APP_ROOT/static/css/igweb.min.css" shape="box"];
  "sha256:1487e532b68040c2f8a0fb4ba810485f24a93b9b4026ffef8bccbdf52288b7c8" [label="sha256:1487e532b68040c2f8a0fb4ba810485f24a93b9b4026ffef8bccbdf52288b7c8" shape="plaintext"];
  "sha256:f7ca40a421372cfba586482f432bde258bf377a3a7cc932ad25cd89e82583053" -> "sha256:c50b56f88ed96bf311e356caafd54300625fa573bfbea9dc14477e25e06f6320" [label=""];
  "sha256:c50b56f88ed96bf311e356caafd54300625fa573bfbea9dc14477e25e06f6320" -> "sha256:a8c2e2b8f15239a5acb3da89a63134a132a7ffe2dabe3666e41253bb8df7ad1f" [label=""];
  "sha256:a8c2e2b8f15239a5acb3da89a63134a132a7ffe2dabe3666e41253bb8df7ad1f" -> "sha256:4555c53f415495e49f5cd252fd30ddf44e08a6773acb95d1f17a00d951205a37" [label=""];
  "sha256:4555c53f415495e49f5cd252fd30ddf44e08a6773acb95d1f17a00d951205a37" -> "sha256:cc9c495e9aa5d67e06ba2c45f83bde82ca4db42f5f54bff259b1a3c5900ddba2" [label=""];
  "sha256:cc9c495e9aa5d67e06ba2c45f83bde82ca4db42f5f54bff259b1a3c5900ddba2" -> "sha256:8d7a31e16706c6f8adac0761588f607bc8970346f7aa3bd7180fbad1e1eae371" [label=""];
  "sha256:8d7a31e16706c6f8adac0761588f607bc8970346f7aa3bd7180fbad1e1eae371" -> "sha256:7218d126748e7c0a535c635a5b370140468190c5775e201192ab504bec1ee9e2" [label=""];
  "sha256:7218d126748e7c0a535c635a5b370140468190c5775e201192ab504bec1ee9e2" -> "sha256:23701bf1dd67447026de06964dd712516dc2c9f020408ec9984643c4508bc056" [label=""];
  "sha256:23701bf1dd67447026de06964dd712516dc2c9f020408ec9984643c4508bc056" -> "sha256:171562ef70153b2b8b4b598b6fa8da87196572f3b8c27a6221916a37290f52c4" [label=""];
  "sha256:171562ef70153b2b8b4b598b6fa8da87196572f3b8c27a6221916a37290f52c4" -> "sha256:2cb66262c2744659b885d9972330d357fc54c30193d7ae84401dfdee77303c82" [label=""];
  "sha256:2cb66262c2744659b885d9972330d357fc54c30193d7ae84401dfdee77303c82" -> "sha256:21430b8830134670eed97c0389a47bba90e8a852d4bef6a8c292571d6746bf87" [label=""];
  "sha256:21430b8830134670eed97c0389a47bba90e8a852d4bef6a8c292571d6746bf87" -> "sha256:9b323fef864846d434ae8eb00c103c53a3266604a8ea0f2802b2cd589f8bebae" [label=""];
  "sha256:9b323fef864846d434ae8eb00c103c53a3266604a8ea0f2802b2cd589f8bebae" -> "sha256:8df270141edcd97c521dd3c70b70005c35f4c185a76dd666c807208d9310a177" [label=""];
  "sha256:8df270141edcd97c521dd3c70b70005c35f4c185a76dd666c807208d9310a177" -> "sha256:771a5cc67fa6adb90209abe25b3d2ac589f8e3e761fbb1a23b8dbb814b98f69a" [label=""];
  "sha256:771a5cc67fa6adb90209abe25b3d2ac589f8e3e761fbb1a23b8dbb814b98f69a" -> "sha256:5517eafdcb1eba5c20cc6748940cea9c696b86ef31eb0fae20b31cfde71b64d7" [label=""];
  "sha256:5517eafdcb1eba5c20cc6748940cea9c696b86ef31eb0fae20b31cfde71b64d7" -> "sha256:1487e532b68040c2f8a0fb4ba810485f24a93b9b4026ffef8bccbdf52288b7c8" [label=""];
}

