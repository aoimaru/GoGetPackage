[app/sources/282579563.Dockerfile]
digraph {
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" [label="docker-image://docker.io/envoyproxy/envoy:latest" shape="ellipse"];
  "sha256:bab0d5b8e93ab1a6a23286bf8d7093a26a72f4d31da2af46c01c5db0f67e0604" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e639919789f2139330f18350c1f866d523490f04850166ff75f9b27d998eeb47" [label="local://context" shape="ellipse"];
  "sha256:20f0a5366bcd676260de58d3111ab687af0d33c5261fc992be56f34378c1ad5b" [label="copy{src=/google_com_proxy.v2.yaml, dest=/etc/envoy.yaml}" shape="note"];
  "sha256:18cd6dd07a060d9cdf717375bde214e14b6e6affc685c7346ecac0b993753370" [label="sha256:18cd6dd07a060d9cdf717375bde214e14b6e6affc685c7346ecac0b993753370" shape="plaintext"];
  "sha256:3b07272623ad28546ef1ef12214c57897a5ef5330c9bf3b169919e43f1e0b15d" -> "sha256:bab0d5b8e93ab1a6a23286bf8d7093a26a72f4d31da2af46c01c5db0f67e0604" [label=""];
  "sha256:bab0d5b8e93ab1a6a23286bf8d7093a26a72f4d31da2af46c01c5db0f67e0604" -> "sha256:20f0a5366bcd676260de58d3111ab687af0d33c5261fc992be56f34378c1ad5b" [label=""];
  "sha256:e639919789f2139330f18350c1f866d523490f04850166ff75f9b27d998eeb47" -> "sha256:20f0a5366bcd676260de58d3111ab687af0d33c5261fc992be56f34378c1ad5b" [label=""];
  "sha256:20f0a5366bcd676260de58d3111ab687af0d33c5261fc992be56f34378c1ad5b" -> "sha256:18cd6dd07a060d9cdf717375bde214e14b6e6affc685c7346ecac0b993753370" [label=""];
}

