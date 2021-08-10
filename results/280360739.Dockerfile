[app/sources/280360739.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:75f85960eac3065441f8facb76ee7078b11bc3b25311be016372175067ea8156" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends                python-paramiko                python-pip                python-pycurl                python-dev                build-essential &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ceb1a1cc2050d8c59913b0d3482f2bce9ef87c51782a5e38ceef4bd6cefedfa1" [label="/bin/sh -c pip install ansible                 markupsafe                 boto                 boto3" shape="box"];
  "sha256:2a062a627d18d1aab2a3522182ab6f6292093e367e1e6553d74e46e775f761c1" [label="sha256:2a062a627d18d1aab2a3522182ab6f6292093e367e1e6553d74e46e775f761c1" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:75f85960eac3065441f8facb76ee7078b11bc3b25311be016372175067ea8156" [label=""];
  "sha256:75f85960eac3065441f8facb76ee7078b11bc3b25311be016372175067ea8156" -> "sha256:ceb1a1cc2050d8c59913b0d3482f2bce9ef87c51782a5e38ceef4bd6cefedfa1" [label=""];
  "sha256:ceb1a1cc2050d8c59913b0d3482f2bce9ef87c51782a5e38ceef4bd6cefedfa1" -> "sha256:2a062a627d18d1aab2a3522182ab6f6292093e367e1e6553d74e46e775f761c1" [label=""];
}

