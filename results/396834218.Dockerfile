[app/sources/396834218.Dockerfile]
digraph {
  "sha256:0bdbd2586cea19f8870cead10a86a9a7c906c7965b8aefdd1c7b1f93e8345898" [label="docker-image://docker.io/anapsix/alpine-java:8_server-jre_unlimited" shape="ellipse"];
  "sha256:f84d13d5ca9cdd42b7f8defe0600c96a951bae2886c46c47cdeb67479814e605" [label="/bin/sh -c mkdir -p /blade/user" shape="box"];
  "sha256:e0ee2f5d0ff843e9fa8377ea6bde0d83eecc09101cbd9956814273e12108a6e8" [label="mkdir{path=/blade/user}" shape="note"];
  "sha256:ac8d70054eb07ced007f591c18ae19f02c2289ab8f8c0b6e2b4e3837ffb6e7b2" [label="local://context" shape="ellipse"];
  "sha256:82ce17ab1dd9db6c356a62782130accfb744b465b28edc209f3f63c017da7c01" [label="copy{src=/target/blade-user.jar, dest=/blade/user/app.jar}" shape="note"];
  "sha256:79d8b4d752a447b51bc1e3b3b6fc1426e5c2e2242895b3613231541ecd1451a5" [label="sha256:79d8b4d752a447b51bc1e3b3b6fc1426e5c2e2242895b3613231541ecd1451a5" shape="plaintext"];
  "sha256:0bdbd2586cea19f8870cead10a86a9a7c906c7965b8aefdd1c7b1f93e8345898" -> "sha256:f84d13d5ca9cdd42b7f8defe0600c96a951bae2886c46c47cdeb67479814e605" [label=""];
  "sha256:f84d13d5ca9cdd42b7f8defe0600c96a951bae2886c46c47cdeb67479814e605" -> "sha256:e0ee2f5d0ff843e9fa8377ea6bde0d83eecc09101cbd9956814273e12108a6e8" [label=""];
  "sha256:e0ee2f5d0ff843e9fa8377ea6bde0d83eecc09101cbd9956814273e12108a6e8" -> "sha256:82ce17ab1dd9db6c356a62782130accfb744b465b28edc209f3f63c017da7c01" [label=""];
  "sha256:ac8d70054eb07ced007f591c18ae19f02c2289ab8f8c0b6e2b4e3837ffb6e7b2" -> "sha256:82ce17ab1dd9db6c356a62782130accfb744b465b28edc209f3f63c017da7c01" [label=""];
  "sha256:82ce17ab1dd9db6c356a62782130accfb744b465b28edc209f3f63c017da7c01" -> "sha256:79d8b4d752a447b51bc1e3b3b6fc1426e5c2e2242895b3613231541ecd1451a5" [label=""];
}

