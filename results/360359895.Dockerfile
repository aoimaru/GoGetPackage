[app/sources/360359895.Dockerfile]
digraph {
  "sha256:aa52629d49ffea064839fc0c1320996368e89d61e2390920733c7ee1fcd9893b" [label="docker-image://docker.io/instructure/java:8-xenial" shape="ellipse"];
  "sha256:1dc198b4cc5ac52cc2be476913f51ddea0c207adcc23efc73179b70a2a87f85e" [label="/bin/sh -c curl --silent          --show-error          --location          --retry 3          \"http://archive.apache.org/dist/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz\" |     tar -xz -C /usr/ &&     rm -rf $HADOOP_HOME/share/doc &&     chown -R docker:docker $HADOOP_HOME" shape="box"];
  "sha256:51cad74c4ab7e52c729b2d14e7642bc314a4ea42ff2b7371fe925f1b2bca05cb" [label="/bin/sh -c curl --silent          --show-error          --location          --retry 3         \"http://d3kbcqa49mib13.cloudfront.net/${SPARK_PACKAGE}.tgz\" |     tar -xz -C /usr/ &&     mv /usr/$SPARK_PACKAGE $SPARK_HOME &&     chown -R docker:docker $SPARK_HOME" shape="box"];
  "sha256:9e6a0192a035513f68c64042e0fd3e85a58c49942514bb04eb784c1101923c9e" [label="mkdir{path=/usr/spark-2.1.0}" shape="note"];
  "sha256:1e8baf5039e1e12750f397636cd8a3d3cc0bcae8ed6501b06197a41eba3c655d" [label="sha256:1e8baf5039e1e12750f397636cd8a3d3cc0bcae8ed6501b06197a41eba3c655d" shape="plaintext"];
  "sha256:aa52629d49ffea064839fc0c1320996368e89d61e2390920733c7ee1fcd9893b" -> "sha256:1dc198b4cc5ac52cc2be476913f51ddea0c207adcc23efc73179b70a2a87f85e" [label=""];
  "sha256:1dc198b4cc5ac52cc2be476913f51ddea0c207adcc23efc73179b70a2a87f85e" -> "sha256:51cad74c4ab7e52c729b2d14e7642bc314a4ea42ff2b7371fe925f1b2bca05cb" [label=""];
  "sha256:51cad74c4ab7e52c729b2d14e7642bc314a4ea42ff2b7371fe925f1b2bca05cb" -> "sha256:9e6a0192a035513f68c64042e0fd3e85a58c49942514bb04eb784c1101923c9e" [label=""];
  "sha256:9e6a0192a035513f68c64042e0fd3e85a58c49942514bb04eb784c1101923c9e" -> "sha256:1e8baf5039e1e12750f397636cd8a3d3cc0bcae8ed6501b06197a41eba3c655d" [label=""];
}

