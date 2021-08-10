[app/sources/252800195.Dockerfile]
digraph {
  "sha256:7fa3f81bb6fa6e91e2188155005469ed9f5576ba568e7c9a6c8aaffe2c44ff31" [label="docker-image://docker.io/library/ruby:2.4.2" shape="ellipse"];
  "sha256:02f43d680bd93a892955e642855ed5e5013e67edbfe8293250d943dee4b8c69d" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential" shape="box"];
  "sha256:0be056fbd2742281a039639d24f16c9a18341bb76b2f0c0325c6326a2e217767" [label="/bin/sh -c apt-get install -y libxml2-dev libxslt1-dev" shape="box"];
  "sha256:9cd7ed91bf6f93f3844ef4c17edad9cea53dd407d12029ada3ef32ca5aac4fef" [label="/bin/sh -c apt-get install -y libqt4-webkit libqt4-dev xvfb" shape="box"];
  "sha256:81b5cb3c6eb2a59974d9212307898c8ae630424cc898160f5c3bf1f8e9cdfb32" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:09f45cf8ada4ed5e9f3ea67bd1bdf3a8fc5e3bdebfaad6ebad4a35a9de2f9da4" [label="/bin/sh -c mkdir /usr/app" shape="box"];
  "sha256:3e70e38e7e3fe0a9f02f511029f090ee5453d38b97adacee4efc72a54a8ffd81" [label="mkdir{path=/usr/app}" shape="note"];
  "sha256:a88066babbac00949a2edd532c54cc812ed8cf28e43bcb451f9f812f68ad157b" [label="sha256:a88066babbac00949a2edd532c54cc812ed8cf28e43bcb451f9f812f68ad157b" shape="plaintext"];
  "sha256:7fa3f81bb6fa6e91e2188155005469ed9f5576ba568e7c9a6c8aaffe2c44ff31" -> "sha256:02f43d680bd93a892955e642855ed5e5013e67edbfe8293250d943dee4b8c69d" [label=""];
  "sha256:02f43d680bd93a892955e642855ed5e5013e67edbfe8293250d943dee4b8c69d" -> "sha256:0be056fbd2742281a039639d24f16c9a18341bb76b2f0c0325c6326a2e217767" [label=""];
  "sha256:0be056fbd2742281a039639d24f16c9a18341bb76b2f0c0325c6326a2e217767" -> "sha256:9cd7ed91bf6f93f3844ef4c17edad9cea53dd407d12029ada3ef32ca5aac4fef" [label=""];
  "sha256:9cd7ed91bf6f93f3844ef4c17edad9cea53dd407d12029ada3ef32ca5aac4fef" -> "sha256:81b5cb3c6eb2a59974d9212307898c8ae630424cc898160f5c3bf1f8e9cdfb32" [label=""];
  "sha256:81b5cb3c6eb2a59974d9212307898c8ae630424cc898160f5c3bf1f8e9cdfb32" -> "sha256:09f45cf8ada4ed5e9f3ea67bd1bdf3a8fc5e3bdebfaad6ebad4a35a9de2f9da4" [label=""];
  "sha256:09f45cf8ada4ed5e9f3ea67bd1bdf3a8fc5e3bdebfaad6ebad4a35a9de2f9da4" -> "sha256:3e70e38e7e3fe0a9f02f511029f090ee5453d38b97adacee4efc72a54a8ffd81" [label=""];
  "sha256:3e70e38e7e3fe0a9f02f511029f090ee5453d38b97adacee4efc72a54a8ffd81" -> "sha256:a88066babbac00949a2edd532c54cc812ed8cf28e43bcb451f9f812f68ad157b" [label=""];
}

