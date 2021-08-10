[app/sources/196477920.Dockerfile]
digraph {
  "sha256:1cb513cd999b6f6af9e52d8ae7b8228adec0744617f88490301fbcd53009f8cc" [label="docker-image://docker.io/bddk/base-hadoop:latest" shape="ellipse"];
  "sha256:d61050680589e4ddf2798a3983f0b3c7d908328aee561c64c6b9dbef470df85f" [label="mkdir{path=/app}" shape="note"];
  "sha256:df52e6f5c438c18ee00643e657b11122711b3dfdc9eb93bcfdd5ade2c4453841" [label="local://context" shape="ellipse"];
  "sha256:b23d9eba3c55e6220b00134cad4ea2ab3edb11e081aa66bc53e5103cc493ed17" [label="copy{src=/start-hadoop.sh, dest=/app/hadoop/}" shape="note"];
  "sha256:c241f54eaabddcfc6424433fd20e1c90c0d4194af03a3dce8ae236548ff11047" [label="/bin/sh -c echo \"export JAVA_HOME=/usr\" >>/app/hadoop/etc/hadoop/hadoop-env.sh" shape="box"];
  "sha256:2a5d7c55615f44cab1cb84256cf11f343974b57fbe3b1eb05a64e95d6f04cef7" [label="copy{src=/*.xml, dest=/app/hadoop/etc/hadoop/}" shape="note"];
  "sha256:3af14c115e254546e755d842a8a7b1214b34b23819f33154e0feaa6770a098cf" [label="/bin/sh -c /app/hadoop/bin/hdfs namenode -format" shape="box"];
  "sha256:e08bc222a31bbb22a4f70ceef8db6c06104394580ec39f4e7975e0c668d5162b" [label="sha256:e08bc222a31bbb22a4f70ceef8db6c06104394580ec39f4e7975e0c668d5162b" shape="plaintext"];
  "sha256:1cb513cd999b6f6af9e52d8ae7b8228adec0744617f88490301fbcd53009f8cc" -> "sha256:d61050680589e4ddf2798a3983f0b3c7d908328aee561c64c6b9dbef470df85f" [label=""];
  "sha256:d61050680589e4ddf2798a3983f0b3c7d908328aee561c64c6b9dbef470df85f" -> "sha256:b23d9eba3c55e6220b00134cad4ea2ab3edb11e081aa66bc53e5103cc493ed17" [label=""];
  "sha256:df52e6f5c438c18ee00643e657b11122711b3dfdc9eb93bcfdd5ade2c4453841" -> "sha256:b23d9eba3c55e6220b00134cad4ea2ab3edb11e081aa66bc53e5103cc493ed17" [label=""];
  "sha256:b23d9eba3c55e6220b00134cad4ea2ab3edb11e081aa66bc53e5103cc493ed17" -> "sha256:c241f54eaabddcfc6424433fd20e1c90c0d4194af03a3dce8ae236548ff11047" [label=""];
  "sha256:c241f54eaabddcfc6424433fd20e1c90c0d4194af03a3dce8ae236548ff11047" -> "sha256:2a5d7c55615f44cab1cb84256cf11f343974b57fbe3b1eb05a64e95d6f04cef7" [label=""];
  "sha256:df52e6f5c438c18ee00643e657b11122711b3dfdc9eb93bcfdd5ade2c4453841" -> "sha256:2a5d7c55615f44cab1cb84256cf11f343974b57fbe3b1eb05a64e95d6f04cef7" [label=""];
  "sha256:2a5d7c55615f44cab1cb84256cf11f343974b57fbe3b1eb05a64e95d6f04cef7" -> "sha256:3af14c115e254546e755d842a8a7b1214b34b23819f33154e0feaa6770a098cf" [label=""];
  "sha256:3af14c115e254546e755d842a8a7b1214b34b23819f33154e0feaa6770a098cf" -> "sha256:e08bc222a31bbb22a4f70ceef8db6c06104394580ec39f4e7975e0c668d5162b" [label=""];
}

