[app/sources/252767062.Dockerfile]
digraph {
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" [label="docker-image://docker.io/library/ubuntu:14.10" shape="ellipse"];
  "sha256:ad93300a6a93f573b127a059698b014f567e47ae3257c2f8c4d448d3e0cd0284" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:6fcf2328727299d14bd30029d0b7ff4ccc96a3cb7c741bbdc1ad998e79d29256" [label="/bin/sh -c apt-get install -y python python-dev python-pip python-psycopg2" shape="box"];
  "sha256:d6279ccd90200e5caa4768ee91186910db87ebcfe309452932ac61068f01a68f" [label="/bin/sh -c apt-get install -y nginx supervisor" shape="box"];
  "sha256:70ce2345a1dea6f71577709cf12343c252ea57a35312c57f74131848a7b0ff89" [label="local://context" shape="ellipse"];
  "sha256:e5a5165137962168e0c6c9701596c62a761bc317e845f3f62ffed6febcfd9ab5" [label="copy{src=/requirements.txt, dest=/code/requirements.txt}" shape="note"];
  "sha256:0d1bff2b9c04b3157f7de218f74b8b75be73619e3ce612c1f34eeca831025d3f" [label="/bin/sh -c pip install -r /code/requirements.txt" shape="box"];
  "sha256:b20949d8d61dd52fd9e69d48cfcf997357148b08d869d745bce8d72d77d6b68d" [label="mkdir{path=/code}" shape="note"];
  "sha256:0007a5ba4f798d4d7df9fda24572fae781859fa5846e92dbc86fb1686b1c94fc" [label="sha256:0007a5ba4f798d4d7df9fda24572fae781859fa5846e92dbc86fb1686b1c94fc" shape="plaintext"];
  "sha256:8cffeadf199a60a7b1e1b499ce43985e780c07f053a14b444c52cfbf23474fd5" -> "sha256:ad93300a6a93f573b127a059698b014f567e47ae3257c2f8c4d448d3e0cd0284" [label=""];
  "sha256:ad93300a6a93f573b127a059698b014f567e47ae3257c2f8c4d448d3e0cd0284" -> "sha256:6fcf2328727299d14bd30029d0b7ff4ccc96a3cb7c741bbdc1ad998e79d29256" [label=""];
  "sha256:6fcf2328727299d14bd30029d0b7ff4ccc96a3cb7c741bbdc1ad998e79d29256" -> "sha256:d6279ccd90200e5caa4768ee91186910db87ebcfe309452932ac61068f01a68f" [label=""];
  "sha256:d6279ccd90200e5caa4768ee91186910db87ebcfe309452932ac61068f01a68f" -> "sha256:e5a5165137962168e0c6c9701596c62a761bc317e845f3f62ffed6febcfd9ab5" [label=""];
  "sha256:70ce2345a1dea6f71577709cf12343c252ea57a35312c57f74131848a7b0ff89" -> "sha256:e5a5165137962168e0c6c9701596c62a761bc317e845f3f62ffed6febcfd9ab5" [label=""];
  "sha256:e5a5165137962168e0c6c9701596c62a761bc317e845f3f62ffed6febcfd9ab5" -> "sha256:0d1bff2b9c04b3157f7de218f74b8b75be73619e3ce612c1f34eeca831025d3f" [label=""];
  "sha256:0d1bff2b9c04b3157f7de218f74b8b75be73619e3ce612c1f34eeca831025d3f" -> "sha256:b20949d8d61dd52fd9e69d48cfcf997357148b08d869d745bce8d72d77d6b68d" [label=""];
  "sha256:b20949d8d61dd52fd9e69d48cfcf997357148b08d869d745bce8d72d77d6b68d" -> "sha256:0007a5ba4f798d4d7df9fda24572fae781859fa5846e92dbc86fb1686b1c94fc" [label=""];
}

