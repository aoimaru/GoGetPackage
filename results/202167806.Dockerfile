[app/sources/202167806.Dockerfile]
digraph {
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" [label="docker-image://docker.io/library/java:latest" shape="ellipse"];
  "sha256:5620bd02a68612e1ce37a7380f6e0515bc7eff4bc0c93605d12f7c0ea36937a4" [label="/bin/sh -c curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -" shape="box"];
  "sha256:35705c9c2727efddb981e455fecdcf977a77765ce5247fec095e36cf2c4a9868" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:6c06e1fd09ab74a7f362c9195c7b7a35f138c28008e199cd0163e50e9d56982e" [label="/bin/sh -c apt-get install -y build-essential" shape="box"];
  "sha256:279110c2d28fa50415825318339ad77126b9ebe09cdbe3a21813a4dc1f96af94" [label="/bin/sh -c npm install -g bower" shape="box"];
  "sha256:9ae59f4a33cfe2a4bb0edbe4bfd1c99d415c26367138364fbfee5e1923e56097" [label="/bin/sh -c npm install -g gulp" shape="box"];
  "sha256:c35804845d27076a9bd156318b92379b706a80a4a2aba498eb52c6deb7cbc0a6" [label="local://context" shape="ellipse"];
  "sha256:215873dfbaa2abad209c50097de8aae5d36431b925b7e3bd1641ba2615fd0565" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:d15eb57092b8852fbe4e20a5b8538ff82afa79d1bdc03b661b5eb624ac3b4e5f" [label="mkdir{path=/code}" shape="note"];
  "sha256:8a768d7d4e88b3822f58aaa07ffe32bac9ef2f89b5672f845ed2937e705c6399" [label="sha256:8a768d7d4e88b3822f58aaa07ffe32bac9ef2f89b5672f845ed2937e705c6399" shape="plaintext"];
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" -> "sha256:5620bd02a68612e1ce37a7380f6e0515bc7eff4bc0c93605d12f7c0ea36937a4" [label=""];
  "sha256:5620bd02a68612e1ce37a7380f6e0515bc7eff4bc0c93605d12f7c0ea36937a4" -> "sha256:35705c9c2727efddb981e455fecdcf977a77765ce5247fec095e36cf2c4a9868" [label=""];
  "sha256:35705c9c2727efddb981e455fecdcf977a77765ce5247fec095e36cf2c4a9868" -> "sha256:6c06e1fd09ab74a7f362c9195c7b7a35f138c28008e199cd0163e50e9d56982e" [label=""];
  "sha256:6c06e1fd09ab74a7f362c9195c7b7a35f138c28008e199cd0163e50e9d56982e" -> "sha256:279110c2d28fa50415825318339ad77126b9ebe09cdbe3a21813a4dc1f96af94" [label=""];
  "sha256:279110c2d28fa50415825318339ad77126b9ebe09cdbe3a21813a4dc1f96af94" -> "sha256:9ae59f4a33cfe2a4bb0edbe4bfd1c99d415c26367138364fbfee5e1923e56097" [label=""];
  "sha256:9ae59f4a33cfe2a4bb0edbe4bfd1c99d415c26367138364fbfee5e1923e56097" -> "sha256:215873dfbaa2abad209c50097de8aae5d36431b925b7e3bd1641ba2615fd0565" [label=""];
  "sha256:c35804845d27076a9bd156318b92379b706a80a4a2aba498eb52c6deb7cbc0a6" -> "sha256:215873dfbaa2abad209c50097de8aae5d36431b925b7e3bd1641ba2615fd0565" [label=""];
  "sha256:215873dfbaa2abad209c50097de8aae5d36431b925b7e3bd1641ba2615fd0565" -> "sha256:d15eb57092b8852fbe4e20a5b8538ff82afa79d1bdc03b661b5eb624ac3b4e5f" [label=""];
  "sha256:d15eb57092b8852fbe4e20a5b8538ff82afa79d1bdc03b661b5eb624ac3b4e5f" -> "sha256:8a768d7d4e88b3822f58aaa07ffe32bac9ef2f89b5672f845ed2937e705c6399" [label=""];
}

