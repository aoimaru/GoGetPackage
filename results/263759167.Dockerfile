[app/sources/263759167.Dockerfile]
digraph {
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" [label="docker-image://docker.io/phusion/baseimage:0.9.19" shape="ellipse"];
  "sha256:037ff8f8bb0c2c8de807a0f9283ee176d0a31d87b86ea530552af9ebafd46df8" [label="/bin/sh -c echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&   add-apt-repository -y ppa:webupd8team/java &&   apt-get update &&   apt-get install -y oracle-java8-installer" shape="box"];
  "sha256:4eb6c2db5013bce558e497045f0be91c88a87fa57bc29da07c09c75bc6213b70" [label="/bin/sh -c apt-get install -y unzip" shape="box"];
  "sha256:99d0129d687c99cd7b5bfabd6404e2f6033f07a94b99102b1452ff5f516c1714" [label="/bin/sh -c mkdir -p /opt/corenlp" shape="box"];
  "sha256:7a4955489bbbb1ff7e86ce261ca693c92bac3bec23a7513e19dda8b7f61e6ce7" [label="mkdir{path=/opt/corenlp}" shape="note"];
  "sha256:742a1e2c22d138a6c4e63dfd77f71d541729c89375a13e817300ef6e3221cf91" [label="/bin/sh -c wget --quiet http://nlp.stanford.edu/software/$VERSION.zip -O corenlp.zip" shape="box"];
  "sha256:756e41ca364156925062703359769b7c58ee4ca03ebc2dbef78c3c7cab204d20" [label="/bin/sh -c unzip corenlp.zip" shape="box"];
  "sha256:455de32c11a5e4954eb47d9f267534e2ea9b82632ba8fe66569ab1b7206518f5" [label="/bin/sh -c mv $VERSION src" shape="box"];
  "sha256:a16812937db06069e225cadd17d5bdc29bfc2e349382f08dae28cea28ec5f418" [label="/bin/sh -c rm -r corenlp.zip" shape="box"];
  "sha256:52decbc8618b1d6fe6eb15627d72df36c922e6684b8ea40ea35d977e671896d5" [label="/bin/sh -c mkdir /etc/service/corenlp" shape="box"];
  "sha256:f12008f03b60d06a60d3ae95797380fdd821bc61b4d2f75669822519fd790e8b" [label="local://context" shape="ellipse"];
  "sha256:c159f360a0ae36fd52a6885fb83d42919b715e19bbd4918f3b0aa937df5eeb1e" [label="copy{src=/corenlp.sh, dest=/etc/service/corenlp/run}" shape="note"];
  "sha256:fe5ce102ec82203a1f3116f8e162dffb1483b268108b2ad38f36c0c0fbaedd6e" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache" shape="box"];
  "sha256:c01b4f69c1820f7cde5e4cd12994f8d06db252aebfd83c2b5bf1060975d614fc" [label="sha256:c01b4f69c1820f7cde5e4cd12994f8d06db252aebfd83c2b5bf1060975d614fc" shape="plaintext"];
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" -> "sha256:037ff8f8bb0c2c8de807a0f9283ee176d0a31d87b86ea530552af9ebafd46df8" [label=""];
  "sha256:037ff8f8bb0c2c8de807a0f9283ee176d0a31d87b86ea530552af9ebafd46df8" -> "sha256:4eb6c2db5013bce558e497045f0be91c88a87fa57bc29da07c09c75bc6213b70" [label=""];
  "sha256:4eb6c2db5013bce558e497045f0be91c88a87fa57bc29da07c09c75bc6213b70" -> "sha256:99d0129d687c99cd7b5bfabd6404e2f6033f07a94b99102b1452ff5f516c1714" [label=""];
  "sha256:99d0129d687c99cd7b5bfabd6404e2f6033f07a94b99102b1452ff5f516c1714" -> "sha256:7a4955489bbbb1ff7e86ce261ca693c92bac3bec23a7513e19dda8b7f61e6ce7" [label=""];
  "sha256:7a4955489bbbb1ff7e86ce261ca693c92bac3bec23a7513e19dda8b7f61e6ce7" -> "sha256:742a1e2c22d138a6c4e63dfd77f71d541729c89375a13e817300ef6e3221cf91" [label=""];
  "sha256:742a1e2c22d138a6c4e63dfd77f71d541729c89375a13e817300ef6e3221cf91" -> "sha256:756e41ca364156925062703359769b7c58ee4ca03ebc2dbef78c3c7cab204d20" [label=""];
  "sha256:756e41ca364156925062703359769b7c58ee4ca03ebc2dbef78c3c7cab204d20" -> "sha256:455de32c11a5e4954eb47d9f267534e2ea9b82632ba8fe66569ab1b7206518f5" [label=""];
  "sha256:455de32c11a5e4954eb47d9f267534e2ea9b82632ba8fe66569ab1b7206518f5" -> "sha256:a16812937db06069e225cadd17d5bdc29bfc2e349382f08dae28cea28ec5f418" [label=""];
  "sha256:a16812937db06069e225cadd17d5bdc29bfc2e349382f08dae28cea28ec5f418" -> "sha256:52decbc8618b1d6fe6eb15627d72df36c922e6684b8ea40ea35d977e671896d5" [label=""];
  "sha256:52decbc8618b1d6fe6eb15627d72df36c922e6684b8ea40ea35d977e671896d5" -> "sha256:c159f360a0ae36fd52a6885fb83d42919b715e19bbd4918f3b0aa937df5eeb1e" [label=""];
  "sha256:f12008f03b60d06a60d3ae95797380fdd821bc61b4d2f75669822519fd790e8b" -> "sha256:c159f360a0ae36fd52a6885fb83d42919b715e19bbd4918f3b0aa937df5eeb1e" [label=""];
  "sha256:c159f360a0ae36fd52a6885fb83d42919b715e19bbd4918f3b0aa937df5eeb1e" -> "sha256:fe5ce102ec82203a1f3116f8e162dffb1483b268108b2ad38f36c0c0fbaedd6e" [label=""];
  "sha256:fe5ce102ec82203a1f3116f8e162dffb1483b268108b2ad38f36c0c0fbaedd6e" -> "sha256:c01b4f69c1820f7cde5e4cd12994f8d06db252aebfd83c2b5bf1060975d614fc" [label=""];
}

