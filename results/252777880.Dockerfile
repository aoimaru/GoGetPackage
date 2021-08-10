[app/sources/252777880.Dockerfile]
digraph {
  "sha256:135ced71077a4b103c76e95959888e303523ca647dfb9582684c3cf2adbdfede" [label="docker-image://docker.io/library/node:8.1-alpine@sha256:b9d990b3e7de4c6d1bd5b77ebab0392bade033db06efae68fc15ae68b6a4bb24" shape="ellipse"];
  "sha256:2613168c190910f822ebdfc30be0879f658c640358085c46ec9f1fa9702115dc" [label="mkdir{path=/src}" shape="note"];
  "sha256:c68a3731db7470b484229a80e16b600141c3c04ca70f0e3398b63f9fe3fd9fcd" [label="/bin/sh -c apk -U upgrade && apk add ca-certificates file git su-exec tini && npm install -g nodemon gulp-cli && update-ca-certificates && rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:ee7ca13685db564c3cfac0fc20e4e6f8bf7f8fe2fb5c17d8feb396f68f4f012f" [label="local://context" shape="ellipse"];
  "sha256:f067ae453de0bbf24a3e5df5c7b45cb581309a1fd99d1e1828e09a4dd9b6440f" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:86a619f7716e84a0157870f0e0fada22230f1209d2e3dafea4944be809d28ac5" [label="/bin/sh -c npm install" shape="box"];
  "sha256:ed1892e3aa102f8999e0ec8bf339ac5bced01e1576aea69ce925438c54f388bc" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:d7e49a1a42c3fb1ea5f010328d353df19dfe73198978b6dfa3b5328ebdcd363a" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:6833be8b82bca68d08bb3f4d670400db349690150301281a8d96b990cc8206b4" [label="sha256:6833be8b82bca68d08bb3f4d670400db349690150301281a8d96b990cc8206b4" shape="plaintext"];
  "sha256:135ced71077a4b103c76e95959888e303523ca647dfb9582684c3cf2adbdfede" -> "sha256:2613168c190910f822ebdfc30be0879f658c640358085c46ec9f1fa9702115dc" [label=""];
  "sha256:2613168c190910f822ebdfc30be0879f658c640358085c46ec9f1fa9702115dc" -> "sha256:c68a3731db7470b484229a80e16b600141c3c04ca70f0e3398b63f9fe3fd9fcd" [label=""];
  "sha256:c68a3731db7470b484229a80e16b600141c3c04ca70f0e3398b63f9fe3fd9fcd" -> "sha256:f067ae453de0bbf24a3e5df5c7b45cb581309a1fd99d1e1828e09a4dd9b6440f" [label=""];
  "sha256:ee7ca13685db564c3cfac0fc20e4e6f8bf7f8fe2fb5c17d8feb396f68f4f012f" -> "sha256:f067ae453de0bbf24a3e5df5c7b45cb581309a1fd99d1e1828e09a4dd9b6440f" [label=""];
  "sha256:f067ae453de0bbf24a3e5df5c7b45cb581309a1fd99d1e1828e09a4dd9b6440f" -> "sha256:86a619f7716e84a0157870f0e0fada22230f1209d2e3dafea4944be809d28ac5" [label=""];
  "sha256:86a619f7716e84a0157870f0e0fada22230f1209d2e3dafea4944be809d28ac5" -> "sha256:ed1892e3aa102f8999e0ec8bf339ac5bced01e1576aea69ce925438c54f388bc" [label=""];
  "sha256:ee7ca13685db564c3cfac0fc20e4e6f8bf7f8fe2fb5c17d8feb396f68f4f012f" -> "sha256:ed1892e3aa102f8999e0ec8bf339ac5bced01e1576aea69ce925438c54f388bc" [label=""];
  "sha256:ed1892e3aa102f8999e0ec8bf339ac5bced01e1576aea69ce925438c54f388bc" -> "sha256:d7e49a1a42c3fb1ea5f010328d353df19dfe73198978b6dfa3b5328ebdcd363a" [label=""];
  "sha256:d7e49a1a42c3fb1ea5f010328d353df19dfe73198978b6dfa3b5328ebdcd363a" -> "sha256:6833be8b82bca68d08bb3f4d670400db349690150301281a8d96b990cc8206b4" [label=""];
}

