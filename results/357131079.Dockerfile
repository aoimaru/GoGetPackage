[app/sources/357131079.Dockerfile]
digraph {
  "sha256:f0370bc102223a46acf788497afb9810871f6f76e3283f0ee6fc857308b4783c" [label="docker-image://docker.io/library/java_base_8:latest" shape="ellipse"];
  "sha256:2fc2d92dadb8e9de790072910ae75286831b767a94737ccda71b87e1463260d5" [label="mkdir{path=/root}" shape="note"];
  "sha256:1ce6cb3fff9bf6b7f6028b063cdaedc10c4e2bb330d4db0119040ef92fbcc4ff" [label="http://chianti.ucsd.edu/cytoscape-3.3.0/cytoscape-3.3.0.tar.gz" shape="ellipse"];
  "sha256:4c5c4374b652362a307b5c9b7b32848ae571db97fb1c62348584fb3e317aa81c" [label="copy{src=/cytoscape-3.3.0.tar.gz, dest=/root/cytoscape-3.3.0.tar.gz}" shape="note"];
  "sha256:16920cc827e59824d057ac524b3aabbf109682126286164896e7dc71274dc740" [label="/bin/sh -c tar -xf cytoscape-3.3.0.tar.gz" shape="box"];
  "sha256:e407281d9318bc0eb257f87ccc40aec12c533a2f9860a97d305085753a29d9fa" [label="/bin/sh -c rm /root/cytoscape-3.3.0.tar.gz" shape="box"];
  "sha256:e2ada1a117ef8178164bb231ff97d0fcbb0e23b21dd5bb0aee73beb954c23a9b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:50077edf9fe41339480c1eca7843eb1fdfa7004d76cbc616705b3533385da8a5" [label="/bin/sh -c apt-get install -y --force-yes --no-install-recommends software-properties-common" shape="box"];
  "sha256:50b57faed72f6e80c7ea220f66261f8a37d724cd9473597391fa809f93e293e0" [label="/bin/sh -c add-apt-repository -y ppa:webupd8team/java" shape="box"];
  "sha256:380fca2cb9a6713a9956a239a3bd5ccbe5ddce973a0e12265c78027198394212" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ca8faa6efbb922ccb2eaf020dd20cc531cf9f14752576b19bc2d94f8de5ae143" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:5eb9a456ed7d984f9535fb7235619d2577c3cc971887132af9b7792e75ae6079" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:a9dbaa01d44de3ce3c83f3c46af515149880d2d6fe52e2e3a4deb65b99428469" [label="/bin/sh -c apt-get install -y --force-yes --no-install-recommends oracle-java8-installer oracle-java8-set-default" shape="box"];
  "sha256:781970e0f68dbe92539e53d60d53fb53f8e2ad99409f60519dc93968cca978b5" [label="/bin/sh -c apt-get purge software-properties-common -y --force-yes" shape="box"];
  "sha256:c2ba740092799c3eab8eeef6f3505b27981bd4050ce182dd7837b38630a04c07" [label="/bin/sh -c apt-get -y autoclean" shape="box"];
  "sha256:cec54bae226143184c828217e7d0d8d311d3e3854efbbec833d0788af70395a6" [label="/bin/sh -c apt-get -y autoremove" shape="box"];
  "sha256:8c3a2ebe3146366ff687c76b4268702bb6600f7b70e4ebf5455c4c52caefdc70" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e463844ae9198edf602ec07743c6be197263d71483a98b75461c76db5c120cb9" [label="sha256:e463844ae9198edf602ec07743c6be197263d71483a98b75461c76db5c120cb9" shape="plaintext"];
  "sha256:f0370bc102223a46acf788497afb9810871f6f76e3283f0ee6fc857308b4783c" -> "sha256:2fc2d92dadb8e9de790072910ae75286831b767a94737ccda71b87e1463260d5" [label=""];
  "sha256:2fc2d92dadb8e9de790072910ae75286831b767a94737ccda71b87e1463260d5" -> "sha256:4c5c4374b652362a307b5c9b7b32848ae571db97fb1c62348584fb3e317aa81c" [label=""];
  "sha256:1ce6cb3fff9bf6b7f6028b063cdaedc10c4e2bb330d4db0119040ef92fbcc4ff" -> "sha256:4c5c4374b652362a307b5c9b7b32848ae571db97fb1c62348584fb3e317aa81c" [label=""];
  "sha256:4c5c4374b652362a307b5c9b7b32848ae571db97fb1c62348584fb3e317aa81c" -> "sha256:16920cc827e59824d057ac524b3aabbf109682126286164896e7dc71274dc740" [label=""];
  "sha256:16920cc827e59824d057ac524b3aabbf109682126286164896e7dc71274dc740" -> "sha256:e407281d9318bc0eb257f87ccc40aec12c533a2f9860a97d305085753a29d9fa" [label=""];
  "sha256:e407281d9318bc0eb257f87ccc40aec12c533a2f9860a97d305085753a29d9fa" -> "sha256:e2ada1a117ef8178164bb231ff97d0fcbb0e23b21dd5bb0aee73beb954c23a9b" [label=""];
  "sha256:e2ada1a117ef8178164bb231ff97d0fcbb0e23b21dd5bb0aee73beb954c23a9b" -> "sha256:50077edf9fe41339480c1eca7843eb1fdfa7004d76cbc616705b3533385da8a5" [label=""];
  "sha256:50077edf9fe41339480c1eca7843eb1fdfa7004d76cbc616705b3533385da8a5" -> "sha256:50b57faed72f6e80c7ea220f66261f8a37d724cd9473597391fa809f93e293e0" [label=""];
  "sha256:50b57faed72f6e80c7ea220f66261f8a37d724cd9473597391fa809f93e293e0" -> "sha256:380fca2cb9a6713a9956a239a3bd5ccbe5ddce973a0e12265c78027198394212" [label=""];
  "sha256:380fca2cb9a6713a9956a239a3bd5ccbe5ddce973a0e12265c78027198394212" -> "sha256:ca8faa6efbb922ccb2eaf020dd20cc531cf9f14752576b19bc2d94f8de5ae143" [label=""];
  "sha256:ca8faa6efbb922ccb2eaf020dd20cc531cf9f14752576b19bc2d94f8de5ae143" -> "sha256:5eb9a456ed7d984f9535fb7235619d2577c3cc971887132af9b7792e75ae6079" [label=""];
  "sha256:5eb9a456ed7d984f9535fb7235619d2577c3cc971887132af9b7792e75ae6079" -> "sha256:a9dbaa01d44de3ce3c83f3c46af515149880d2d6fe52e2e3a4deb65b99428469" [label=""];
  "sha256:a9dbaa01d44de3ce3c83f3c46af515149880d2d6fe52e2e3a4deb65b99428469" -> "sha256:781970e0f68dbe92539e53d60d53fb53f8e2ad99409f60519dc93968cca978b5" [label=""];
  "sha256:781970e0f68dbe92539e53d60d53fb53f8e2ad99409f60519dc93968cca978b5" -> "sha256:c2ba740092799c3eab8eeef6f3505b27981bd4050ce182dd7837b38630a04c07" [label=""];
  "sha256:c2ba740092799c3eab8eeef6f3505b27981bd4050ce182dd7837b38630a04c07" -> "sha256:cec54bae226143184c828217e7d0d8d311d3e3854efbbec833d0788af70395a6" [label=""];
  "sha256:cec54bae226143184c828217e7d0d8d311d3e3854efbbec833d0788af70395a6" -> "sha256:8c3a2ebe3146366ff687c76b4268702bb6600f7b70e4ebf5455c4c52caefdc70" [label=""];
  "sha256:8c3a2ebe3146366ff687c76b4268702bb6600f7b70e4ebf5455c4c52caefdc70" -> "sha256:e463844ae9198edf602ec07743c6be197263d71483a98b75461c76db5c120cb9" [label=""];
}

