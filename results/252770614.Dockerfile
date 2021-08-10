[app/sources/252770614.Dockerfile]
digraph {
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" [label="docker-image://docker.io/ansibleplaybookbundle/apb-base:latest" shape="ellipse"];
  "sha256:669c0c984ce44dd61b3ee2f46ada1b3be263c38b214f42d1da84be0f448f292a" [label="local://context" shape="ellipse"];
  "sha256:6a0cdd7a16afe1d77d4b914c167a31d370a3b11aec08365620e6dddff461db51" [label="copy{src=/playbooks, dest=/opt/apb/actions}" shape="note"];
  "sha256:5621d3636953aeb1f6de99c408ff918334293c02e1b3963f3705da8a4ff30ece" [label="copy{src=/roles, dest=/opt/ansible/roles}" shape="note"];
  "sha256:fd51113179e4aaa7f36c6e19a676c469a620be52e0ba796ab7e4c9a6638859bc" [label="copy{src=/mobile, dest=/usr/bin}" shape="note"];
  "sha256:42dfa22dce77a1ae5c268609901604179d935361407465ae69c15ae0933de743" [label="/bin/sh -c chmod -R g=u /opt/{ansible,apb}" shape="box"];
  "sha256:463dbf2825895768d8423760bc750ea5c1391ec61988fc3b3212f2f46ef26a18" [label="sha256:463dbf2825895768d8423760bc750ea5c1391ec61988fc3b3212f2f46ef26a18" shape="plaintext"];
  "sha256:0fad00e2ea721bb2963d06cc2a064958741a6ed1205661b88212d8da19bc142a" -> "sha256:6a0cdd7a16afe1d77d4b914c167a31d370a3b11aec08365620e6dddff461db51" [label=""];
  "sha256:669c0c984ce44dd61b3ee2f46ada1b3be263c38b214f42d1da84be0f448f292a" -> "sha256:6a0cdd7a16afe1d77d4b914c167a31d370a3b11aec08365620e6dddff461db51" [label=""];
  "sha256:6a0cdd7a16afe1d77d4b914c167a31d370a3b11aec08365620e6dddff461db51" -> "sha256:5621d3636953aeb1f6de99c408ff918334293c02e1b3963f3705da8a4ff30ece" [label=""];
  "sha256:669c0c984ce44dd61b3ee2f46ada1b3be263c38b214f42d1da84be0f448f292a" -> "sha256:5621d3636953aeb1f6de99c408ff918334293c02e1b3963f3705da8a4ff30ece" [label=""];
  "sha256:5621d3636953aeb1f6de99c408ff918334293c02e1b3963f3705da8a4ff30ece" -> "sha256:fd51113179e4aaa7f36c6e19a676c469a620be52e0ba796ab7e4c9a6638859bc" [label=""];
  "sha256:669c0c984ce44dd61b3ee2f46ada1b3be263c38b214f42d1da84be0f448f292a" -> "sha256:fd51113179e4aaa7f36c6e19a676c469a620be52e0ba796ab7e4c9a6638859bc" [label=""];
  "sha256:fd51113179e4aaa7f36c6e19a676c469a620be52e0ba796ab7e4c9a6638859bc" -> "sha256:42dfa22dce77a1ae5c268609901604179d935361407465ae69c15ae0933de743" [label=""];
  "sha256:42dfa22dce77a1ae5c268609901604179d935361407465ae69c15ae0933de743" -> "sha256:463dbf2825895768d8423760bc750ea5c1391ec61988fc3b3212f2f46ef26a18" [label=""];
}

