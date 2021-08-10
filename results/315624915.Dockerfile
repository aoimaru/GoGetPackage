[app/sources/315624915.Dockerfile]
digraph {
  "sha256:c6c90fcb694562bd047fd9c4d86a57d3add3bdb293e7ae19dda39fb144ead5f1" [label="docker-image://docker.io/library/python:3.7.1-alpine3.8" shape="ellipse"];
  "sha256:69a0a074291f7befd550aace7b42da1daf3d564da46d875524ca0b25bcd1f746" [label="local://context" shape="ellipse"];
  "sha256:f73e9522d64746cc755906f2ccfdd687c88d6803199ad309052e1ba5f8d9cf36" [label="copy{src=/presidio-analyzer/Pipfile, dest=/usr/bin/presidio-analyzer/Pipfile}" shape="note"];
  "sha256:0ab0a5abb427a222a6afbb11acc27b482f56521614703ce7819d936e92f7634f" [label="copy{src=/presidio-analyzer/Pipfile.lock, dest=/usr/bin/presidio-analyzer/Pipfile.lock}" shape="note"];
  "sha256:864a40e05a5df9b2fa7f2e671952b8cdf4138b5056de038e4ed6e8a4d38b36d6" [label="mkdir{path=/usr/bin/presidio-analyzer}" shape="note"];
  "sha256:49f7a16faad4db28cd05b62f82c72feb67d266ed3db3405069891e362251bae1" [label="/bin/sh -c apk --update add --no-cache g++ &&     apk --update add --no-cache --virtual build_deps make tar wget clang &&     wget -O re2.tar.gz https://github.com/google/re2/archive/${re2_version}.tar.gz &&     mkdir re2 && tar --extract --file \"re2.tar.gz\" --directory \"re2\" --strip-components 1 &&     cd re2 && make install && cd .. && rm -rf re2 && rm re2.tar.gz &&     apk add --virtual build_deps make automake gcc g++ subversion python3-dev" shape="box"];
  "sha256:e7aea1f5ec55990446e273d108acf585a282d7028218f1d528011b6cc4510a1b" [label="/bin/sh -c pip3 install pipenv" shape="box"];
  "sha256:0eefc8e3c2a7d11c043400a6d509896e60bce25d78c9fbb87518d7d489abfc48" [label="/bin/sh -c pip3 install --upgrade setuptools" shape="box"];
  "sha256:f6a0f95bc56dc2aff37ff20d9e4f5c92205775fc708d26d0882c723997b51820" [label="/bin/sh -c pipenv sync" shape="box"];
  "sha256:59daeea30f99a8067a1505be1f278d5a895253ea1d90dc550784beef985f4fe8" [label="/bin/sh -c pipenv run pip freeze" shape="box"];
  "sha256:2e3ccf056dfb2b7946838ef2071fee660dcf134ab11f06e725e3b07ea8ace688" [label="/bin/sh -c apk del build_deps" shape="box"];
  "sha256:12a25a43199fceb2eba164be91374ab123b53b5bc5027a98295876d4d39d174d" [label="sha256:12a25a43199fceb2eba164be91374ab123b53b5bc5027a98295876d4d39d174d" shape="plaintext"];
  "sha256:c6c90fcb694562bd047fd9c4d86a57d3add3bdb293e7ae19dda39fb144ead5f1" -> "sha256:f73e9522d64746cc755906f2ccfdd687c88d6803199ad309052e1ba5f8d9cf36" [label=""];
  "sha256:69a0a074291f7befd550aace7b42da1daf3d564da46d875524ca0b25bcd1f746" -> "sha256:f73e9522d64746cc755906f2ccfdd687c88d6803199ad309052e1ba5f8d9cf36" [label=""];
  "sha256:f73e9522d64746cc755906f2ccfdd687c88d6803199ad309052e1ba5f8d9cf36" -> "sha256:0ab0a5abb427a222a6afbb11acc27b482f56521614703ce7819d936e92f7634f" [label=""];
  "sha256:69a0a074291f7befd550aace7b42da1daf3d564da46d875524ca0b25bcd1f746" -> "sha256:0ab0a5abb427a222a6afbb11acc27b482f56521614703ce7819d936e92f7634f" [label=""];
  "sha256:0ab0a5abb427a222a6afbb11acc27b482f56521614703ce7819d936e92f7634f" -> "sha256:864a40e05a5df9b2fa7f2e671952b8cdf4138b5056de038e4ed6e8a4d38b36d6" [label=""];
  "sha256:864a40e05a5df9b2fa7f2e671952b8cdf4138b5056de038e4ed6e8a4d38b36d6" -> "sha256:49f7a16faad4db28cd05b62f82c72feb67d266ed3db3405069891e362251bae1" [label=""];
  "sha256:49f7a16faad4db28cd05b62f82c72feb67d266ed3db3405069891e362251bae1" -> "sha256:e7aea1f5ec55990446e273d108acf585a282d7028218f1d528011b6cc4510a1b" [label=""];
  "sha256:e7aea1f5ec55990446e273d108acf585a282d7028218f1d528011b6cc4510a1b" -> "sha256:0eefc8e3c2a7d11c043400a6d509896e60bce25d78c9fbb87518d7d489abfc48" [label=""];
  "sha256:0eefc8e3c2a7d11c043400a6d509896e60bce25d78c9fbb87518d7d489abfc48" -> "sha256:f6a0f95bc56dc2aff37ff20d9e4f5c92205775fc708d26d0882c723997b51820" [label=""];
  "sha256:f6a0f95bc56dc2aff37ff20d9e4f5c92205775fc708d26d0882c723997b51820" -> "sha256:59daeea30f99a8067a1505be1f278d5a895253ea1d90dc550784beef985f4fe8" [label=""];
  "sha256:59daeea30f99a8067a1505be1f278d5a895253ea1d90dc550784beef985f4fe8" -> "sha256:2e3ccf056dfb2b7946838ef2071fee660dcf134ab11f06e725e3b07ea8ace688" [label=""];
  "sha256:2e3ccf056dfb2b7946838ef2071fee660dcf134ab11f06e725e3b07ea8ace688" -> "sha256:12a25a43199fceb2eba164be91374ab123b53b5bc5027a98295876d4d39d174d" [label=""];
}

