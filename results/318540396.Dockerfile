[app/sources/318540396.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:2a0c2229bc92676fbc6a1a3964600a28fbb30a66b7768af2a05edce2b9eb7a56" [label="/bin/sh -c addgroup -S app && adduser -S -g app app" shape="box"];
  "sha256:a60cfcaa64372510850dff2ed978c1a5f5f518947d9650f0bfe928e155b437a9" [label="/bin/sh -c mkdir -p /home/app" shape="box"];
  "sha256:c0650ef06b999280b0d5e21714a07102a949fad115127b8df34765087cca0529" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:000c8f80926b447daaa6446c3fafc1d4b7af7507147b05995d694747d332ae35" [label="mkdir{path=/go/src/github.com/openfaas-incubator/faas-idler}" shape="note"];
  "sha256:6a68dae1c9496cfab81685e6aeb9fc9023738a2cf6a046c20f8bc991ae4b72b9" [label="local://context" shape="ellipse"];
  "sha256:54667a1adf9b9b9c20919f9330ecaacce7403f5553c09ab9923386a0a8289341" [label="copy{src=/main.go, dest=/go/src/github.com/openfaas-incubator/faas-idler/main.go}" shape="note"];
  "sha256:116206fa8e7acdf57f01a723a130c6adb24ba7f239c33b5056c89a209b602f47" [label="copy{src=/vendor, dest=/go/src/github.com/openfaas-incubator/faas-idler/vendor}" shape="note"];
  "sha256:8ffb717e52c6f2ae0cc8a9a4dc2569991e62970bf2c88f6836d9db0f9f086335" [label="/bin/sh -c apk --no-cache add build-base &&     go build -o /usr/bin/faas-idler ." shape="box"];
  "sha256:f79ce7ccf4b6da970f5dff87ead8f3f6dae35159154c83aa7a391e885583358f" [label="copy{src=/usr/bin/faas-idler, dest=/home/app/}" shape="note"];
  "sha256:19879afd23d831308091beeb9ff1781f93adb43f62f42cc0181f543afbf7ad78" [label="/bin/sh -c chown -R app /home/app" shape="box"];
  "sha256:24092275eeb4419d6b4d9069f01dd010d1720b4ec89538d3f17a61f63841c268" [label="sha256:24092275eeb4419d6b4d9069f01dd010d1720b4ec89538d3f17a61f63841c268" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:2a0c2229bc92676fbc6a1a3964600a28fbb30a66b7768af2a05edce2b9eb7a56" [label=""];
  "sha256:2a0c2229bc92676fbc6a1a3964600a28fbb30a66b7768af2a05edce2b9eb7a56" -> "sha256:a60cfcaa64372510850dff2ed978c1a5f5f518947d9650f0bfe928e155b437a9" [label=""];
  "sha256:a60cfcaa64372510850dff2ed978c1a5f5f518947d9650f0bfe928e155b437a9" -> "sha256:c0650ef06b999280b0d5e21714a07102a949fad115127b8df34765087cca0529" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:000c8f80926b447daaa6446c3fafc1d4b7af7507147b05995d694747d332ae35" [label=""];
  "sha256:000c8f80926b447daaa6446c3fafc1d4b7af7507147b05995d694747d332ae35" -> "sha256:54667a1adf9b9b9c20919f9330ecaacce7403f5553c09ab9923386a0a8289341" [label=""];
  "sha256:6a68dae1c9496cfab81685e6aeb9fc9023738a2cf6a046c20f8bc991ae4b72b9" -> "sha256:54667a1adf9b9b9c20919f9330ecaacce7403f5553c09ab9923386a0a8289341" [label=""];
  "sha256:54667a1adf9b9b9c20919f9330ecaacce7403f5553c09ab9923386a0a8289341" -> "sha256:116206fa8e7acdf57f01a723a130c6adb24ba7f239c33b5056c89a209b602f47" [label=""];
  "sha256:6a68dae1c9496cfab81685e6aeb9fc9023738a2cf6a046c20f8bc991ae4b72b9" -> "sha256:116206fa8e7acdf57f01a723a130c6adb24ba7f239c33b5056c89a209b602f47" [label=""];
  "sha256:116206fa8e7acdf57f01a723a130c6adb24ba7f239c33b5056c89a209b602f47" -> "sha256:8ffb717e52c6f2ae0cc8a9a4dc2569991e62970bf2c88f6836d9db0f9f086335" [label=""];
  "sha256:c0650ef06b999280b0d5e21714a07102a949fad115127b8df34765087cca0529" -> "sha256:f79ce7ccf4b6da970f5dff87ead8f3f6dae35159154c83aa7a391e885583358f" [label=""];
  "sha256:8ffb717e52c6f2ae0cc8a9a4dc2569991e62970bf2c88f6836d9db0f9f086335" -> "sha256:f79ce7ccf4b6da970f5dff87ead8f3f6dae35159154c83aa7a391e885583358f" [label=""];
  "sha256:f79ce7ccf4b6da970f5dff87ead8f3f6dae35159154c83aa7a391e885583358f" -> "sha256:19879afd23d831308091beeb9ff1781f93adb43f62f42cc0181f543afbf7ad78" [label=""];
  "sha256:19879afd23d831308091beeb9ff1781f93adb43f62f42cc0181f543afbf7ad78" -> "sha256:24092275eeb4419d6b4d9069f01dd010d1720b4ec89538d3f17a61f63841c268" [label=""];
}

