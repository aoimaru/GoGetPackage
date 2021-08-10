[app/sources/253115860.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:d93cd7e016aac7b02220846628c8f5cc37eebc401169c8c9116dbb1500efa368" [label="local://context" shape="ellipse"];
  "sha256:5b4147fa7c1ff9170ea12043d9745c727cba06d385d8cc6863e17ca1d420472b" [label="copy{src=/target/oauth2-refresh-token.jar, dest=/server.jar}" shape="note"];
  "sha256:a68535717c623130c4c31593a640b4cf0673b0c87dbcac1a3c7a95010b3710a9" [label="sha256:a68535717c623130c4c31593a640b4cf0673b0c87dbcac1a3c7a95010b3710a9" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:5b4147fa7c1ff9170ea12043d9745c727cba06d385d8cc6863e17ca1d420472b" [label=""];
  "sha256:d93cd7e016aac7b02220846628c8f5cc37eebc401169c8c9116dbb1500efa368" -> "sha256:5b4147fa7c1ff9170ea12043d9745c727cba06d385d8cc6863e17ca1d420472b" [label=""];
  "sha256:5b4147fa7c1ff9170ea12043d9745c727cba06d385d8cc6863e17ca1d420472b" -> "sha256:a68535717c623130c4c31593a640b4cf0673b0c87dbcac1a3c7a95010b3710a9" [label=""];
}

