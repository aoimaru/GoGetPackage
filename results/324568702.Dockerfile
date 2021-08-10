[app/sources/324568702.Dockerfile]
digraph {
  "sha256:bba4d1b51aa313ca8958d6e2bb08beb5dc3311bfa85d8fee2161cc8f036be828" [label="docker-image://docker.io/openwhisk/action-swift-v3.1.1:1.0.0" shape="ellipse"];
  "sha256:931c0a99ff7f2f44bd0363e7ef6abd8490302fd3d131e639e64589dcb16c5cb5" [label="/bin/sh -c chgrp -R 0 /swift3Action   && chmod -R g+rwX /swift3Action" shape="box"];
  "sha256:ea3de8ad56b7222189fe5bc8dcf226d4eb93bddbd9da00cbdbc02385a2dd818b" [label="sha256:ea3de8ad56b7222189fe5bc8dcf226d4eb93bddbd9da00cbdbc02385a2dd818b" shape="plaintext"];
  "sha256:bba4d1b51aa313ca8958d6e2bb08beb5dc3311bfa85d8fee2161cc8f036be828" -> "sha256:931c0a99ff7f2f44bd0363e7ef6abd8490302fd3d131e639e64589dcb16c5cb5" [label=""];
  "sha256:931c0a99ff7f2f44bd0363e7ef6abd8490302fd3d131e639e64589dcb16c5cb5" -> "sha256:ea3de8ad56b7222189fe5bc8dcf226d4eb93bddbd9da00cbdbc02385a2dd818b" [label=""];
}

