[app/sources/200664883.Dockerfile]
digraph {
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" [label="docker-image://docker.io/library/alpine:3.3" shape="ellipse"];
  "sha256:dae10f3b50c341f52bd787205a01e5de5c4e91ec7ba295fed1e85bbb9f392fca" [label="https://releases.hashicorp.com/consul-template/0.14.0/consul-template_0.14.0_linux_amd64.zip" shape="ellipse"];
  "sha256:cd742001fdb77be51f83544093443550f5c9f2955aaa1051696b47870418197a" [label="copy{src=/consul-template_0.14.0_linux_amd64.zip, dest=/consul-template.zip}" shape="note"];
  "sha256:67e3784bb0a8be13f48acbea45cf3b33fb5953f8c24f2d6e113bdc378f276ef7" [label="/bin/sh -c apk add --no-cache unzip &&     unzip consul-template.zip &&     rm consul-template.zip" shape="box"];
  "sha256:244ea26522a3df7dac335d186c9a27cdd067e2b9c6f45057217cd1a4f15b00a4" [label="local://context" shape="ellipse"];
  "sha256:5d8133b7b2c90e6f8ae3a1ff8f6e0acb10d379296e99fcefe12817a34bf3d846" [label="copy{src=/micro-app, dest=/micro-app}" shape="note"];
  "sha256:f9e7aebbe3593702dd7ca32885c9485c989aac3a5cc674d44b399e5c5bdc958c" [label="copy{src=/config.json.ctmpl, dest=/config.json.ctmpl}" shape="note"];
  "sha256:271c3b3dd77e21640e007aa76091a3e50bf7b46f440d18b06f6e05424dbc5698" [label="copy{src=/support/run.sh, dest=/run.sh}" shape="note"];
  "sha256:ab17d68496c381ff58178ffc60ca2dd5c20662afc357e5888a291729a230032a" [label="sha256:ab17d68496c381ff58178ffc60ca2dd5c20662afc357e5888a291729a230032a" shape="plaintext"];
  "sha256:41fa9fbcd028249ff71cfc40fc763ca59834ce57d499c12111f50198d0555991" -> "sha256:cd742001fdb77be51f83544093443550f5c9f2955aaa1051696b47870418197a" [label=""];
  "sha256:dae10f3b50c341f52bd787205a01e5de5c4e91ec7ba295fed1e85bbb9f392fca" -> "sha256:cd742001fdb77be51f83544093443550f5c9f2955aaa1051696b47870418197a" [label=""];
  "sha256:cd742001fdb77be51f83544093443550f5c9f2955aaa1051696b47870418197a" -> "sha256:67e3784bb0a8be13f48acbea45cf3b33fb5953f8c24f2d6e113bdc378f276ef7" [label=""];
  "sha256:67e3784bb0a8be13f48acbea45cf3b33fb5953f8c24f2d6e113bdc378f276ef7" -> "sha256:5d8133b7b2c90e6f8ae3a1ff8f6e0acb10d379296e99fcefe12817a34bf3d846" [label=""];
  "sha256:244ea26522a3df7dac335d186c9a27cdd067e2b9c6f45057217cd1a4f15b00a4" -> "sha256:5d8133b7b2c90e6f8ae3a1ff8f6e0acb10d379296e99fcefe12817a34bf3d846" [label=""];
  "sha256:5d8133b7b2c90e6f8ae3a1ff8f6e0acb10d379296e99fcefe12817a34bf3d846" -> "sha256:f9e7aebbe3593702dd7ca32885c9485c989aac3a5cc674d44b399e5c5bdc958c" [label=""];
  "sha256:244ea26522a3df7dac335d186c9a27cdd067e2b9c6f45057217cd1a4f15b00a4" -> "sha256:f9e7aebbe3593702dd7ca32885c9485c989aac3a5cc674d44b399e5c5bdc958c" [label=""];
  "sha256:f9e7aebbe3593702dd7ca32885c9485c989aac3a5cc674d44b399e5c5bdc958c" -> "sha256:271c3b3dd77e21640e007aa76091a3e50bf7b46f440d18b06f6e05424dbc5698" [label=""];
  "sha256:244ea26522a3df7dac335d186c9a27cdd067e2b9c6f45057217cd1a4f15b00a4" -> "sha256:271c3b3dd77e21640e007aa76091a3e50bf7b46f440d18b06f6e05424dbc5698" [label=""];
  "sha256:271c3b3dd77e21640e007aa76091a3e50bf7b46f440d18b06f6e05424dbc5698" -> "sha256:ab17d68496c381ff58178ffc60ca2dd5c20662afc357e5888a291729a230032a" [label=""];
}

