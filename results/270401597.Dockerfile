[app/sources/270401597.Dockerfile]
digraph {
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:e21d57a6b59463cf4951614652f413e312918d451c4a10a137b4ccca5115fb92" [label="/bin/sh -c apk add --no-cache curl git && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:8c595bd3f0905565ab4bce004e56fb643339bd81f8a6ad7327b1fd6800166347" [label="/bin/sh -c curl https://glide.sh/get | sh" shape="box"];
  "sha256:1fe35dda2b2073dcc955c025648d8cbc863cbcc98ff575e8e5191bb1b4d1c856" [label="mkdir{path=/go/src/github.com/kubernetes-incubator/auger}" shape="note"];
  "sha256:ba602d95120e738ccdc7c0e9b11193971dd48b86adfcd6edd192c9ca40355eb3" [label="local://context" shape="ellipse"];
  "sha256:cc33d4417c309436946bfcb6f647a2dda05e8042c7bacd3c337174970b17d9e2" [label="copy{src=/, dest=/go/src/github.com/kubernetes-incubator/auger}" shape="note"];
  "sha256:adf58f4765a2b608de862da8a9ce1ab642e0867a3f2cfa53aa66bec6b7f4357d" [label="/bin/sh -c glide install -v && go install -v github.com/kubernetes-incubator/auger && chmod +x /go/bin/auger" shape="box"];
  "sha256:6207b5a24419f6b5dad43a92574fb3797be89e19538f08bb08625bdbc66fd540" [label="sha256:6207b5a24419f6b5dad43a92574fb3797be89e19538f08bb08625bdbc66fd540" shape="plaintext"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:e21d57a6b59463cf4951614652f413e312918d451c4a10a137b4ccca5115fb92" [label=""];
  "sha256:e21d57a6b59463cf4951614652f413e312918d451c4a10a137b4ccca5115fb92" -> "sha256:8c595bd3f0905565ab4bce004e56fb643339bd81f8a6ad7327b1fd6800166347" [label=""];
  "sha256:8c595bd3f0905565ab4bce004e56fb643339bd81f8a6ad7327b1fd6800166347" -> "sha256:1fe35dda2b2073dcc955c025648d8cbc863cbcc98ff575e8e5191bb1b4d1c856" [label=""];
  "sha256:1fe35dda2b2073dcc955c025648d8cbc863cbcc98ff575e8e5191bb1b4d1c856" -> "sha256:cc33d4417c309436946bfcb6f647a2dda05e8042c7bacd3c337174970b17d9e2" [label=""];
  "sha256:ba602d95120e738ccdc7c0e9b11193971dd48b86adfcd6edd192c9ca40355eb3" -> "sha256:cc33d4417c309436946bfcb6f647a2dda05e8042c7bacd3c337174970b17d9e2" [label=""];
  "sha256:cc33d4417c309436946bfcb6f647a2dda05e8042c7bacd3c337174970b17d9e2" -> "sha256:adf58f4765a2b608de862da8a9ce1ab642e0867a3f2cfa53aa66bec6b7f4357d" [label=""];
  "sha256:adf58f4765a2b608de862da8a9ce1ab642e0867a3f2cfa53aa66bec6b7f4357d" -> "sha256:6207b5a24419f6b5dad43a92574fb3797be89e19538f08bb08625bdbc66fd540" [label=""];
}

