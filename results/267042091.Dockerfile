[app/sources/267042091.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:d69d93bd16f5d9bbfa07b72c2c8bde26632d2bc56b64744da7c716cc67c51647" [label="mkdir{path=/quizzes}" shape="note"];
  "sha256:c47f77f3da634c18a7b91efdd7a3b2b9e05247eee2f7b66804fe33f1d885c537" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     gcc     g++     gfortran     cmake     pkg-config     unzip     git     wget     cppad     python-matplotlib     python2.7-dev" shape="box"];
  "sha256:970399ca26b19545412a46371f67064d4d14e77ea7d59b6d33d9cf349f0c5a54" [label="local://context" shape="ellipse"];
  "sha256:330861d5dcc4510149952c6f1bba250fcfd609489b24445891f32fc5e6014082" [label="copy{src=/install_ipopt.sh, dest=/quizzes/}" shape="note"];
  "sha256:e4e4c2a00969deb8ccf83b16cbe5133b5d62f5a05ba3ed86442f05cb76712abd" [label="/bin/sh -c wget https://www.coin-or.org/download/source/Ipopt/Ipopt-3.12.7.zip && unzip Ipopt-3.12.7.zip && rm Ipopt-3.12.7.zip" shape="box"];
  "sha256:30adee7f53596cbeea9a6a2ab2cbf8698e3143a491b7c19413155ef9b8d3a461" [label="/bin/sh -c bash install_ipopt.sh Ipopt-3.12.7" shape="box"];
  "sha256:aeecc8d56d1f8933f0722a468a7a9d1388067df92192d9cce187ef5ca713de24" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9d72d39ad5f167b8f45e3efd15967c52ab47b45327a6e4f3a6e4c985779a2d74" [label="sha256:9d72d39ad5f167b8f45e3efd15967c52ab47b45327a6e4f3a6e4c985779a2d74" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:d69d93bd16f5d9bbfa07b72c2c8bde26632d2bc56b64744da7c716cc67c51647" [label=""];
  "sha256:d69d93bd16f5d9bbfa07b72c2c8bde26632d2bc56b64744da7c716cc67c51647" -> "sha256:c47f77f3da634c18a7b91efdd7a3b2b9e05247eee2f7b66804fe33f1d885c537" [label=""];
  "sha256:c47f77f3da634c18a7b91efdd7a3b2b9e05247eee2f7b66804fe33f1d885c537" -> "sha256:330861d5dcc4510149952c6f1bba250fcfd609489b24445891f32fc5e6014082" [label=""];
  "sha256:970399ca26b19545412a46371f67064d4d14e77ea7d59b6d33d9cf349f0c5a54" -> "sha256:330861d5dcc4510149952c6f1bba250fcfd609489b24445891f32fc5e6014082" [label=""];
  "sha256:330861d5dcc4510149952c6f1bba250fcfd609489b24445891f32fc5e6014082" -> "sha256:e4e4c2a00969deb8ccf83b16cbe5133b5d62f5a05ba3ed86442f05cb76712abd" [label=""];
  "sha256:e4e4c2a00969deb8ccf83b16cbe5133b5d62f5a05ba3ed86442f05cb76712abd" -> "sha256:30adee7f53596cbeea9a6a2ab2cbf8698e3143a491b7c19413155ef9b8d3a461" [label=""];
  "sha256:30adee7f53596cbeea9a6a2ab2cbf8698e3143a491b7c19413155ef9b8d3a461" -> "sha256:aeecc8d56d1f8933f0722a468a7a9d1388067df92192d9cce187ef5ca713de24" [label=""];
  "sha256:aeecc8d56d1f8933f0722a468a7a9d1388067df92192d9cce187ef5ca713de24" -> "sha256:9d72d39ad5f167b8f45e3efd15967c52ab47b45327a6e4f3a6e4c985779a2d74" [label=""];
}

