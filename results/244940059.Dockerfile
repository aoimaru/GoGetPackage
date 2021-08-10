[app/sources/244940059.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:858e1549e68e57ebb2dfa33697f61ca66925bcfb23fc7d6ab3df1b65e34cc4f6" [label="local://context" shape="ellipse"];
  "sha256:2717ee2214e565fab836ac381ffe0413e60647af92f92b0477e7af0a2ae931db" [label="copy{src=/install/cpp.sh, dest=/install/}" shape="note"];
  "sha256:6e14213dcef77b143715ca4a665af36b92f55277086a7a08ca031345d1c82212" [label="/bin/sh -c install/cpp.sh" shape="box"];
  "sha256:7f3b89e752333e0959f92305f26ae53e77fc53f4e966d501ceb4569705e6778f" [label="/bin/sh -c git clone --recursive https://github.com/dmlc/mxnet && cd mxnet &&     make -j$(nproc) &&     rm -r build" shape="box"];
  "sha256:9c4a6a681c6e89982fcff14f8b22711cbd4b53ba9ce653a4d0ded3e7e326776e" [label="sha256:9c4a6a681c6e89982fcff14f8b22711cbd4b53ba9ce653a4d0ded3e7e326776e" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:2717ee2214e565fab836ac381ffe0413e60647af92f92b0477e7af0a2ae931db" [label=""];
  "sha256:858e1549e68e57ebb2dfa33697f61ca66925bcfb23fc7d6ab3df1b65e34cc4f6" -> "sha256:2717ee2214e565fab836ac381ffe0413e60647af92f92b0477e7af0a2ae931db" [label=""];
  "sha256:2717ee2214e565fab836ac381ffe0413e60647af92f92b0477e7af0a2ae931db" -> "sha256:6e14213dcef77b143715ca4a665af36b92f55277086a7a08ca031345d1c82212" [label=""];
  "sha256:6e14213dcef77b143715ca4a665af36b92f55277086a7a08ca031345d1c82212" -> "sha256:7f3b89e752333e0959f92305f26ae53e77fc53f4e966d501ceb4569705e6778f" [label=""];
  "sha256:7f3b89e752333e0959f92305f26ae53e77fc53f4e966d501ceb4569705e6778f" -> "sha256:9c4a6a681c6e89982fcff14f8b22711cbd4b53ba9ce653a4d0ded3e7e326776e" [label=""];
}

