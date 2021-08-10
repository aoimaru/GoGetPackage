[app/sources/243131709.Dockerfile]
digraph {
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" [label="docker-image://docker.io/ppc64le/ubuntu:16.04" shape="ellipse"];
  "sha256:7c2fdb4c4414fe6833392e41e8dac1b94ac617e53fb603865c5c131f62ec1a23" [label="/bin/sh -c apt-get update -y &&     apt-get install -y openjdk-8-jdk wget autoconf libtool curl         make unzip zip git g++ &&     export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-ppc64el &&     export JRE_HOME=${JAVA_HOME}/jre &&     export PATH=${JAVA_HOME}/bin:$PATH &&     wdir=`pwd` &&     mkdir bazel && cd bazel &&     wget https://github.com/bazelbuild/bazel/releases/download/0.4.5/bazel-0.4.5-dist.zip &&     unzip bazel-0.4.5-dist.zip && rm bazel-0.4.5-dist.zip &&     ./compile.sh &&     export PATH=$PATH:$wdir/bazel/output &&     apt-get purge -y wget autoconf libtool curl make unzip zip git g++ &&     apt-get -y autoremove" shape="box"];
  "sha256:1babcf108e6c02ee59acc9d5fb149dc27b417fb9773a03483def7bd3a53e5f7b" [label="sha256:1babcf108e6c02ee59acc9d5fb149dc27b417fb9773a03483def7bd3a53e5f7b" shape="plaintext"];
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" -> "sha256:7c2fdb4c4414fe6833392e41e8dac1b94ac617e53fb603865c5c131f62ec1a23" [label=""];
  "sha256:7c2fdb4c4414fe6833392e41e8dac1b94ac617e53fb603865c5c131f62ec1a23" -> "sha256:1babcf108e6c02ee59acc9d5fb149dc27b417fb9773a03483def7bd3a53e5f7b" [label=""];
}

