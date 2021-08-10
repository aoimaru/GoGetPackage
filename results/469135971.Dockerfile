[app/sources/469135971.Dockerfile]
digraph {
  "sha256:d551b1f9c83fa02cbc464dc92f0ff80bf4f877c76a8674b08983b142dadd15ec" [label="docker-image://registry.svc.ci.openshift.org/ocp/4.1:base" shape="ellipse"];
  "sha256:4225a22b17b0c7155907f16e1b196360d9628a9ecb87be0e20c1dc9886c5ddbb" [label="docker-image://registry.svc.ci.openshift.org/ocp/builder:golang-1.10" shape="ellipse"];
  "sha256:3d72328a5287f1d12cadfda7d4cd9b514b283cd7b63ec32841993da3a3155178" [label="mkdir{path=/go/src/github.com/openshift/installer}" shape="note"];
  "sha256:a94425ad41eab35498be29c2946654f7abce077c90097c8ccf1f6e661b66ffa6" [label="local://context" shape="ellipse"];
  "sha256:b76966da0a905565aaa3d8b485863ba1f09298ed6bb64f96040b7a598d08cceb" [label="copy{src=/, dest=/go/src/github.com/openshift/installer/}" shape="note"];
  "sha256:7ffa7943beaff2ba1ab550cdfe6a9a6c398fb27129f4dd852df2a3d81b6b39a9" [label="/bin/sh -c hack/build.sh" shape="box"];
  "sha256:44ace688f06feb61d5cb5641c3bd6f77a49a0e8590cce6f992af65949eb19af9" [label="copy{src=/go/src/github.com/openshift/installer/bin/openshift-install, dest=/bin/openshift-install}" shape="note"];
  "sha256:1b776ec01e64115e3eec8a9aa83658960829a6745bc893cf3bf922022502aeb0" [label="/bin/sh -c mkdir /output && chown 1000:1000 /output" shape="box"];
  "sha256:301e900ecf56a1bb077ae9cd3929f660ec485958811852a3c2d426ad929cd0bc" [label="mkdir{path=/output}" shape="note"];
  "sha256:614eca48f0cdb2720eaa25161ca9c242c15f2535aeded9a04350f47dee5d3d5d" [label="sha256:614eca48f0cdb2720eaa25161ca9c242c15f2535aeded9a04350f47dee5d3d5d" shape="plaintext"];
  "sha256:4225a22b17b0c7155907f16e1b196360d9628a9ecb87be0e20c1dc9886c5ddbb" -> "sha256:3d72328a5287f1d12cadfda7d4cd9b514b283cd7b63ec32841993da3a3155178" [label=""];
  "sha256:3d72328a5287f1d12cadfda7d4cd9b514b283cd7b63ec32841993da3a3155178" -> "sha256:b76966da0a905565aaa3d8b485863ba1f09298ed6bb64f96040b7a598d08cceb" [label=""];
  "sha256:a94425ad41eab35498be29c2946654f7abce077c90097c8ccf1f6e661b66ffa6" -> "sha256:b76966da0a905565aaa3d8b485863ba1f09298ed6bb64f96040b7a598d08cceb" [label=""];
  "sha256:b76966da0a905565aaa3d8b485863ba1f09298ed6bb64f96040b7a598d08cceb" -> "sha256:7ffa7943beaff2ba1ab550cdfe6a9a6c398fb27129f4dd852df2a3d81b6b39a9" [label=""];
  "sha256:d551b1f9c83fa02cbc464dc92f0ff80bf4f877c76a8674b08983b142dadd15ec" -> "sha256:44ace688f06feb61d5cb5641c3bd6f77a49a0e8590cce6f992af65949eb19af9" [label=""];
  "sha256:7ffa7943beaff2ba1ab550cdfe6a9a6c398fb27129f4dd852df2a3d81b6b39a9" -> "sha256:44ace688f06feb61d5cb5641c3bd6f77a49a0e8590cce6f992af65949eb19af9" [label=""];
  "sha256:44ace688f06feb61d5cb5641c3bd6f77a49a0e8590cce6f992af65949eb19af9" -> "sha256:1b776ec01e64115e3eec8a9aa83658960829a6745bc893cf3bf922022502aeb0" [label=""];
  "sha256:1b776ec01e64115e3eec8a9aa83658960829a6745bc893cf3bf922022502aeb0" -> "sha256:301e900ecf56a1bb077ae9cd3929f660ec485958811852a3c2d426ad929cd0bc" [label=""];
  "sha256:301e900ecf56a1bb077ae9cd3929f660ec485958811852a3c2d426ad929cd0bc" -> "sha256:614eca48f0cdb2720eaa25161ca9c242c15f2535aeded9a04350f47dee5d3d5d" [label=""];
}

