[app/sources/441843281.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:55253c496bf867f1682cf30e6b44ac6dbfe76d4f68f677dbca1d5071313ee9c9" [label="mkdir{path=/app}" shape="note"];
  "sha256:8446a336cfe1154558c11302cfca9b698e1885eab262b8d0957dbc37b6b564fa" [label="local://context" shape="ellipse"];
  "sha256:af2614371bd5dd5b860e2ac4c3e465dcc25ba5cca691585966824d005e2a2f77" [label="copy{src=/webhooks.py, dest=/app/webhooks.py}" shape="note"];
  "sha256:a132cc3fded97ce638386578fa9765580f288f57f336b1b5b0abc3a323f470ce" [label="copy{src=/config.json.sample, dest=/app/config.json}" shape="note"];
  "sha256:ef35995657d5d915a7438cfcf13404c7f2d5556fb14d68ea24b75c9cd12a3040" [label="copy{src=/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:1d428dec70d040b7cbe2406cb01acd10efd9222ab2f2d7dd6a516a4d1786b993" [label="copy{src=/hooks, dest=/app/hooks}" shape="note"];
  "sha256:6cd440d5cf4163268dd00a6f740c8c0e0ccdf27f42943b9503c70e98c93ef588" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:7b5c6cbe0204bf9406d07778d150ae0af827dbcea2f94e2beea25e72c696c96c" [label="sha256:7b5c6cbe0204bf9406d07778d150ae0af827dbcea2f94e2beea25e72c696c96c" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:55253c496bf867f1682cf30e6b44ac6dbfe76d4f68f677dbca1d5071313ee9c9" [label=""];
  "sha256:55253c496bf867f1682cf30e6b44ac6dbfe76d4f68f677dbca1d5071313ee9c9" -> "sha256:af2614371bd5dd5b860e2ac4c3e465dcc25ba5cca691585966824d005e2a2f77" [label=""];
  "sha256:8446a336cfe1154558c11302cfca9b698e1885eab262b8d0957dbc37b6b564fa" -> "sha256:af2614371bd5dd5b860e2ac4c3e465dcc25ba5cca691585966824d005e2a2f77" [label=""];
  "sha256:af2614371bd5dd5b860e2ac4c3e465dcc25ba5cca691585966824d005e2a2f77" -> "sha256:a132cc3fded97ce638386578fa9765580f288f57f336b1b5b0abc3a323f470ce" [label=""];
  "sha256:8446a336cfe1154558c11302cfca9b698e1885eab262b8d0957dbc37b6b564fa" -> "sha256:a132cc3fded97ce638386578fa9765580f288f57f336b1b5b0abc3a323f470ce" [label=""];
  "sha256:a132cc3fded97ce638386578fa9765580f288f57f336b1b5b0abc3a323f470ce" -> "sha256:ef35995657d5d915a7438cfcf13404c7f2d5556fb14d68ea24b75c9cd12a3040" [label=""];
  "sha256:8446a336cfe1154558c11302cfca9b698e1885eab262b8d0957dbc37b6b564fa" -> "sha256:ef35995657d5d915a7438cfcf13404c7f2d5556fb14d68ea24b75c9cd12a3040" [label=""];
  "sha256:ef35995657d5d915a7438cfcf13404c7f2d5556fb14d68ea24b75c9cd12a3040" -> "sha256:1d428dec70d040b7cbe2406cb01acd10efd9222ab2f2d7dd6a516a4d1786b993" [label=""];
  "sha256:8446a336cfe1154558c11302cfca9b698e1885eab262b8d0957dbc37b6b564fa" -> "sha256:1d428dec70d040b7cbe2406cb01acd10efd9222ab2f2d7dd6a516a4d1786b993" [label=""];
  "sha256:1d428dec70d040b7cbe2406cb01acd10efd9222ab2f2d7dd6a516a4d1786b993" -> "sha256:6cd440d5cf4163268dd00a6f740c8c0e0ccdf27f42943b9503c70e98c93ef588" [label=""];
  "sha256:6cd440d5cf4163268dd00a6f740c8c0e0ccdf27f42943b9503c70e98c93ef588" -> "sha256:7b5c6cbe0204bf9406d07778d150ae0af827dbcea2f94e2beea25e72c696c96c" [label=""];
}

