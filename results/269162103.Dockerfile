[app/sources/269162103.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:fe59e5fdab58e197877c0cf786e0e27c1b83357f50a63852dc0f633f7f94778e" [label="local://context" shape="ellipse"];
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" [label="docker-image://docker.io/library/golang:1.9.2" shape="ellipse"];
  "sha256:4ff0c74bfeb05ccdf416b6293a6886ba03994d82395fa0cb21bb5626ca0d08a0" [label="mkdir{path=/go/src/github.com/splunk/splunk-logging-plugin}" shape="note"];
  "sha256:cba251b94b770362275863ef420c2647cbf81424ac9cce2adb9c72cafa8ce983" [label="copy{src=/, dest=/go/src/github.com/splunk/splunk-logging-plugin/}" shape="note"];
  "sha256:f4b3087d2842f5d15b62b711dd68ed5b4702703127a71eea291341e0e529753e" [label="/bin/sh -c curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh" shape="box"];
  "sha256:15f323c4990c013ab21254c815aa876aeed7b242954f16c47f8e2f1dd0d64e86" [label="/bin/sh -c cd /go/src/github.com/splunk/splunk-logging-plugin && dep ensure" shape="box"];
  "sha256:3e7f8d41e012eefbe8bd5455aea7ccf51aa6d9260ec44a9cf9792b9c00fd1428" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /bin/splunk-logging-plugin ." shape="box"];
  "sha256:9198970a4ef57c594c35b86d2563bd71059b7dbbadceeeeb30e7b1f6fa424507" [label="copy{src=/bin/splunk-logging-plugin, dest=/bin/}" shape="note"];
  "sha256:fe1ffec93801bd1adc1defd70feb0df6bede67cced59a7a7ca8396946a4a8f5c" [label="mkdir{path=/bin}" shape="note"];
  "sha256:40a78daaf1438aa6978d0d5d932cf0047b382dbceee036fe7e44b47f93fe3fd4" [label="sha256:40a78daaf1438aa6978d0d5d932cf0047b382dbceee036fe7e44b47f93fe3fd4" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" [label=""];
  "sha256:de9a5546922230dce32e2703a551465820151355640e4a0d14e66070320a951c" -> "sha256:4ff0c74bfeb05ccdf416b6293a6886ba03994d82395fa0cb21bb5626ca0d08a0" [label=""];
  "sha256:4ff0c74bfeb05ccdf416b6293a6886ba03994d82395fa0cb21bb5626ca0d08a0" -> "sha256:cba251b94b770362275863ef420c2647cbf81424ac9cce2adb9c72cafa8ce983" [label=""];
  "sha256:fe59e5fdab58e197877c0cf786e0e27c1b83357f50a63852dc0f633f7f94778e" -> "sha256:cba251b94b770362275863ef420c2647cbf81424ac9cce2adb9c72cafa8ce983" [label=""];
  "sha256:cba251b94b770362275863ef420c2647cbf81424ac9cce2adb9c72cafa8ce983" -> "sha256:f4b3087d2842f5d15b62b711dd68ed5b4702703127a71eea291341e0e529753e" [label=""];
  "sha256:f4b3087d2842f5d15b62b711dd68ed5b4702703127a71eea291341e0e529753e" -> "sha256:15f323c4990c013ab21254c815aa876aeed7b242954f16c47f8e2f1dd0d64e86" [label=""];
  "sha256:15f323c4990c013ab21254c815aa876aeed7b242954f16c47f8e2f1dd0d64e86" -> "sha256:3e7f8d41e012eefbe8bd5455aea7ccf51aa6d9260ec44a9cf9792b9c00fd1428" [label=""];
  "sha256:1de30926ae6c3148d0fe506d9f661bdabe40124ba21cb33903d9ad9c15a61a24" -> "sha256:9198970a4ef57c594c35b86d2563bd71059b7dbbadceeeeb30e7b1f6fa424507" [label=""];
  "sha256:3e7f8d41e012eefbe8bd5455aea7ccf51aa6d9260ec44a9cf9792b9c00fd1428" -> "sha256:9198970a4ef57c594c35b86d2563bd71059b7dbbadceeeeb30e7b1f6fa424507" [label=""];
  "sha256:9198970a4ef57c594c35b86d2563bd71059b7dbbadceeeeb30e7b1f6fa424507" -> "sha256:fe1ffec93801bd1adc1defd70feb0df6bede67cced59a7a7ca8396946a4a8f5c" [label=""];
  "sha256:fe1ffec93801bd1adc1defd70feb0df6bede67cced59a7a7ca8396946a4a8f5c" -> "sha256:40a78daaf1438aa6978d0d5d932cf0047b382dbceee036fe7e44b47f93fe3fd4" [label=""];
}

