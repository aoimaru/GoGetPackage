[app/sources/252775696.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:2cbb9ac6fce03ac05edf931e8e44d79b0a4d68b6f548f976c2b34c8ab7199427" [label="/bin/sh -c mkdir /root/.aws" shape="box"];
  "sha256:8cb7d53ebb0f5bb06f09ed4a1b3ce96f1b3a2126eb26410bf8a61527d258db44" [label="/bin/sh -c apk update && apk add ca-certificates python py-pip jq bash && pip install --upgrade awscli && rm -rf /var/cache/apk/* && rm -rf /tmp/*" shape="box"];
  "sha256:8c5b311de24a39b130e8b44290523426bb741d76489ddee46dede5423eeca924" [label="local://context" shape="ellipse"];
  "sha256:ad4b7923e7af46b66c6d78c858162a236af8f99234274614a7e0540dac3d8d8b" [label="copy{src=/dispatch, dest=/srv/dispatch}" shape="note"];
  "sha256:4e54c1a215614d2c02f894c294c61419fd5b5b56e464e46e4fe07415923f36ae" [label="copy{src=/ecs-deploy, dest=/srv/ecs-deploy}" shape="note"];
  "sha256:0002cd79305a23056ab808d299fbb7cdfacd0f61c31730b19680db20f696c50a" [label="sha256:0002cd79305a23056ab808d299fbb7cdfacd0f61c31730b19680db20f696c50a" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:2cbb9ac6fce03ac05edf931e8e44d79b0a4d68b6f548f976c2b34c8ab7199427" [label=""];
  "sha256:2cbb9ac6fce03ac05edf931e8e44d79b0a4d68b6f548f976c2b34c8ab7199427" -> "sha256:8cb7d53ebb0f5bb06f09ed4a1b3ce96f1b3a2126eb26410bf8a61527d258db44" [label=""];
  "sha256:8cb7d53ebb0f5bb06f09ed4a1b3ce96f1b3a2126eb26410bf8a61527d258db44" -> "sha256:ad4b7923e7af46b66c6d78c858162a236af8f99234274614a7e0540dac3d8d8b" [label=""];
  "sha256:8c5b311de24a39b130e8b44290523426bb741d76489ddee46dede5423eeca924" -> "sha256:ad4b7923e7af46b66c6d78c858162a236af8f99234274614a7e0540dac3d8d8b" [label=""];
  "sha256:ad4b7923e7af46b66c6d78c858162a236af8f99234274614a7e0540dac3d8d8b" -> "sha256:4e54c1a215614d2c02f894c294c61419fd5b5b56e464e46e4fe07415923f36ae" [label=""];
  "sha256:8c5b311de24a39b130e8b44290523426bb741d76489ddee46dede5423eeca924" -> "sha256:4e54c1a215614d2c02f894c294c61419fd5b5b56e464e46e4fe07415923f36ae" [label=""];
  "sha256:4e54c1a215614d2c02f894c294c61419fd5b5b56e464e46e4fe07415923f36ae" -> "sha256:0002cd79305a23056ab808d299fbb7cdfacd0f61c31730b19680db20f696c50a" [label=""];
}

