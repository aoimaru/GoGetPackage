[app/sources/178265737.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:45dcedf358be181f46530e472979081b7d2fa5e6a393c6acdd00c6a6fe62d8f3" [label="/bin/sh -c apt-get update \t&& apt-get -y install nodejs npm supervisor nginx unattended-upgrades \t&& unattended-upgrades" shape="box"];
  "sha256:7cb68dd7f12dd8b97d345dc6d9ddc777cbc596853762effba8ae41f9c4c8fbe1" [label="local://context" shape="ellipse"];
  "sha256:a23b4b6820a05a6a813f50c2656f4e78977482b8e4bfb4ac972b1a8a577fab53" [label="copy{src=/infra, dest=/home/ubuntu/infra}" shape="note"];
  "sha256:ee3f4b8b97f84890c69ad40e302f747325fcc220cd55c10f242339f96b1bf3e8" [label="copy{src=/code, dest=/home/ubuntu/code}" shape="note"];
  "sha256:531b0e0f22e55521035756f68407c000375ffc09b2a3149e8aaa1276318f0000" [label="/bin/sh -c ln -s \"$(which nodejs)\" /usr/bin/node \t&& cp /home/ubuntu/infra/supervisord.conf /etc/supervisor/supervisord.conf         && cp /home/ubuntu/infra/nginx.conf /etc/nginx/nginx.conf \t&& cd /home/ubuntu/code/; npm install \t&& cp -R /home/ubuntu/infra/supervisor/* /etc/supervisor/conf.d/" shape="box"];
  "sha256:ea0257f6b4bed78c4259682052af50c471ccac284f6e58bbf2a8ef5adeb70e95" [label="sha256:ea0257f6b4bed78c4259682052af50c471ccac284f6e58bbf2a8ef5adeb70e95" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:45dcedf358be181f46530e472979081b7d2fa5e6a393c6acdd00c6a6fe62d8f3" [label=""];
  "sha256:45dcedf358be181f46530e472979081b7d2fa5e6a393c6acdd00c6a6fe62d8f3" -> "sha256:a23b4b6820a05a6a813f50c2656f4e78977482b8e4bfb4ac972b1a8a577fab53" [label=""];
  "sha256:7cb68dd7f12dd8b97d345dc6d9ddc777cbc596853762effba8ae41f9c4c8fbe1" -> "sha256:a23b4b6820a05a6a813f50c2656f4e78977482b8e4bfb4ac972b1a8a577fab53" [label=""];
  "sha256:a23b4b6820a05a6a813f50c2656f4e78977482b8e4bfb4ac972b1a8a577fab53" -> "sha256:ee3f4b8b97f84890c69ad40e302f747325fcc220cd55c10f242339f96b1bf3e8" [label=""];
  "sha256:7cb68dd7f12dd8b97d345dc6d9ddc777cbc596853762effba8ae41f9c4c8fbe1" -> "sha256:ee3f4b8b97f84890c69ad40e302f747325fcc220cd55c10f242339f96b1bf3e8" [label=""];
  "sha256:ee3f4b8b97f84890c69ad40e302f747325fcc220cd55c10f242339f96b1bf3e8" -> "sha256:531b0e0f22e55521035756f68407c000375ffc09b2a3149e8aaa1276318f0000" [label=""];
  "sha256:531b0e0f22e55521035756f68407c000375ffc09b2a3149e8aaa1276318f0000" -> "sha256:ea0257f6b4bed78c4259682052af50c471ccac284f6e58bbf2a8ef5adeb70e95" [label=""];
}

