[app/sources/472703901.Dockerfile]
digraph {
  "sha256:dc6ddfdee6e726fbf5edc27f7302078bed80c1e47cdcabcd2c953de69e55b9ff" [label="docker-image://docker.io/openresty/openresty:alpine" shape="ellipse"];
  "sha256:c8d068bf137be117f769dcec745ff1d16c8bd7f1d54ec39770f571c51a2072f0" [label="local://context" shape="ellipse"];
  "sha256:9310eb8f41859d8954e07fcde29f00ff2ad7fafb05b2786bb73aeecfc1fbb6ac" [label="copy{src=/nginx.conf, dest=/usr/local/openresty/nginx/conf/}" shape="note"];
  "sha256:de46f5604b293ba4e7fa568a9b18fe6d4e75aacfe66bcc31fe379f35c77b85a5" [label="copy{src=/*.vhost, dest=/usr/local/openresty/nginx/conf/}" shape="note"];
  "sha256:8f3e7b8f80d81e78623b785617171a0b72b5608bd731dfd56cd5358f1174c101" [label="copy{src=/lib/prometheus.lua, dest=/usr/local/openresty/luajit/lib}" shape="note"];
  "sha256:0051b696ce134c3fa6a1514e88cda62fe2f69bdab71b8724ccafb006e8b354a9" [label="/bin/sh -c nginx -t" shape="box"];
  "sha256:9e9b4ac6e244affec070ea11203f4bfdb67083ddea97567f79b70b1c6e6b5590" [label="sha256:9e9b4ac6e244affec070ea11203f4bfdb67083ddea97567f79b70b1c6e6b5590" shape="plaintext"];
  "sha256:dc6ddfdee6e726fbf5edc27f7302078bed80c1e47cdcabcd2c953de69e55b9ff" -> "sha256:9310eb8f41859d8954e07fcde29f00ff2ad7fafb05b2786bb73aeecfc1fbb6ac" [label=""];
  "sha256:c8d068bf137be117f769dcec745ff1d16c8bd7f1d54ec39770f571c51a2072f0" -> "sha256:9310eb8f41859d8954e07fcde29f00ff2ad7fafb05b2786bb73aeecfc1fbb6ac" [label=""];
  "sha256:9310eb8f41859d8954e07fcde29f00ff2ad7fafb05b2786bb73aeecfc1fbb6ac" -> "sha256:de46f5604b293ba4e7fa568a9b18fe6d4e75aacfe66bcc31fe379f35c77b85a5" [label=""];
  "sha256:c8d068bf137be117f769dcec745ff1d16c8bd7f1d54ec39770f571c51a2072f0" -> "sha256:de46f5604b293ba4e7fa568a9b18fe6d4e75aacfe66bcc31fe379f35c77b85a5" [label=""];
  "sha256:de46f5604b293ba4e7fa568a9b18fe6d4e75aacfe66bcc31fe379f35c77b85a5" -> "sha256:8f3e7b8f80d81e78623b785617171a0b72b5608bd731dfd56cd5358f1174c101" [label=""];
  "sha256:c8d068bf137be117f769dcec745ff1d16c8bd7f1d54ec39770f571c51a2072f0" -> "sha256:8f3e7b8f80d81e78623b785617171a0b72b5608bd731dfd56cd5358f1174c101" [label=""];
  "sha256:8f3e7b8f80d81e78623b785617171a0b72b5608bd731dfd56cd5358f1174c101" -> "sha256:0051b696ce134c3fa6a1514e88cda62fe2f69bdab71b8724ccafb006e8b354a9" [label=""];
  "sha256:0051b696ce134c3fa6a1514e88cda62fe2f69bdab71b8724ccafb006e8b354a9" -> "sha256:9e9b4ac6e244affec070ea11203f4bfdb67083ddea97567f79b70b1c6e6b5590" [label=""];
}

