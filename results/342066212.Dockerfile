[app/sources/342066212.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:6c1b4f70225784dc8c5b583c874bd0b2944f38704f637d720c351cfdd02d4d3c" [label="local://context" shape="ellipse"];
  "sha256:4b6f4a082d2212a25a4a7f1b14030dafffdc44daa74ac921f1081ac923aaec61" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:fb9db42d676b0c6abce563443c8d2f971a4a09a17c35c4b114c0a6ebd86f5281" [label="pip install gevent" shape="box"];
  "sha256:5e63aa51c65fd6dcc054aa4ac758f64f18431ac27be145d35120846cb16c5f5f" [label="pip install gevent" shape="box"];
  "sha256:478ca2627d5577513a225c07dac8591006de0bec47412dc106edb3eb8221ebf5" [label="sha256:478ca2627d5577513a225c07dac8591006de0bec47412dc106edb3eb8221ebf5" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:4b6f4a082d2212a25a4a7f1b14030dafffdc44daa74ac921f1081ac923aaec61" [label=""];
  "sha256:6c1b4f70225784dc8c5b583c874bd0b2944f38704f637d720c351cfdd02d4d3c" -> "sha256:4b6f4a082d2212a25a4a7f1b14030dafffdc44daa74ac921f1081ac923aaec61" [label=""];
  "sha256:4b6f4a082d2212a25a4a7f1b14030dafffdc44daa74ac921f1081ac923aaec61" -> "sha256:fb9db42d676b0c6abce563443c8d2f971a4a09a17c35c4b114c0a6ebd86f5281" [label=""];
  "sha256:fb9db42d676b0c6abce563443c8d2f971a4a09a17c35c4b114c0a6ebd86f5281" -> "sha256:5e63aa51c65fd6dcc054aa4ac758f64f18431ac27be145d35120846cb16c5f5f" [label=""];
  "sha256:5e63aa51c65fd6dcc054aa4ac758f64f18431ac27be145d35120846cb16c5f5f" -> "sha256:478ca2627d5577513a225c07dac8591006de0bec47412dc106edb3eb8221ebf5" [label=""];
}

