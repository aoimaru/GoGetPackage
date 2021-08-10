[app/sources/305105407.Dockerfile]
digraph {
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" [label="docker-image://docker.io/library/python:3.7" shape="ellipse"];
  "sha256:90944534de18699609b65c5a7cef1964816561c9d95f1f3b81c8a37ee64fd6b2" [label="mkdir{path=/app}" shape="note"];
  "sha256:e15b07d1cec11111009e239402bddfce57bf6c8b769e1c81bf9049f7a4c911ba" [label="local://context" shape="ellipse"];
  "sha256:27e110f919c509d5d8ebbd21e7e9a43fd1fbeacce15fc76a47213acb5d6d20fd" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:4300d937c37479c9c996b5703220abd739335da45d6074d03a0e9fac4bcdc115" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:b2a1a204d80681f473d48db2a058a2bde16be70465c03e34681847e1b079c619" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:485b7f6010af15762a3cf8ea2edb1b1349daf5a115beb20f199c59c5ff77960d" [label="sha256:485b7f6010af15762a3cf8ea2edb1b1349daf5a115beb20f199c59c5ff77960d" shape="plaintext"];
  "sha256:d7e6c383a204ad229f1de34acc46b7a4fa96e4e2006370caf5c4ee33014f7572" -> "sha256:90944534de18699609b65c5a7cef1964816561c9d95f1f3b81c8a37ee64fd6b2" [label=""];
  "sha256:90944534de18699609b65c5a7cef1964816561c9d95f1f3b81c8a37ee64fd6b2" -> "sha256:27e110f919c509d5d8ebbd21e7e9a43fd1fbeacce15fc76a47213acb5d6d20fd" [label=""];
  "sha256:e15b07d1cec11111009e239402bddfce57bf6c8b769e1c81bf9049f7a4c911ba" -> "sha256:27e110f919c509d5d8ebbd21e7e9a43fd1fbeacce15fc76a47213acb5d6d20fd" [label=""];
  "sha256:27e110f919c509d5d8ebbd21e7e9a43fd1fbeacce15fc76a47213acb5d6d20fd" -> "sha256:4300d937c37479c9c996b5703220abd739335da45d6074d03a0e9fac4bcdc115" [label=""];
  "sha256:4300d937c37479c9c996b5703220abd739335da45d6074d03a0e9fac4bcdc115" -> "sha256:b2a1a204d80681f473d48db2a058a2bde16be70465c03e34681847e1b079c619" [label=""];
  "sha256:e15b07d1cec11111009e239402bddfce57bf6c8b769e1c81bf9049f7a4c911ba" -> "sha256:b2a1a204d80681f473d48db2a058a2bde16be70465c03e34681847e1b079c619" [label=""];
  "sha256:b2a1a204d80681f473d48db2a058a2bde16be70465c03e34681847e1b079c619" -> "sha256:485b7f6010af15762a3cf8ea2edb1b1349daf5a115beb20f199c59c5ff77960d" [label=""];
}

