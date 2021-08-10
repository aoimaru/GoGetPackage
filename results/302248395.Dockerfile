[app/sources/302248395.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:e75b5df620e0a91359f331bd880bec79e27ba25b118e0fc3695e7aa7f65f41ab" [label="local://context" shape="ellipse"];
  "sha256:a3dec9ac75a83b7b071fd92cd428abf9d4238cd39059784107573b339a166c33" [label="copy{src=/*.war, dest=/app.war}" shape="note"];
  "sha256:4d8f2e5e46cc78180cbba5f4cd171f020c551e0f5dfe55cd8bbf2dfd4229d6e9" [label="sha256:4d8f2e5e46cc78180cbba5f4cd171f020c551e0f5dfe55cd8bbf2dfd4229d6e9" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:a3dec9ac75a83b7b071fd92cd428abf9d4238cd39059784107573b339a166c33" [label=""];
  "sha256:e75b5df620e0a91359f331bd880bec79e27ba25b118e0fc3695e7aa7f65f41ab" -> "sha256:a3dec9ac75a83b7b071fd92cd428abf9d4238cd39059784107573b339a166c33" [label=""];
  "sha256:a3dec9ac75a83b7b071fd92cd428abf9d4238cd39059784107573b339a166c33" -> "sha256:4d8f2e5e46cc78180cbba5f4cd171f020c551e0f5dfe55cd8bbf2dfd4229d6e9" [label=""];
}

