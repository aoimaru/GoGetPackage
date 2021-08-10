[app/sources/469292342.Dockerfile]
digraph {
  "sha256:13079caed59d77e8a2fe2a5f6013c82deb5500ae3fbc1db2ac906fe67dee84ac" [label="docker-image://docker.io/stdutil/env:0.0.1" shape="ellipse"];
  "sha256:c0033d400ee6f88cb60c34a3f443167fa428293901e73476a9ee0d7c2888ee82" [label="local://context" shape="ellipse"];
  "sha256:972888e362619f69df769cc1a32d64383dd05fbc21a5adfae9f7d2f9468708ca" [label="copy{src=/target, dest=/usr/local/tomcat/webapps/blog.war}" shape="note"];
  "sha256:663f159c81a26863e08a04e22a927aaad8d0c595086566ef8044344c50eda302" [label="copy{src=/docker/run.sh, dest=/}" shape="note"];
  "sha256:5762190a072664f546c933b556fcc60d446ccde69e135f35909c2d059df3cbb5" [label="copy{src=/docker/server.xml, dest=/usr/local/tomcat/conf/}" shape="note"];
  "sha256:c5902bf2677771c9eed76042a65f3f0e461a8b296ae0df3e9b92f6fbefb363d9" [label="sha256:c5902bf2677771c9eed76042a65f3f0e461a8b296ae0df3e9b92f6fbefb363d9" shape="plaintext"];
  "sha256:13079caed59d77e8a2fe2a5f6013c82deb5500ae3fbc1db2ac906fe67dee84ac" -> "sha256:972888e362619f69df769cc1a32d64383dd05fbc21a5adfae9f7d2f9468708ca" [label=""];
  "sha256:c0033d400ee6f88cb60c34a3f443167fa428293901e73476a9ee0d7c2888ee82" -> "sha256:972888e362619f69df769cc1a32d64383dd05fbc21a5adfae9f7d2f9468708ca" [label=""];
  "sha256:972888e362619f69df769cc1a32d64383dd05fbc21a5adfae9f7d2f9468708ca" -> "sha256:663f159c81a26863e08a04e22a927aaad8d0c595086566ef8044344c50eda302" [label=""];
  "sha256:c0033d400ee6f88cb60c34a3f443167fa428293901e73476a9ee0d7c2888ee82" -> "sha256:663f159c81a26863e08a04e22a927aaad8d0c595086566ef8044344c50eda302" [label=""];
  "sha256:663f159c81a26863e08a04e22a927aaad8d0c595086566ef8044344c50eda302" -> "sha256:5762190a072664f546c933b556fcc60d446ccde69e135f35909c2d059df3cbb5" [label=""];
  "sha256:c0033d400ee6f88cb60c34a3f443167fa428293901e73476a9ee0d7c2888ee82" -> "sha256:5762190a072664f546c933b556fcc60d446ccde69e135f35909c2d059df3cbb5" [label=""];
  "sha256:5762190a072664f546c933b556fcc60d446ccde69e135f35909c2d059df3cbb5" -> "sha256:c5902bf2677771c9eed76042a65f3f0e461a8b296ae0df3e9b92f6fbefb363d9" [label=""];
}

