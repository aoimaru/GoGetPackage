[app/sources/265023992.Dockerfile]
digraph {
  "sha256:a784e6078ae3948d7b0ff68f809ce4b4d743de79dafbf0b08bddf53c3bacabae" [label="https://github.com/keighrim/mae-annotation/releases/download/v2.0.9/mae-2.0.9-fatjar.jar" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0752bfb721de62f970949746bf8fd615b72a478777f0204e7ba6bf6ee7d7e200" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends ubuntu-desktop" shape="box"];
  "sha256:6295895e4606944f1696338bd431b7e93d550e88a9475fb45bb63c2763de57ed" [label="/bin/sh -c apt-get update &&     apt-get install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal  &&     apt-get install -y tightvncserver &&     mkdir /root/.vnc" shape="box"];
  "sha256:a206adbc9f52096083dca2e3a4ddff27e6141f97608d59771ac3b5b023fbcbef" [label="/bin/sh -c apt-get install -y openjdk-8-jdk" shape="box"];
  "sha256:9b35f91f8e3eee1b7520bf1ad8ff1fe1285bb25d7fe249363523c241bebca7cc" [label="/bin/sh -c apt-get install -y curl" shape="box"];
  "sha256:78b4c0cbabd3b770f263cf2a46acdae32eef9b46dab9766faa0210ad89147c92" [label="/bin/sh -c export CLOUD_SDK_REPO=\"cloud-sdk-$(lsb_release -c -s)\" &&     echo \"deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main\" |     tee -a /etc/apt/sources.list.d/google-cloud-sdk.list" shape="box"];
  "sha256:a1f8900daab66315af5b2ee7b8764485d40f73f04ad8c7c049813a1bbb68a1d2" [label="/bin/sh -c curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -" shape="box"];
  "sha256:7c654b1bbed4c69fd084e6afdbd4a3ad5fdcfcf5c6777b82735cb3fea5aca68a" [label="/bin/sh -c apt-get update && apt-get install -y google-cloud-sdk" shape="box"];
  "sha256:17ae0918b96ac618b7e65b69be9b043cc08ecde41111cbdbbf5246566abbb742" [label="/bin/sh -c mkdir -p /root/.config/nautilus &&     chmod 700 /root/.config/nautilus" shape="box"];
  "sha256:f25700edf8414a031526b7b00c717587991f59b10e08a7adcfc382f73f8ff6dc" [label="local://context" shape="ellipse"];
  "sha256:e15494aac48ee1807575dc43a7182c0b08609b411c243dee544c6e09c319d45b" [label="copy{src=/xstartup, dest=/root/.vnc/xstartup}" shape="note"];
  "sha256:2803319a09a7ea201c9566794870ea17ae983b0dfb5aeb6f6c9c1e112af102d1" [label="/bin/sh -c chmod 755 /root/.vnc/xstartup" shape="box"];
  "sha256:bc76f1d2882494dee220de93df3535536ad7eac9146f1d356a9f66af35fba1b2" [label="copy{src=/mae-2.0.9-fatjar.jar, dest=/root/}" shape="note"];
  "sha256:5548e145e8e9cbc19982dae48249c710442f1dc8f99e93c8ef1cfe20e257cb57" [label="/bin/sh -c chmod 755 /root/mae-2.0.9-fatjar.jar" shape="box"];
  "sha256:89ae9c705978af807cbc23e454dd1ce399f40d5183d85c63cddcd12aab9d4144" [label="sha256:89ae9c705978af807cbc23e454dd1ce399f40d5183d85c63cddcd12aab9d4144" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0752bfb721de62f970949746bf8fd615b72a478777f0204e7ba6bf6ee7d7e200" [label=""];
  "sha256:0752bfb721de62f970949746bf8fd615b72a478777f0204e7ba6bf6ee7d7e200" -> "sha256:6295895e4606944f1696338bd431b7e93d550e88a9475fb45bb63c2763de57ed" [label=""];
  "sha256:6295895e4606944f1696338bd431b7e93d550e88a9475fb45bb63c2763de57ed" -> "sha256:a206adbc9f52096083dca2e3a4ddff27e6141f97608d59771ac3b5b023fbcbef" [label=""];
  "sha256:a206adbc9f52096083dca2e3a4ddff27e6141f97608d59771ac3b5b023fbcbef" -> "sha256:9b35f91f8e3eee1b7520bf1ad8ff1fe1285bb25d7fe249363523c241bebca7cc" [label=""];
  "sha256:9b35f91f8e3eee1b7520bf1ad8ff1fe1285bb25d7fe249363523c241bebca7cc" -> "sha256:78b4c0cbabd3b770f263cf2a46acdae32eef9b46dab9766faa0210ad89147c92" [label=""];
  "sha256:78b4c0cbabd3b770f263cf2a46acdae32eef9b46dab9766faa0210ad89147c92" -> "sha256:a1f8900daab66315af5b2ee7b8764485d40f73f04ad8c7c049813a1bbb68a1d2" [label=""];
  "sha256:a1f8900daab66315af5b2ee7b8764485d40f73f04ad8c7c049813a1bbb68a1d2" -> "sha256:7c654b1bbed4c69fd084e6afdbd4a3ad5fdcfcf5c6777b82735cb3fea5aca68a" [label=""];
  "sha256:7c654b1bbed4c69fd084e6afdbd4a3ad5fdcfcf5c6777b82735cb3fea5aca68a" -> "sha256:17ae0918b96ac618b7e65b69be9b043cc08ecde41111cbdbbf5246566abbb742" [label=""];
  "sha256:17ae0918b96ac618b7e65b69be9b043cc08ecde41111cbdbbf5246566abbb742" -> "sha256:e15494aac48ee1807575dc43a7182c0b08609b411c243dee544c6e09c319d45b" [label=""];
  "sha256:f25700edf8414a031526b7b00c717587991f59b10e08a7adcfc382f73f8ff6dc" -> "sha256:e15494aac48ee1807575dc43a7182c0b08609b411c243dee544c6e09c319d45b" [label=""];
  "sha256:e15494aac48ee1807575dc43a7182c0b08609b411c243dee544c6e09c319d45b" -> "sha256:2803319a09a7ea201c9566794870ea17ae983b0dfb5aeb6f6c9c1e112af102d1" [label=""];
  "sha256:2803319a09a7ea201c9566794870ea17ae983b0dfb5aeb6f6c9c1e112af102d1" -> "sha256:bc76f1d2882494dee220de93df3535536ad7eac9146f1d356a9f66af35fba1b2" [label=""];
  "sha256:a784e6078ae3948d7b0ff68f809ce4b4d743de79dafbf0b08bddf53c3bacabae" -> "sha256:bc76f1d2882494dee220de93df3535536ad7eac9146f1d356a9f66af35fba1b2" [label=""];
  "sha256:bc76f1d2882494dee220de93df3535536ad7eac9146f1d356a9f66af35fba1b2" -> "sha256:5548e145e8e9cbc19982dae48249c710442f1dc8f99e93c8ef1cfe20e257cb57" [label=""];
  "sha256:5548e145e8e9cbc19982dae48249c710442f1dc8f99e93c8ef1cfe20e257cb57" -> "sha256:89ae9c705978af807cbc23e454dd1ce399f40d5183d85c63cddcd12aab9d4144" [label=""];
}

