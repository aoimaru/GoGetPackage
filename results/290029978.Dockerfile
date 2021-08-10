[app/sources/290029978.Dockerfile]
digraph {
  "sha256:c5cd0694fe22818393780eb9382101358100eb7444c0d2593ba511b2d878d1df" [label="local://context" shape="ellipse"];
  "sha256:0093075632826c0069e472a736804174630b02a4bbb81198187968495e743e90" [label="docker-image://gcr.io/linkerd-io/go-deps:b3c7654e@sha256:a3b84e6c37f4d30564db6010a4738381a56208f682a57d5232c4bb3b8f73a335" shape="ellipse"];
  "sha256:84ccc088b79d5ef784e03165e4353f0e6d1403683aacec5866f51d08e37c7ba0" [label="mkdir{path=/go/src/github.com/linkerd/linkerd2}" shape="note"];
  "sha256:f4a24197ed194d7401abde3d746b264f59e5c9b0741d52ef82483e642704d4f7" [label="copy{src=/controller/gen, dest=/go/src/github.com/linkerd/linkerd2/controller/gen}" shape="note"];
  "sha256:c7816093c24b313f2b012b8151607a87326486b15c471f707873e288e87a288a" [label="copy{src=/pkg, dest=/go/src/github.com/linkerd/linkerd2/pkg}" shape="note"];
  "sha256:66f21e0c856ec657f3861a43dd264baac6529eb481322f1ca8daa3a37c05a6e9" [label="copy{src=/controller, dest=/go/src/github.com/linkerd/linkerd2/controller}" shape="note"];
  "sha256:a8fbd293891da87589bd786dc45fe4310371322186f3019c24f576b07f104af8" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go install ./pkg/..." shape="box"];
  "sha256:91064d503df7860a1e227cf4046a5646a6e812bbc399d615faaed7bccbf8f398" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go install ./controller/cmd/..." shape="box"];
  "sha256:9a0bcb0dd4a01799bbe387bdbbf190484d6a6988efbf6d016773dbc4dfbdb3f8" [label="copy{src=/LICENSE, dest=/linkerd/LICENSE}" shape="note"];
  "sha256:18160a09743b1c8293e2f47dbcdf439ed94736bb844a760963952f57fa71da6a" [label="copy{src=/go/bin, dest=/go/bin}" shape="note"];
  "sha256:7f433fd6cb0ec834c60f97411d31bb0bd735fc77623c9b25db7a3aed2faac400" [label="sha256:7f433fd6cb0ec834c60f97411d31bb0bd735fc77623c9b25db7a3aed2faac400" shape="plaintext"];
  "sha256:0093075632826c0069e472a736804174630b02a4bbb81198187968495e743e90" -> "sha256:84ccc088b79d5ef784e03165e4353f0e6d1403683aacec5866f51d08e37c7ba0" [label=""];
  "sha256:84ccc088b79d5ef784e03165e4353f0e6d1403683aacec5866f51d08e37c7ba0" -> "sha256:f4a24197ed194d7401abde3d746b264f59e5c9b0741d52ef82483e642704d4f7" [label=""];
  "sha256:c5cd0694fe22818393780eb9382101358100eb7444c0d2593ba511b2d878d1df" -> "sha256:f4a24197ed194d7401abde3d746b264f59e5c9b0741d52ef82483e642704d4f7" [label=""];
  "sha256:f4a24197ed194d7401abde3d746b264f59e5c9b0741d52ef82483e642704d4f7" -> "sha256:c7816093c24b313f2b012b8151607a87326486b15c471f707873e288e87a288a" [label=""];
  "sha256:c5cd0694fe22818393780eb9382101358100eb7444c0d2593ba511b2d878d1df" -> "sha256:c7816093c24b313f2b012b8151607a87326486b15c471f707873e288e87a288a" [label=""];
  "sha256:c7816093c24b313f2b012b8151607a87326486b15c471f707873e288e87a288a" -> "sha256:66f21e0c856ec657f3861a43dd264baac6529eb481322f1ca8daa3a37c05a6e9" [label=""];
  "sha256:c5cd0694fe22818393780eb9382101358100eb7444c0d2593ba511b2d878d1df" -> "sha256:66f21e0c856ec657f3861a43dd264baac6529eb481322f1ca8daa3a37c05a6e9" [label=""];
  "sha256:66f21e0c856ec657f3861a43dd264baac6529eb481322f1ca8daa3a37c05a6e9" -> "sha256:a8fbd293891da87589bd786dc45fe4310371322186f3019c24f576b07f104af8" [label=""];
  "sha256:a8fbd293891da87589bd786dc45fe4310371322186f3019c24f576b07f104af8" -> "sha256:91064d503df7860a1e227cf4046a5646a6e812bbc399d615faaed7bccbf8f398" [label=""];
  "sha256:c5cd0694fe22818393780eb9382101358100eb7444c0d2593ba511b2d878d1df" -> "sha256:9a0bcb0dd4a01799bbe387bdbbf190484d6a6988efbf6d016773dbc4dfbdb3f8" [label=""];
  "sha256:9a0bcb0dd4a01799bbe387bdbbf190484d6a6988efbf6d016773dbc4dfbdb3f8" -> "sha256:18160a09743b1c8293e2f47dbcdf439ed94736bb844a760963952f57fa71da6a" [label=""];
  "sha256:91064d503df7860a1e227cf4046a5646a6e812bbc399d615faaed7bccbf8f398" -> "sha256:18160a09743b1c8293e2f47dbcdf439ed94736bb844a760963952f57fa71da6a" [label=""];
  "sha256:18160a09743b1c8293e2f47dbcdf439ed94736bb844a760963952f57fa71da6a" -> "sha256:7f433fd6cb0ec834c60f97411d31bb0bd735fc77623c9b25db7a3aed2faac400" [label=""];
}

