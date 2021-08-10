[app/sources/130406185.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:9b44af587f60142f84582513f36acf711b634b88f397858aaba9889737834871" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y     curl  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:89be1b46fdb281e5eb6eebd2239bfab1ea6269253d24a810160d3ed06f51be38" [label="/bin/sh -c curl https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/2.1.4.RELEASE/spring-boot-cli-2.1.4.RELEASE-bin.tar.gz | tar xzf - -C $HOME  && ln -s $HOME/spring-2.1.4.RELEASE/bin/spring /usr/local/bin" shape="box"];
  "sha256:8d740b2686979371cc5eae2423a47437b765432897834a1f96f30b52f9f29ae8" [label="sha256:8d740b2686979371cc5eae2423a47437b765432897834a1f96f30b52f9f29ae8" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:9b44af587f60142f84582513f36acf711b634b88f397858aaba9889737834871" [label=""];
  "sha256:9b44af587f60142f84582513f36acf711b634b88f397858aaba9889737834871" -> "sha256:89be1b46fdb281e5eb6eebd2239bfab1ea6269253d24a810160d3ed06f51be38" [label=""];
  "sha256:89be1b46fdb281e5eb6eebd2239bfab1ea6269253d24a810160d3ed06f51be38" -> "sha256:8d740b2686979371cc5eae2423a47437b765432897834a1f96f30b52f9f29ae8" [label=""];
}

