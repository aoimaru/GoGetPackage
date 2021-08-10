[app/sources/360359889.Dockerfile]
digraph {
  "sha256:aa52629d49ffea064839fc0c1320996368e89d61e2390920733c7ee1fcd9893b" [label="docker-image://docker.io/instructure/java:8-xenial" shape="ellipse"];
  "sha256:99caf3d5827462b722a75e0836d2f2a35b4bc9029cf33959d9eae9f73a9e48d5" [label="/bin/sh -c echo 'deb https://dl.bintray.com/sbt/debian /' > /etc/apt/sources.list.d/sbt.list &&     apt-key adv --keyserver hkp://keyserver.ubuntu.com:80       --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823" shape="box"];
  "sha256:faa300f69215fd859967df5b17b0893626499b347e166f5c384c78f6adebd78a" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends bc sbt=$SBT_VERSION &&     apt-get clean autoremove -y &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.sbt /root/.ivy2" shape="box"];
  "sha256:fd64689ebf4dfb3cca5c22d2dd5be79f1096239805a02c666e15093026f936fa" [label="local://context" shape="ellipse"];
  "sha256:bb36c25fe99d742c4ee05e764e319483d22d77567d3aab44f1e46455b16e1d13" [label="copy{src=/sbt-private, dest=/usr/local/bin}" shape="note"];
  "sha256:cf48b6ad9dc0867b3068514a3eadfe0410cda9ba46fd28b01bc911ee0d53f17d" [label="/bin/sh -c chmod 755 /usr/local/bin/sbt-private &&     mkdir -p /usr/src/app &&     chown docker:docker /usr/src/app" shape="box"];
  "sha256:fcc29c990e245888912edb4dcf64f4cd3b0a17eb805f4e8dc8f5202fcdef59ee" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2bbf8886f8e8e0256674ffc9e042ac08370c6f2f3da091fb99bf014635eddff9" [label="sha256:2bbf8886f8e8e0256674ffc9e042ac08370c6f2f3da091fb99bf014635eddff9" shape="plaintext"];
  "sha256:aa52629d49ffea064839fc0c1320996368e89d61e2390920733c7ee1fcd9893b" -> "sha256:99caf3d5827462b722a75e0836d2f2a35b4bc9029cf33959d9eae9f73a9e48d5" [label=""];
  "sha256:99caf3d5827462b722a75e0836d2f2a35b4bc9029cf33959d9eae9f73a9e48d5" -> "sha256:faa300f69215fd859967df5b17b0893626499b347e166f5c384c78f6adebd78a" [label=""];
  "sha256:faa300f69215fd859967df5b17b0893626499b347e166f5c384c78f6adebd78a" -> "sha256:bb36c25fe99d742c4ee05e764e319483d22d77567d3aab44f1e46455b16e1d13" [label=""];
  "sha256:fd64689ebf4dfb3cca5c22d2dd5be79f1096239805a02c666e15093026f936fa" -> "sha256:bb36c25fe99d742c4ee05e764e319483d22d77567d3aab44f1e46455b16e1d13" [label=""];
  "sha256:bb36c25fe99d742c4ee05e764e319483d22d77567d3aab44f1e46455b16e1d13" -> "sha256:cf48b6ad9dc0867b3068514a3eadfe0410cda9ba46fd28b01bc911ee0d53f17d" [label=""];
  "sha256:cf48b6ad9dc0867b3068514a3eadfe0410cda9ba46fd28b01bc911ee0d53f17d" -> "sha256:fcc29c990e245888912edb4dcf64f4cd3b0a17eb805f4e8dc8f5202fcdef59ee" [label=""];
  "sha256:fcc29c990e245888912edb4dcf64f4cd3b0a17eb805f4e8dc8f5202fcdef59ee" -> "sha256:2bbf8886f8e8e0256674ffc9e042ac08370c6f2f3da091fb99bf014635eddff9" [label=""];
}

