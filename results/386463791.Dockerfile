[app/sources/386463791.Dockerfile]
digraph {
  "sha256:b8cece3255f39886e1c74dbf27b5513333b94f7ce2f5ce50c658402e61a6fa0e" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:e1ffec4adf70c1ba56bf90154fac47a6915ea14adca15166cbd2d4e833455ddb" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:9fc10009ee4dd78fd241e79733398be9831c10b99d360ba35fca75f0d9c4b34a" [label="mkdir{path=/code}" shape="note"];
  "sha256:c8af39b103f1641a482762b0eff802e8c623b9c397467b2f09253f3873fcd13a" [label="copy{src=/prod_requirements.txt, dest=/code}" shape="note"];
  "sha256:6fb7d90832588aa8bb4708e42baadf5245f6a93b61e12da6099a847e4b2ca027" [label="copy{src=/requirements.txt, dest=/code}" shape="note"];
  "sha256:4ff061267fd2d82fc2aac69883712656dac3e0a9e7272e4174075da7b80780da" [label="/bin/sh -c pip install -r prod_requirements.txt" shape="box"];
  "sha256:594c57b6ec7b335a2c86c948b7d14d7f330429f9ac0b6be8c7e099b7b143437b" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:69123c4e2aeca460f113ca0f4be99306e320d4947c77592f357431cd83f7ae5f" [label="sha256:69123c4e2aeca460f113ca0f4be99306e320d4947c77592f357431cd83f7ae5f" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:e1ffec4adf70c1ba56bf90154fac47a6915ea14adca15166cbd2d4e833455ddb" [label=""];
  "sha256:e1ffec4adf70c1ba56bf90154fac47a6915ea14adca15166cbd2d4e833455ddb" -> "sha256:9fc10009ee4dd78fd241e79733398be9831c10b99d360ba35fca75f0d9c4b34a" [label=""];
  "sha256:9fc10009ee4dd78fd241e79733398be9831c10b99d360ba35fca75f0d9c4b34a" -> "sha256:c8af39b103f1641a482762b0eff802e8c623b9c397467b2f09253f3873fcd13a" [label=""];
  "sha256:b8cece3255f39886e1c74dbf27b5513333b94f7ce2f5ce50c658402e61a6fa0e" -> "sha256:c8af39b103f1641a482762b0eff802e8c623b9c397467b2f09253f3873fcd13a" [label=""];
  "sha256:c8af39b103f1641a482762b0eff802e8c623b9c397467b2f09253f3873fcd13a" -> "sha256:6fb7d90832588aa8bb4708e42baadf5245f6a93b61e12da6099a847e4b2ca027" [label=""];
  "sha256:b8cece3255f39886e1c74dbf27b5513333b94f7ce2f5ce50c658402e61a6fa0e" -> "sha256:6fb7d90832588aa8bb4708e42baadf5245f6a93b61e12da6099a847e4b2ca027" [label=""];
  "sha256:6fb7d90832588aa8bb4708e42baadf5245f6a93b61e12da6099a847e4b2ca027" -> "sha256:4ff061267fd2d82fc2aac69883712656dac3e0a9e7272e4174075da7b80780da" [label=""];
  "sha256:4ff061267fd2d82fc2aac69883712656dac3e0a9e7272e4174075da7b80780da" -> "sha256:594c57b6ec7b335a2c86c948b7d14d7f330429f9ac0b6be8c7e099b7b143437b" [label=""];
  "sha256:b8cece3255f39886e1c74dbf27b5513333b94f7ce2f5ce50c658402e61a6fa0e" -> "sha256:594c57b6ec7b335a2c86c948b7d14d7f330429f9ac0b6be8c7e099b7b143437b" [label=""];
  "sha256:594c57b6ec7b335a2c86c948b7d14d7f330429f9ac0b6be8c7e099b7b143437b" -> "sha256:69123c4e2aeca460f113ca0f4be99306e320d4947c77592f357431cd83f7ae5f" [label=""];
}

