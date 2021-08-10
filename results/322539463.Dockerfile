[app/sources/322539463.Dockerfile]
digraph {
  "sha256:81e2c3d776fdbb44feb489f7e2873bc502b6cb4bcc83eea9236b3e08ba351f9b" [label="docker-image://docker.io/barretthugh/qa-base:latest" shape="ellipse"];
  "sha256:ca84e2c05ab6227e8163c74efef53bf26a2907f1ccd5b660b657c35a996c584f" [label="local://context" shape="ellipse"];
  "sha256:a1fa22321a9474feaa4098a81b3773d3cccf6555823d29200ec0c0aeeddb19d3" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:443df5617e5cfb1095cb3ce5eca747c0bf35731a8ff4cfa20f0d34e018eb47c7" [label="mkdir{path=/home}" shape="note"];
  "sha256:117b2b4cd61e282a251e6df8e1ca1c0d76cde06f8f659e7b3ea97c9e40b8cf17" [label="/bin/sh -c pip install git+https://github.com/yutiansut/tornado_http2 \t&& pip install quantaxis_webserver \t&& chmod +x /entrypoint.sh" shape="box"];
  "sha256:da7d5d8a1412adbf0df72ab7c70c4bbe37e9e623518802586f267f29a59eefa7" [label="sha256:da7d5d8a1412adbf0df72ab7c70c4bbe37e9e623518802586f267f29a59eefa7" shape="plaintext"];
  "sha256:81e2c3d776fdbb44feb489f7e2873bc502b6cb4bcc83eea9236b3e08ba351f9b" -> "sha256:a1fa22321a9474feaa4098a81b3773d3cccf6555823d29200ec0c0aeeddb19d3" [label=""];
  "sha256:ca84e2c05ab6227e8163c74efef53bf26a2907f1ccd5b660b657c35a996c584f" -> "sha256:a1fa22321a9474feaa4098a81b3773d3cccf6555823d29200ec0c0aeeddb19d3" [label=""];
  "sha256:a1fa22321a9474feaa4098a81b3773d3cccf6555823d29200ec0c0aeeddb19d3" -> "sha256:443df5617e5cfb1095cb3ce5eca747c0bf35731a8ff4cfa20f0d34e018eb47c7" [label=""];
  "sha256:443df5617e5cfb1095cb3ce5eca747c0bf35731a8ff4cfa20f0d34e018eb47c7" -> "sha256:117b2b4cd61e282a251e6df8e1ca1c0d76cde06f8f659e7b3ea97c9e40b8cf17" [label=""];
  "sha256:117b2b4cd61e282a251e6df8e1ca1c0d76cde06f8f659e7b3ea97c9e40b8cf17" -> "sha256:da7d5d8a1412adbf0df72ab7c70c4bbe37e9e623518802586f267f29a59eefa7" [label=""];
}

