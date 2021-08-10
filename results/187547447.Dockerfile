[app/sources/187547447.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:e672108c2fe09324883958548e3e397eb97d8b4a997a0c84dde6a0c087e2b0e8" [label="/bin/sh -c apt-get update  && apt-get install -qqy curl openjdk-6-jdk" shape="box"];
  "sha256:67f472880bd1cc7d27dacf1c2a8989345be91272938d1c3a715f184e09e489cc" [label="/bin/sh -c mkdir -p $JENKINS_HOME/plugins $JENKINS_HOME/jobs/craft" shape="box"];
  "sha256:5e364fc74aa326db36f69fb59dbb4d03e0c6a04984980ab207b39dede650ee7e" [label="/bin/sh -c curl -sf -o /opt/jenkins/jenkins.war -L $JENKINS_MIRROR/war-stable/latest/jenkins.war" shape="box"];
  "sha256:bdfe15e3eb24dfc452e78914574e8cd20f633c63ce71c6f242f470e360ed6619" [label="/bin/sh -c for plugin in chucknorris greenballs scm-api git-client ansicolor description-setter     envinject job-exporter git ws-cleanup ;    do curl -sf -o $JENKINS_HOME/plugins/${plugin}.hpi        -L $JENKINS_MIRROR/plugins/${plugin}/latest/${plugin}.hpi ; done" shape="box"];
  "sha256:ce72fb37274c91151fad64be7fa466f8b7d12357c3be3b632c7a1278af2db8fd" [label="local://context" shape="ellipse"];
  "sha256:8adcec72ad55c93d7e6e58127317c56b3cc9bd8d4087ed4da0d4524ad7ff6bc6" [label="copy{src=/craft-config.xml, dest=/opt/jenkins/data/jobs/craft/config.xml}" shape="note"];
  "sha256:e95907c92385b6cba6d6b3367961a881b14f3444f73ed1ec6eda33e87127dc49" [label="copy{src=/start.sh, dest=/usr/local/bin/start.sh}" shape="note"];
  "sha256:c4568e7a761c307ce331033c1734c1474a449bb95e2b78cb8f99bbf7addfa784" [label="/bin/sh -c chmod +x /usr/local/bin/start.sh" shape="box"];
  "sha256:ce98af2fdba7d90686a15dd5da064dda63ff2323ad59b3d5d810a3e00f2602cb" [label="sha256:ce98af2fdba7d90686a15dd5da064dda63ff2323ad59b3d5d810a3e00f2602cb" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:e672108c2fe09324883958548e3e397eb97d8b4a997a0c84dde6a0c087e2b0e8" [label=""];
  "sha256:e672108c2fe09324883958548e3e397eb97d8b4a997a0c84dde6a0c087e2b0e8" -> "sha256:67f472880bd1cc7d27dacf1c2a8989345be91272938d1c3a715f184e09e489cc" [label=""];
  "sha256:67f472880bd1cc7d27dacf1c2a8989345be91272938d1c3a715f184e09e489cc" -> "sha256:5e364fc74aa326db36f69fb59dbb4d03e0c6a04984980ab207b39dede650ee7e" [label=""];
  "sha256:5e364fc74aa326db36f69fb59dbb4d03e0c6a04984980ab207b39dede650ee7e" -> "sha256:bdfe15e3eb24dfc452e78914574e8cd20f633c63ce71c6f242f470e360ed6619" [label=""];
  "sha256:bdfe15e3eb24dfc452e78914574e8cd20f633c63ce71c6f242f470e360ed6619" -> "sha256:8adcec72ad55c93d7e6e58127317c56b3cc9bd8d4087ed4da0d4524ad7ff6bc6" [label=""];
  "sha256:ce72fb37274c91151fad64be7fa466f8b7d12357c3be3b632c7a1278af2db8fd" -> "sha256:8adcec72ad55c93d7e6e58127317c56b3cc9bd8d4087ed4da0d4524ad7ff6bc6" [label=""];
  "sha256:8adcec72ad55c93d7e6e58127317c56b3cc9bd8d4087ed4da0d4524ad7ff6bc6" -> "sha256:e95907c92385b6cba6d6b3367961a881b14f3444f73ed1ec6eda33e87127dc49" [label=""];
  "sha256:ce72fb37274c91151fad64be7fa466f8b7d12357c3be3b632c7a1278af2db8fd" -> "sha256:e95907c92385b6cba6d6b3367961a881b14f3444f73ed1ec6eda33e87127dc49" [label=""];
  "sha256:e95907c92385b6cba6d6b3367961a881b14f3444f73ed1ec6eda33e87127dc49" -> "sha256:c4568e7a761c307ce331033c1734c1474a449bb95e2b78cb8f99bbf7addfa784" [label=""];
  "sha256:c4568e7a761c307ce331033c1734c1474a449bb95e2b78cb8f99bbf7addfa784" -> "sha256:ce98af2fdba7d90686a15dd5da064dda63ff2323ad59b3d5d810a3e00f2602cb" [label=""];
}

