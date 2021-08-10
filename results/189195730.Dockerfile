[app/sources/189195730.Dockerfile]
digraph {
  "sha256:9c9b79951c872e4c73d4fd8658cb2e4ff9d237a7ffda5929b8348479eb5c8339" [label="local://context" shape="ellipse"];
  "sha256:1a7411ab079982a0665476b80471b24f8f5213821e84ead24fc6dd21a6bddf17" [label="docker-image://docker.io/bigm/nodejs:latest" shape="ellipse"];
  "sha256:7d1717b7a75965e6fc783a88026da309a68228d7428f238e619b08df2f17749c" [label="/bin/sh -c /xt/tools/_download /usr/local/bin/swaks \"http://www.jetmore.org/john/code/swaks/files/swaks-20130209.0/swaks\"     && chmod +x /usr/local/bin/swaks" shape="box"];
  "sha256:4a2b258220d2a5f88fdd0404c3235d7f13382547cea4a3c0d5f022d4a8066453" [label="/bin/sh -c npm -g install Haraka" shape="box"];
  "sha256:34c7d75f4f8df9e276e26bdb885999a1c2fafe8a7ff324573ca0e5bb6e1887ff" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:f577eb5f826b95f18fe1b7fe84f1d83fe52e5a22b1a446e7f6831fb870fcd8cf" [label="mkdir{path=/xt/haraka}" shape="note"];
  "sha256:4a21ccb6f2743e2f51d8cd30dc249cc890c51801b657084da5689dd83339a0fe" [label="/bin/sh -c npm install" shape="box"];
  "sha256:15fb97a71d8ead59125a88bf69e5f4425bc28e3a0d177b06783c1b2c7300c234" [label="copy{src=/supervisor.d/*, dest=/etc/supervisord.d/}" shape="note"];
  "sha256:f2d45b296a556d4fee0a9870bf71b0776df2f8678b9982001a90f15456176a0d" [label="copy{src=/startup/*, dest=/prj/startup/}" shape="note"];
  "sha256:31121301370bfa3dad41945509336814d62c00bef3db9fe604129c19fd149bac" [label="sha256:31121301370bfa3dad41945509336814d62c00bef3db9fe604129c19fd149bac" shape="plaintext"];
  "sha256:1a7411ab079982a0665476b80471b24f8f5213821e84ead24fc6dd21a6bddf17" -> "sha256:7d1717b7a75965e6fc783a88026da309a68228d7428f238e619b08df2f17749c" [label=""];
  "sha256:7d1717b7a75965e6fc783a88026da309a68228d7428f238e619b08df2f17749c" -> "sha256:4a2b258220d2a5f88fdd0404c3235d7f13382547cea4a3c0d5f022d4a8066453" [label=""];
  "sha256:4a2b258220d2a5f88fdd0404c3235d7f13382547cea4a3c0d5f022d4a8066453" -> "sha256:34c7d75f4f8df9e276e26bdb885999a1c2fafe8a7ff324573ca0e5bb6e1887ff" [label=""];
  "sha256:9c9b79951c872e4c73d4fd8658cb2e4ff9d237a7ffda5929b8348479eb5c8339" -> "sha256:34c7d75f4f8df9e276e26bdb885999a1c2fafe8a7ff324573ca0e5bb6e1887ff" [label=""];
  "sha256:34c7d75f4f8df9e276e26bdb885999a1c2fafe8a7ff324573ca0e5bb6e1887ff" -> "sha256:f577eb5f826b95f18fe1b7fe84f1d83fe52e5a22b1a446e7f6831fb870fcd8cf" [label=""];
  "sha256:f577eb5f826b95f18fe1b7fe84f1d83fe52e5a22b1a446e7f6831fb870fcd8cf" -> "sha256:4a21ccb6f2743e2f51d8cd30dc249cc890c51801b657084da5689dd83339a0fe" [label=""];
  "sha256:4a21ccb6f2743e2f51d8cd30dc249cc890c51801b657084da5689dd83339a0fe" -> "sha256:15fb97a71d8ead59125a88bf69e5f4425bc28e3a0d177b06783c1b2c7300c234" [label=""];
  "sha256:9c9b79951c872e4c73d4fd8658cb2e4ff9d237a7ffda5929b8348479eb5c8339" -> "sha256:15fb97a71d8ead59125a88bf69e5f4425bc28e3a0d177b06783c1b2c7300c234" [label=""];
  "sha256:15fb97a71d8ead59125a88bf69e5f4425bc28e3a0d177b06783c1b2c7300c234" -> "sha256:f2d45b296a556d4fee0a9870bf71b0776df2f8678b9982001a90f15456176a0d" [label=""];
  "sha256:9c9b79951c872e4c73d4fd8658cb2e4ff9d237a7ffda5929b8348479eb5c8339" -> "sha256:f2d45b296a556d4fee0a9870bf71b0776df2f8678b9982001a90f15456176a0d" [label=""];
  "sha256:f2d45b296a556d4fee0a9870bf71b0776df2f8678b9982001a90f15456176a0d" -> "sha256:31121301370bfa3dad41945509336814d62c00bef3db9fe604129c19fd149bac" [label=""];
}

