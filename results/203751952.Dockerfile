[app/sources/203751952.Dockerfile]
digraph {
  "sha256:9b439e0a7378e1714aac91e7dcacf3205e55cb5bc2bf66849aece5b69bb4d2d7" [label="local://context" shape="ellipse"];
  "sha256:a09433421c7cd0cc2bdad4763429ab9d1070a4ea678f7e09f876a05ed7fca0c4" [label="docker-image://docker.io/library/tomcat:8.0" shape="ellipse"];
  "sha256:469622b691ce9d80064c70fac5abd20d1e32b30eb3238b08d01955eac90c2637" [label="copy{src=/server.xml, dest=/usr/local/tomcat/conf/server.xml}" shape="note"];
  "sha256:98fe68f63b4fe725ddeacd0a6157fbe564bb06f75d6d977f4a9eb08e20ac8453" [label="copy{src=/.keystore, dest=/root/.keystore}" shape="note"];
  "sha256:0c6e78f78e84293a02bb854c7cc9a95e74eebd73494b21e842385cfeffd87b80" [label="copy{src=/idp.xml, dest=/usr/local/tomcat/conf/Catalina/localhost/idp.xml}" shape="note"];
  "sha256:2f2925fcd12fd6ad0b876238df27fde496d50f28f66e68312d5e6bc9997e3c86" [label="copy{src=/shibboleth-idp, dest=/opt/shibboleth-idp/}" shape="note"];
  "sha256:360c9a98e6869cb55b91394cc526f96ee8b823bc32b19bb4de7d438c729798c9" [label="/bin/sh -c /opt/shibboleth-idp/bin/build.sh" shape="box"];
  "sha256:d7afc40445b8993702ce98f5df18aa82b0181654e7bbd18325b7807a11e3b7e2" [label="sha256:d7afc40445b8993702ce98f5df18aa82b0181654e7bbd18325b7807a11e3b7e2" shape="plaintext"];
  "sha256:a09433421c7cd0cc2bdad4763429ab9d1070a4ea678f7e09f876a05ed7fca0c4" -> "sha256:469622b691ce9d80064c70fac5abd20d1e32b30eb3238b08d01955eac90c2637" [label=""];
  "sha256:9b439e0a7378e1714aac91e7dcacf3205e55cb5bc2bf66849aece5b69bb4d2d7" -> "sha256:469622b691ce9d80064c70fac5abd20d1e32b30eb3238b08d01955eac90c2637" [label=""];
  "sha256:469622b691ce9d80064c70fac5abd20d1e32b30eb3238b08d01955eac90c2637" -> "sha256:98fe68f63b4fe725ddeacd0a6157fbe564bb06f75d6d977f4a9eb08e20ac8453" [label=""];
  "sha256:9b439e0a7378e1714aac91e7dcacf3205e55cb5bc2bf66849aece5b69bb4d2d7" -> "sha256:98fe68f63b4fe725ddeacd0a6157fbe564bb06f75d6d977f4a9eb08e20ac8453" [label=""];
  "sha256:98fe68f63b4fe725ddeacd0a6157fbe564bb06f75d6d977f4a9eb08e20ac8453" -> "sha256:0c6e78f78e84293a02bb854c7cc9a95e74eebd73494b21e842385cfeffd87b80" [label=""];
  "sha256:9b439e0a7378e1714aac91e7dcacf3205e55cb5bc2bf66849aece5b69bb4d2d7" -> "sha256:0c6e78f78e84293a02bb854c7cc9a95e74eebd73494b21e842385cfeffd87b80" [label=""];
  "sha256:0c6e78f78e84293a02bb854c7cc9a95e74eebd73494b21e842385cfeffd87b80" -> "sha256:2f2925fcd12fd6ad0b876238df27fde496d50f28f66e68312d5e6bc9997e3c86" [label=""];
  "sha256:9b439e0a7378e1714aac91e7dcacf3205e55cb5bc2bf66849aece5b69bb4d2d7" -> "sha256:2f2925fcd12fd6ad0b876238df27fde496d50f28f66e68312d5e6bc9997e3c86" [label=""];
  "sha256:2f2925fcd12fd6ad0b876238df27fde496d50f28f66e68312d5e6bc9997e3c86" -> "sha256:360c9a98e6869cb55b91394cc526f96ee8b823bc32b19bb4de7d438c729798c9" [label=""];
  "sha256:360c9a98e6869cb55b91394cc526f96ee8b823bc32b19bb4de7d438c729798c9" -> "sha256:d7afc40445b8993702ce98f5df18aa82b0181654e7bbd18325b7807a11e3b7e2" [label=""];
}

