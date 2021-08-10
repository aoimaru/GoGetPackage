[app/sources/252770608.Dockerfile]
digraph {
  "sha256:8fafcfc75720187f0b162603b63ee6eaa958a69fc4a61c63c7580279ac2e50ec" [label="local://context" shape="ellipse"];
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" [label="docker-image://docker.io/ansibleplaybookbundle/apb-base:latest" shape="ellipse"];
  "sha256:4a1f05acea644220f7a0098fa28321186cef109a959fabffba998ee9c1ada11e" [label="copy{src=/playbooks, dest=/opt/apb/actions}" shape="note"];
  "sha256:81f5d74911e68818708f7059eabde60e63caeccc1b1abd32ba4222f17159aa5f" [label="copy{src=/roles, dest=/opt/ansible/roles}" shape="note"];
  "sha256:ed84408acff61d6d39c91901d7dce7f5cba31dc9712c85da99107b956acd8d68" [label="copy{src=/vars, dest=/opt/ansible/vars}" shape="note"];
  "sha256:fff27e28757f1df43c235c3ed36e17e986d0962fcf50aa685996490173267c24" [label="/bin/sh -c chmod -R g=u /opt/{ansible,apb}" shape="box"];
  "sha256:f6076226ec179cd7a1cc222311aae21b1431f140c2e94fc5c4fc4bbefe289aff" [label="sha256:f6076226ec179cd7a1cc222311aae21b1431f140c2e94fc5c4fc4bbefe289aff" shape="plaintext"];
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" -> "sha256:4a1f05acea644220f7a0098fa28321186cef109a959fabffba998ee9c1ada11e" [label=""];
  "sha256:8fafcfc75720187f0b162603b63ee6eaa958a69fc4a61c63c7580279ac2e50ec" -> "sha256:4a1f05acea644220f7a0098fa28321186cef109a959fabffba998ee9c1ada11e" [label=""];
  "sha256:4a1f05acea644220f7a0098fa28321186cef109a959fabffba998ee9c1ada11e" -> "sha256:81f5d74911e68818708f7059eabde60e63caeccc1b1abd32ba4222f17159aa5f" [label=""];
  "sha256:8fafcfc75720187f0b162603b63ee6eaa958a69fc4a61c63c7580279ac2e50ec" -> "sha256:81f5d74911e68818708f7059eabde60e63caeccc1b1abd32ba4222f17159aa5f" [label=""];
  "sha256:81f5d74911e68818708f7059eabde60e63caeccc1b1abd32ba4222f17159aa5f" -> "sha256:ed84408acff61d6d39c91901d7dce7f5cba31dc9712c85da99107b956acd8d68" [label=""];
  "sha256:8fafcfc75720187f0b162603b63ee6eaa958a69fc4a61c63c7580279ac2e50ec" -> "sha256:ed84408acff61d6d39c91901d7dce7f5cba31dc9712c85da99107b956acd8d68" [label=""];
  "sha256:ed84408acff61d6d39c91901d7dce7f5cba31dc9712c85da99107b956acd8d68" -> "sha256:fff27e28757f1df43c235c3ed36e17e986d0962fcf50aa685996490173267c24" [label=""];
  "sha256:fff27e28757f1df43c235c3ed36e17e986d0962fcf50aa685996490173267c24" -> "sha256:f6076226ec179cd7a1cc222311aae21b1431f140c2e94fc5c4fc4bbefe289aff" [label=""];
}

