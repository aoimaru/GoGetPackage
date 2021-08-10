[app/sources/282320719.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:1c8bee22b512299f61a56e72afafae4123c103a874f956e44915d5393bc2cc66" [label="local://context" shape="ellipse"];
  "sha256:790e74d6ca7ddb834c4d7fbc2a9024209db38aaaa48e7ea74964efabbe67f3fe" [label="copy{src=/, dest=/dns-backend}" shape="note"];
  "sha256:561a126901b1849f3b94503649bd39830b8f2a895f08bea83415132468e8ce9d" [label="mkdir{path=/dns-backend}" shape="note"];
  "sha256:19814eef24bd5a99fc20bf65cc74a3394b6f9df4d61f5b79e43c1140a4bc934b" [label="sha256:19814eef24bd5a99fc20bf65cc74a3394b6f9df4d61f5b79e43c1140a4bc934b" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:790e74d6ca7ddb834c4d7fbc2a9024209db38aaaa48e7ea74964efabbe67f3fe" [label=""];
  "sha256:1c8bee22b512299f61a56e72afafae4123c103a874f956e44915d5393bc2cc66" -> "sha256:790e74d6ca7ddb834c4d7fbc2a9024209db38aaaa48e7ea74964efabbe67f3fe" [label=""];
  "sha256:790e74d6ca7ddb834c4d7fbc2a9024209db38aaaa48e7ea74964efabbe67f3fe" -> "sha256:561a126901b1849f3b94503649bd39830b8f2a895f08bea83415132468e8ce9d" [label=""];
  "sha256:561a126901b1849f3b94503649bd39830b8f2a895f08bea83415132468e8ce9d" -> "sha256:19814eef24bd5a99fc20bf65cc74a3394b6f9df4d61f5b79e43c1140a4bc934b" [label=""];
}

