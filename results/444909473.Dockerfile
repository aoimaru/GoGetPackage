[app/sources/444909473.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:bd330f4d0c338bb7bb2e9f8460af6a648ea5eaead883cee722fc6c711f86f94b" [label="/bin/sh -c curl -L http://mir01.syntis.net/epel/6/x86_64/epel-release-6-8.noarch.rpm -o epel-release.noarch.rpm" shape="box"];
  "sha256:379180aba6052b3719587c914e4fc373c62f03286edfdad132d15eafcf8fcab8" [label="/bin/sh -c rpm -Uvh epel-release.noarch.rpm" shape="box"];
  "sha256:96e342179dc954d9486badda7be0c7500d702b985227d91583fa0ed12707a54a" [label="/bin/sh -c rm -f epel-release.noarch.rpm" shape="box"];
  "sha256:7ab3f6041573166ee13476103f3c7858e5792b789c1e0bff30d546bcbd6adc6d" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:ac94aba0753fb10f3b6daf4bd2ce247465eefcbf96bd207eb5b42033953c63d5" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:2b61d3b8c3f207f5748c0d9380cce05d5cdfebb901bc0d03df4f065b099e99db" [label="/bin/sh -c yum install unzip -y" shape="box"];
  "sha256:11bd461dd2b1ad3fc6cf309521c3f0dd0ec51a4b868fcb7eb2046406861af6d5" [label="/bin/sh -c curl -j -k -L -H \"Cookie: oraclelicense=accept-securebackup-cookie\" http://download.oracle.com/otn-pub/java/jdk/${JAVA_FULLVERSION}/jdk-${JAVA_VERSION}-linux-x64.rpm -o jdk-linux-x64.rpm" shape="box"];
  "sha256:59921e5281a92fb5c9f70fd3e2357bb36b83e6c3bf5735fe21b7c55234e3fda6" [label="/bin/sh -c rpm -Uvh jdk-linux-x64.rpm" shape="box"];
  "sha256:afef27c57ffb36d65474ebf026be7576f2aa222b5a814f7269d46b1d66ec524a" [label="/bin/sh -c rm jdk-linux-x64.rpm" shape="box"];
  "sha256:4eb37e924229226192bd0ee7fb15e35d25e4241b93770d0694805d91cf6a5b96" [label="/bin/sh -c curl -L -v http://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts/${GATLING_VERSION}/gatling-charts-highcharts-${GATLING_VERSION}-bundle.zip -o gatling-charts-highcharts-${GATLING_VERSION}-bundle.zip" shape="box"];
  "sha256:4cd3727c587478aabac2688b4d2a505e8af40780717a2d353425816941aab966" [label="/bin/sh -c unzip gatling-charts-highcharts-${GATLING_VERSION}-bundle.zip" shape="box"];
  "sha256:936af3aef1924350e870ad3443b037e917d16c3c9d5ef930fe0eb035e584d58f" [label="/bin/sh -c rm -f gatling-charts-highcharts-${GATLING_VERSION}-bundle.zip" shape="box"];
  "sha256:d71c8e8db7643fb7a7b95983974ec4610a4fe3fa5d172cd98eab27343333c661" [label="/bin/sh -c mv gatling-charts-highcharts-${GATLING_VERSION} /opt/gatling" shape="box"];
  "sha256:bf8300cef4de8aa4f9e0ca052ae2f2e447ab1ec06516d716da13bf83550c9c85" [label="sha256:bf8300cef4de8aa4f9e0ca052ae2f2e447ab1ec06516d716da13bf83550c9c85" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:bd330f4d0c338bb7bb2e9f8460af6a648ea5eaead883cee722fc6c711f86f94b" [label=""];
  "sha256:bd330f4d0c338bb7bb2e9f8460af6a648ea5eaead883cee722fc6c711f86f94b" -> "sha256:379180aba6052b3719587c914e4fc373c62f03286edfdad132d15eafcf8fcab8" [label=""];
  "sha256:379180aba6052b3719587c914e4fc373c62f03286edfdad132d15eafcf8fcab8" -> "sha256:96e342179dc954d9486badda7be0c7500d702b985227d91583fa0ed12707a54a" [label=""];
  "sha256:96e342179dc954d9486badda7be0c7500d702b985227d91583fa0ed12707a54a" -> "sha256:7ab3f6041573166ee13476103f3c7858e5792b789c1e0bff30d546bcbd6adc6d" [label=""];
  "sha256:7ab3f6041573166ee13476103f3c7858e5792b789c1e0bff30d546bcbd6adc6d" -> "sha256:ac94aba0753fb10f3b6daf4bd2ce247465eefcbf96bd207eb5b42033953c63d5" [label=""];
  "sha256:ac94aba0753fb10f3b6daf4bd2ce247465eefcbf96bd207eb5b42033953c63d5" -> "sha256:2b61d3b8c3f207f5748c0d9380cce05d5cdfebb901bc0d03df4f065b099e99db" [label=""];
  "sha256:2b61d3b8c3f207f5748c0d9380cce05d5cdfebb901bc0d03df4f065b099e99db" -> "sha256:11bd461dd2b1ad3fc6cf309521c3f0dd0ec51a4b868fcb7eb2046406861af6d5" [label=""];
  "sha256:11bd461dd2b1ad3fc6cf309521c3f0dd0ec51a4b868fcb7eb2046406861af6d5" -> "sha256:59921e5281a92fb5c9f70fd3e2357bb36b83e6c3bf5735fe21b7c55234e3fda6" [label=""];
  "sha256:59921e5281a92fb5c9f70fd3e2357bb36b83e6c3bf5735fe21b7c55234e3fda6" -> "sha256:afef27c57ffb36d65474ebf026be7576f2aa222b5a814f7269d46b1d66ec524a" [label=""];
  "sha256:afef27c57ffb36d65474ebf026be7576f2aa222b5a814f7269d46b1d66ec524a" -> "sha256:4eb37e924229226192bd0ee7fb15e35d25e4241b93770d0694805d91cf6a5b96" [label=""];
  "sha256:4eb37e924229226192bd0ee7fb15e35d25e4241b93770d0694805d91cf6a5b96" -> "sha256:4cd3727c587478aabac2688b4d2a505e8af40780717a2d353425816941aab966" [label=""];
  "sha256:4cd3727c587478aabac2688b4d2a505e8af40780717a2d353425816941aab966" -> "sha256:936af3aef1924350e870ad3443b037e917d16c3c9d5ef930fe0eb035e584d58f" [label=""];
  "sha256:936af3aef1924350e870ad3443b037e917d16c3c9d5ef930fe0eb035e584d58f" -> "sha256:d71c8e8db7643fb7a7b95983974ec4610a4fe3fa5d172cd98eab27343333c661" [label=""];
  "sha256:d71c8e8db7643fb7a7b95983974ec4610a4fe3fa5d172cd98eab27343333c661" -> "sha256:bf8300cef4de8aa4f9e0ca052ae2f2e447ab1ec06516d716da13bf83550c9c85" [label=""];
}

