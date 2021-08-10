[app/sources/243134102.Dockerfile]
digraph {
  "sha256:9d349d0cb2176d9a65138b25497c59d189ee50bac4d7745b0fda2d961f66911d" [label="docker-image://docker.io/ppc64le/r-base:latest" shape="ellipse"];
  "sha256:5d2a6a72105f85573d99630d972a81eb0f85fad14c0d8bf67cfa7271c4548c8f" [label="/bin/sh -c apt-get update         && apt-get install git -y         && git clone https://github.com/cran/tables.git         && cd tables && git checkout 0.8.3         && R -e 'install.packages(\"tables\",dependencies= TRUE,repos=\"http://cran.rstudio.com/\")'         && cd .. && rm -rf tables         && apt-get purge --auto-remove git -y" shape="box"];
  "sha256:a55c721bbb1a2842a288033261e8f328519a6f52dbe8c7552e8b1a22c7d94b4c" [label="sha256:a55c721bbb1a2842a288033261e8f328519a6f52dbe8c7552e8b1a22c7d94b4c" shape="plaintext"];
  "sha256:9d349d0cb2176d9a65138b25497c59d189ee50bac4d7745b0fda2d961f66911d" -> "sha256:5d2a6a72105f85573d99630d972a81eb0f85fad14c0d8bf67cfa7271c4548c8f" [label=""];
  "sha256:5d2a6a72105f85573d99630d972a81eb0f85fad14c0d8bf67cfa7271c4548c8f" -> "sha256:a55c721bbb1a2842a288033261e8f328519a6f52dbe8c7552e8b1a22c7d94b4c" [label=""];
}

