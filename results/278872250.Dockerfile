[app/sources/278872250.Dockerfile]
digraph {
  "sha256:aae8774c714aea67fc9f97394f5229bdf9e6c39cce618df1bbd6d8d4e72fc57a" [label="local://context" shape="ellipse"];
  "sha256:d7f2f58708b05cf15bde3b494da1786369bd9548ad993121f9bb08f8bd3ea6f1" [label="docker-image://docker.io/openliberty/open-liberty:kernel" shape="ellipse"];
  "sha256:af433eee2dcd7def53b7a33a48684151689039a6aa21cc32c3e28d45e448327e" [label="copy{src=/target/liberty/wlp/usr/servers/groupServer, dest=/config}" shape="note"];
  "sha256:a3e4f86389b3107787f6f64af2c2402b9750db0f93d60ad6fe48a0c5196920b3" [label="copy{src=/target/liberty/wlp/usr/shared, dest=/opt/ol/wlp/usr/shared}" shape="note"];
  "sha256:9000f039a8cdd48eb7ef112b48b2fba52528cc0bcd4f0c0c879a2eec5d174a74" [label="/bin/sh -c sed -i -e 's/httpEndpoint/httpEndpoint host=\"*\"/g' /config/server.xml" shape="box"];
  "sha256:02c0db4577f2948c95b9d90c2bb28802d4d8c3146909aa0eae315fbfccbf40b5" [label="sha256:02c0db4577f2948c95b9d90c2bb28802d4d8c3146909aa0eae315fbfccbf40b5" shape="plaintext"];
  "sha256:d7f2f58708b05cf15bde3b494da1786369bd9548ad993121f9bb08f8bd3ea6f1" -> "sha256:af433eee2dcd7def53b7a33a48684151689039a6aa21cc32c3e28d45e448327e" [label=""];
  "sha256:aae8774c714aea67fc9f97394f5229bdf9e6c39cce618df1bbd6d8d4e72fc57a" -> "sha256:af433eee2dcd7def53b7a33a48684151689039a6aa21cc32c3e28d45e448327e" [label=""];
  "sha256:af433eee2dcd7def53b7a33a48684151689039a6aa21cc32c3e28d45e448327e" -> "sha256:a3e4f86389b3107787f6f64af2c2402b9750db0f93d60ad6fe48a0c5196920b3" [label=""];
  "sha256:aae8774c714aea67fc9f97394f5229bdf9e6c39cce618df1bbd6d8d4e72fc57a" -> "sha256:a3e4f86389b3107787f6f64af2c2402b9750db0f93d60ad6fe48a0c5196920b3" [label=""];
  "sha256:a3e4f86389b3107787f6f64af2c2402b9750db0f93d60ad6fe48a0c5196920b3" -> "sha256:9000f039a8cdd48eb7ef112b48b2fba52528cc0bcd4f0c0c879a2eec5d174a74" [label=""];
  "sha256:9000f039a8cdd48eb7ef112b48b2fba52528cc0bcd4f0c0c879a2eec5d174a74" -> "sha256:02c0db4577f2948c95b9d90c2bb28802d4d8c3146909aa0eae315fbfccbf40b5" [label=""];
}

