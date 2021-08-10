[app/sources/232019023.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:bfd06abacc493ff623a545e52283fec50cf16d6124398244276cbf52a119ec11" [label="local://context" shape="ellipse"];
  "sha256:8d9821fab6e458ba78a02120a667a3bc5f3502fbf07a42e951d0cef7c3bcddd2" [label="copy{src=/install.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:7cff1f22785129ed54f4c6781d2482c6180847313c76f8f615f00ff0a7064657" [label="/bin/sh -c /usr/local/bin/install.sh" shape="box"];
  "sha256:1585b1143d0f217f4a1b8e5f8fabcc96039101e3897748c09622ccecd5a68d3e" [label="copy{src=/init.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:d6d1b33c3e521ed14cddc1212476a57efec75d7b539178acf8e03dc4e7bc6a42" [label="copy{src=/index.html, dest=/tmp/}" shape="note"];
  "sha256:c0faa6e4cd2eeb85647cbb358919638fe38bc5fabada55df52a7a399f53ef306" [label="/bin/sh -c chmod 644 /tmp/index.html" shape="box"];
  "sha256:4d81c13bc98ac085f0d4277fa0d7d5580c33a52bb1574671bf97db7b8837c91e" [label="sha256:4d81c13bc98ac085f0d4277fa0d7d5580c33a52bb1574671bf97db7b8837c91e" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:8d9821fab6e458ba78a02120a667a3bc5f3502fbf07a42e951d0cef7c3bcddd2" [label=""];
  "sha256:bfd06abacc493ff623a545e52283fec50cf16d6124398244276cbf52a119ec11" -> "sha256:8d9821fab6e458ba78a02120a667a3bc5f3502fbf07a42e951d0cef7c3bcddd2" [label=""];
  "sha256:8d9821fab6e458ba78a02120a667a3bc5f3502fbf07a42e951d0cef7c3bcddd2" -> "sha256:7cff1f22785129ed54f4c6781d2482c6180847313c76f8f615f00ff0a7064657" [label=""];
  "sha256:7cff1f22785129ed54f4c6781d2482c6180847313c76f8f615f00ff0a7064657" -> "sha256:1585b1143d0f217f4a1b8e5f8fabcc96039101e3897748c09622ccecd5a68d3e" [label=""];
  "sha256:bfd06abacc493ff623a545e52283fec50cf16d6124398244276cbf52a119ec11" -> "sha256:1585b1143d0f217f4a1b8e5f8fabcc96039101e3897748c09622ccecd5a68d3e" [label=""];
  "sha256:1585b1143d0f217f4a1b8e5f8fabcc96039101e3897748c09622ccecd5a68d3e" -> "sha256:d6d1b33c3e521ed14cddc1212476a57efec75d7b539178acf8e03dc4e7bc6a42" [label=""];
  "sha256:bfd06abacc493ff623a545e52283fec50cf16d6124398244276cbf52a119ec11" -> "sha256:d6d1b33c3e521ed14cddc1212476a57efec75d7b539178acf8e03dc4e7bc6a42" [label=""];
  "sha256:d6d1b33c3e521ed14cddc1212476a57efec75d7b539178acf8e03dc4e7bc6a42" -> "sha256:c0faa6e4cd2eeb85647cbb358919638fe38bc5fabada55df52a7a399f53ef306" [label=""];
  "sha256:c0faa6e4cd2eeb85647cbb358919638fe38bc5fabada55df52a7a399f53ef306" -> "sha256:4d81c13bc98ac085f0d4277fa0d7d5580c33a52bb1574671bf97db7b8837c91e" [label=""];
}

