[app/sources/347993344.Dockerfile]
digraph {
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" [label="docker-image://docker.io/library/openjdk:8u181-jre" shape="ellipse"];
  "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" [label="mkdir{path=/root}" shape="note"];
  "sha256:dbcfa6258edd57dadb08ebf825b77088b36c80f02499c7d4781474a36269759b" [label="local://context" shape="ellipse"];
  "sha256:80c14dd4e46d57f35e72dedf118e895711b0f2ffb22af0606b6a8f95435a5c43" [label="copy{src=/destination/james-server-cassandra-ldap-guice.jar, dest=/root/james-server.jar}" shape="note"];
  "sha256:5df81585c4973cb39fcdf2115efddc4a747da27963ce0f77097efff7cbf58eab" [label="copy{src=/destination/james-server-cassandra-ldap-guice.lib, dest=/root/james-server-cassandra-ldap-guice.lib}" shape="note"];
  "sha256:c905afd8228f3b0c0ad4ce7818af117c7564347a9ed4ef63a7b773a878bfbe09" [label="copy{src=/destination/james-server-cli.jar, dest=/root/james-cli.jar}" shape="note"];
  "sha256:534128ad84d075d8a8799bc408b3b0ea07e2e2fe72c5e594fa4ffa8eff13f76d" [label="copy{src=/destination/james-server-cli.lib, dest=/root/james-server-cli.lib}" shape="note"];
  "sha256:13654648e344d8790ba4b3670fd18c8ef2194528cf2db72e4643c499a04bdbe2" [label="copy{src=/destination/conf, dest=/root/conf}" shape="note"];
  "sha256:96d7bc3fc207a656e4dde8b728d8eec6a0e1c0da0ceb3025d13b7ee625e1ee0e" [label="sha256:96d7bc3fc207a656e4dde8b728d8eec6a0e1c0da0ceb3025d13b7ee625e1ee0e" shape="plaintext"];
  "sha256:0b41384f373f390555bc8c647554052e06ffe6a185741503eceb297c952ccca2" -> "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" [label=""];
  "sha256:583b92cb6901f4978a8a36ebcbd901136eb62ae36ca9212c5b87e4cb93e4f78a" -> "sha256:80c14dd4e46d57f35e72dedf118e895711b0f2ffb22af0606b6a8f95435a5c43" [label=""];
  "sha256:dbcfa6258edd57dadb08ebf825b77088b36c80f02499c7d4781474a36269759b" -> "sha256:80c14dd4e46d57f35e72dedf118e895711b0f2ffb22af0606b6a8f95435a5c43" [label=""];
  "sha256:80c14dd4e46d57f35e72dedf118e895711b0f2ffb22af0606b6a8f95435a5c43" -> "sha256:5df81585c4973cb39fcdf2115efddc4a747da27963ce0f77097efff7cbf58eab" [label=""];
  "sha256:dbcfa6258edd57dadb08ebf825b77088b36c80f02499c7d4781474a36269759b" -> "sha256:5df81585c4973cb39fcdf2115efddc4a747da27963ce0f77097efff7cbf58eab" [label=""];
  "sha256:5df81585c4973cb39fcdf2115efddc4a747da27963ce0f77097efff7cbf58eab" -> "sha256:c905afd8228f3b0c0ad4ce7818af117c7564347a9ed4ef63a7b773a878bfbe09" [label=""];
  "sha256:dbcfa6258edd57dadb08ebf825b77088b36c80f02499c7d4781474a36269759b" -> "sha256:c905afd8228f3b0c0ad4ce7818af117c7564347a9ed4ef63a7b773a878bfbe09" [label=""];
  "sha256:c905afd8228f3b0c0ad4ce7818af117c7564347a9ed4ef63a7b773a878bfbe09" -> "sha256:534128ad84d075d8a8799bc408b3b0ea07e2e2fe72c5e594fa4ffa8eff13f76d" [label=""];
  "sha256:dbcfa6258edd57dadb08ebf825b77088b36c80f02499c7d4781474a36269759b" -> "sha256:534128ad84d075d8a8799bc408b3b0ea07e2e2fe72c5e594fa4ffa8eff13f76d" [label=""];
  "sha256:534128ad84d075d8a8799bc408b3b0ea07e2e2fe72c5e594fa4ffa8eff13f76d" -> "sha256:13654648e344d8790ba4b3670fd18c8ef2194528cf2db72e4643c499a04bdbe2" [label=""];
  "sha256:dbcfa6258edd57dadb08ebf825b77088b36c80f02499c7d4781474a36269759b" -> "sha256:13654648e344d8790ba4b3670fd18c8ef2194528cf2db72e4643c499a04bdbe2" [label=""];
  "sha256:13654648e344d8790ba4b3670fd18c8ef2194528cf2db72e4643c499a04bdbe2" -> "sha256:96d7bc3fc207a656e4dde8b728d8eec6a0e1c0da0ceb3025d13b7ee625e1ee0e" [label=""];
}

