[app/sources/456016709.Dockerfile]
digraph {
  "sha256:652aaa05d22a8d645013ae90de6a638a311649e1a86d183369bbf1ed0c41e29b" [label="docker-image://docker.io/adoptopenjdk/openjdk8:latest" shape="ellipse"];
  "sha256:fbb5b71fbf771f4af4257e1b39e535ecb1df72f5589aeae60d08db7375e8e77b" [label="/bin/sh -c apt-get update \t&& apt-get -y install \tant \tcurl \tgit \tunzip \tvim \twget" shape="box"];
  "sha256:b23787870648d77f779918635b6ce452507e7610adfc87932a5118d017d6299d" [label="/bin/sh -c apt-get update \t&& apt-get -y install \tmaven" shape="box"];
  "sha256:b4eb6e4f6eac80861debc0bd4c4686ec625955051fa54d82ce2668da25ad812a" [label="local://context" shape="ellipse"];
  "sha256:5500b4d1504356631c78c7daddd5eb5906af3a99ba36386f6524c2e3debbf3de" [label="copy{src=/dockerfile/tomee-test.sh, dest=/tomee-test.sh}" shape="note"];
  "sha256:0c12980caf9c9fb9d758b18d30cf89691d4f6fa0a4401f22a293bbb5d44c4b8c" [label="/bin/sh -c mkdir testResults" shape="box"];
  "sha256:cc6daf7f920dcb29b82c0343929097916b576cde9c448f0a3b97ae34a10e0cef" [label="/bin/sh -c git clone https://github.com/apache/tomee.git" shape="box"];
  "sha256:0e90115b7484c1d85cd9060acaf517bbac2aa2aac3069621f9f9f62e8565ea11" [label="sha256:0e90115b7484c1d85cd9060acaf517bbac2aa2aac3069621f9f9f62e8565ea11" shape="plaintext"];
  "sha256:652aaa05d22a8d645013ae90de6a638a311649e1a86d183369bbf1ed0c41e29b" -> "sha256:fbb5b71fbf771f4af4257e1b39e535ecb1df72f5589aeae60d08db7375e8e77b" [label=""];
  "sha256:fbb5b71fbf771f4af4257e1b39e535ecb1df72f5589aeae60d08db7375e8e77b" -> "sha256:b23787870648d77f779918635b6ce452507e7610adfc87932a5118d017d6299d" [label=""];
  "sha256:b23787870648d77f779918635b6ce452507e7610adfc87932a5118d017d6299d" -> "sha256:5500b4d1504356631c78c7daddd5eb5906af3a99ba36386f6524c2e3debbf3de" [label=""];
  "sha256:b4eb6e4f6eac80861debc0bd4c4686ec625955051fa54d82ce2668da25ad812a" -> "sha256:5500b4d1504356631c78c7daddd5eb5906af3a99ba36386f6524c2e3debbf3de" [label=""];
  "sha256:5500b4d1504356631c78c7daddd5eb5906af3a99ba36386f6524c2e3debbf3de" -> "sha256:0c12980caf9c9fb9d758b18d30cf89691d4f6fa0a4401f22a293bbb5d44c4b8c" [label=""];
  "sha256:0c12980caf9c9fb9d758b18d30cf89691d4f6fa0a4401f22a293bbb5d44c4b8c" -> "sha256:cc6daf7f920dcb29b82c0343929097916b576cde9c448f0a3b97ae34a10e0cef" [label=""];
  "sha256:cc6daf7f920dcb29b82c0343929097916b576cde9c448f0a3b97ae34a10e0cef" -> "sha256:0e90115b7484c1d85cd9060acaf517bbac2aa2aac3069621f9f9f62e8565ea11" [label=""];
}

