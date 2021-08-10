[app/sources/285635350.Dockerfile]
digraph {
  "sha256:a762076ac48da6f40e47fb40b62332449ef95d4b37b09e61aee3fe0e16e7397e" [label="local://context" shape="ellipse"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:a2cbf260569ff102fb0763c68253b7f04bb943b955a1efcb460f36791d2ab96b" [label="copy{src=/nfsplugin, dest=/nfsplugin}" shape="note"];
  "sha256:2735406fe932a5fb5b1755ff4c8871c246dabf8b474bf609ce1b3f745fc387da" [label="/bin/sh -c yum -y install nfs-utils && yum -y install epel-release && yum -y install jq && yum clean all" shape="box"];
  "sha256:80a701e336859edf354d51493649259f7e4c8295e96bc19683d47d4b12ecdd54" [label="sha256:80a701e336859edf354d51493649259f7e4c8295e96bc19683d47d4b12ecdd54" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:a2cbf260569ff102fb0763c68253b7f04bb943b955a1efcb460f36791d2ab96b" [label=""];
  "sha256:a762076ac48da6f40e47fb40b62332449ef95d4b37b09e61aee3fe0e16e7397e" -> "sha256:a2cbf260569ff102fb0763c68253b7f04bb943b955a1efcb460f36791d2ab96b" [label=""];
  "sha256:a2cbf260569ff102fb0763c68253b7f04bb943b955a1efcb460f36791d2ab96b" -> "sha256:2735406fe932a5fb5b1755ff4c8871c246dabf8b474bf609ce1b3f745fc387da" [label=""];
  "sha256:2735406fe932a5fb5b1755ff4c8871c246dabf8b474bf609ce1b3f745fc387da" -> "sha256:80a701e336859edf354d51493649259f7e4c8295e96bc19683d47d4b12ecdd54" [label=""];
}

