[app/sources/255735686.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:34a7d3498e5ab4c4a755d75537aab252d3c7c54f4e932c56c0bc65be3d8f9817" [label="/bin/sh -c yum install -y     java-1.8.0-openjdk-headless   && yum clean all" shape="box"];
  "sha256:b904db647ca328e526f760ebb5131386ca9d2e0295d05e6f0fa5c9188b26804c" [label="mkdir{path=/opt/generated-api}" shape="note"];
  "sha256:ce3e7a1a19dbd5d6e4f3027cb906ab9bba3014cf16ef90a433c39292e3c44de4" [label="local://context" shape="ellipse"];
  "sha256:a95475ce04fd51b2b43619d18ab0199d66a0f010be666e36c61f25d721620183" [label="copy{src=/target/generated-api-swarm.jar, dest=/opt/generated-api}" shape="note"];
  "sha256:06586f12bc37b3a91a4f37a8fa46d9e33dd981497ae6391b4608e4f446cc8753" [label="/bin/sh -c groupadd -r duser -g 1001     && useradd -u 1001 -r -g duser -d /opt/generated-api/ -s /sbin/nologin -c \"Docker image user\" duser     && chown -R duser:duser /opt/generated-api/     && chgrp -R 0 /opt/generated-api && chmod -R g=u /opt/generated-api" shape="box"];
  "sha256:803b8e75bbdee591526ec0904c92242fd93b4599342b665271ee210692c0fd5a" [label="sha256:803b8e75bbdee591526ec0904c92242fd93b4599342b665271ee210692c0fd5a" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:34a7d3498e5ab4c4a755d75537aab252d3c7c54f4e932c56c0bc65be3d8f9817" [label=""];
  "sha256:34a7d3498e5ab4c4a755d75537aab252d3c7c54f4e932c56c0bc65be3d8f9817" -> "sha256:b904db647ca328e526f760ebb5131386ca9d2e0295d05e6f0fa5c9188b26804c" [label=""];
  "sha256:b904db647ca328e526f760ebb5131386ca9d2e0295d05e6f0fa5c9188b26804c" -> "sha256:a95475ce04fd51b2b43619d18ab0199d66a0f010be666e36c61f25d721620183" [label=""];
  "sha256:ce3e7a1a19dbd5d6e4f3027cb906ab9bba3014cf16ef90a433c39292e3c44de4" -> "sha256:a95475ce04fd51b2b43619d18ab0199d66a0f010be666e36c61f25d721620183" [label=""];
  "sha256:a95475ce04fd51b2b43619d18ab0199d66a0f010be666e36c61f25d721620183" -> "sha256:06586f12bc37b3a91a4f37a8fa46d9e33dd981497ae6391b4608e4f446cc8753" [label=""];
  "sha256:06586f12bc37b3a91a4f37a8fa46d9e33dd981497ae6391b4608e4f446cc8753" -> "sha256:803b8e75bbdee591526ec0904c92242fd93b4599342b665271ee210692c0fd5a" [label=""];
}

