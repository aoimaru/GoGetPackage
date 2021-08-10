[app/sources/257385711.Dockerfile]
digraph {
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:044ccdf720c039d8b9336c105e014ad5bde67a72fbaf82e7192cb613a5d544e8" [label="/bin/sh -c apk update" shape="box"];
  "sha256:268cfb09dc8756f5d9c643e90216a1d2e99f66abdf90cffd7d1b2a740ff76564" [label="/bin/sh -c apk upgrade" shape="box"];
  "sha256:c10144a22ba043c66ef54264bfe6a9a7a8526d5f6df28505643ab4e67803165b" [label="/bin/sh -c apk add bash curl" shape="box"];
  "sha256:cc87bdac2248f06ca2fa315efd89dcdfbf999e8b2a50816cf987c66e5f84815d" [label="local://context" shape="ellipse"];
  "sha256:99a83abab4eee00dea7eb2d20e79642d755095231fcc0932f7819fecb5329b73" [label="copy{src=/build/libs/cerberus.jar, dest=/}" shape="note"];
  "sha256:584e7a40af0e0781ca57cba1c1599458a5dc8e4dc13787a6534964f4f3b7610a" [label="copy{src=/cerberus-no-update.sh, dest=/cerberus}" shape="note"];
  "sha256:f0dcb4a1ae9ae519378648156a8f018d7851da789cba231a21d1c26a36b752e4" [label="copy{src=/execute-cerberus-lifecycle-cli-command.sh, dest=/}" shape="note"];
  "sha256:962e67e741409dae91936f0df591aae954c8787fc29d384f61fd2f7f405afeab" [label="copy{src=/execute-cerberus-lifecycle-cli-command-signalfx.sh, dest=/}" shape="note"];
  "sha256:be4020b88b181ec7f07c12db22186723b0d49753dac1b53a675db0d31b78d9f6" [label="/bin/sh -c chmod +x ./cerberus" shape="box"];
  "sha256:54456db0155b8743be79f11a65fb78a886b043405504a0d9e8d428adb0ff56aa" [label="sha256:54456db0155b8743be79f11a65fb78a886b043405504a0d9e8d428adb0ff56aa" shape="plaintext"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:044ccdf720c039d8b9336c105e014ad5bde67a72fbaf82e7192cb613a5d544e8" [label=""];
  "sha256:044ccdf720c039d8b9336c105e014ad5bde67a72fbaf82e7192cb613a5d544e8" -> "sha256:268cfb09dc8756f5d9c643e90216a1d2e99f66abdf90cffd7d1b2a740ff76564" [label=""];
  "sha256:268cfb09dc8756f5d9c643e90216a1d2e99f66abdf90cffd7d1b2a740ff76564" -> "sha256:c10144a22ba043c66ef54264bfe6a9a7a8526d5f6df28505643ab4e67803165b" [label=""];
  "sha256:c10144a22ba043c66ef54264bfe6a9a7a8526d5f6df28505643ab4e67803165b" -> "sha256:99a83abab4eee00dea7eb2d20e79642d755095231fcc0932f7819fecb5329b73" [label=""];
  "sha256:cc87bdac2248f06ca2fa315efd89dcdfbf999e8b2a50816cf987c66e5f84815d" -> "sha256:99a83abab4eee00dea7eb2d20e79642d755095231fcc0932f7819fecb5329b73" [label=""];
  "sha256:99a83abab4eee00dea7eb2d20e79642d755095231fcc0932f7819fecb5329b73" -> "sha256:584e7a40af0e0781ca57cba1c1599458a5dc8e4dc13787a6534964f4f3b7610a" [label=""];
  "sha256:cc87bdac2248f06ca2fa315efd89dcdfbf999e8b2a50816cf987c66e5f84815d" -> "sha256:584e7a40af0e0781ca57cba1c1599458a5dc8e4dc13787a6534964f4f3b7610a" [label=""];
  "sha256:584e7a40af0e0781ca57cba1c1599458a5dc8e4dc13787a6534964f4f3b7610a" -> "sha256:f0dcb4a1ae9ae519378648156a8f018d7851da789cba231a21d1c26a36b752e4" [label=""];
  "sha256:cc87bdac2248f06ca2fa315efd89dcdfbf999e8b2a50816cf987c66e5f84815d" -> "sha256:f0dcb4a1ae9ae519378648156a8f018d7851da789cba231a21d1c26a36b752e4" [label=""];
  "sha256:f0dcb4a1ae9ae519378648156a8f018d7851da789cba231a21d1c26a36b752e4" -> "sha256:962e67e741409dae91936f0df591aae954c8787fc29d384f61fd2f7f405afeab" [label=""];
  "sha256:cc87bdac2248f06ca2fa315efd89dcdfbf999e8b2a50816cf987c66e5f84815d" -> "sha256:962e67e741409dae91936f0df591aae954c8787fc29d384f61fd2f7f405afeab" [label=""];
  "sha256:962e67e741409dae91936f0df591aae954c8787fc29d384f61fd2f7f405afeab" -> "sha256:be4020b88b181ec7f07c12db22186723b0d49753dac1b53a675db0d31b78d9f6" [label=""];
  "sha256:be4020b88b181ec7f07c12db22186723b0d49753dac1b53a675db0d31b78d9f6" -> "sha256:54456db0155b8743be79f11a65fb78a886b043405504a0d9e8d428adb0ff56aa" [label=""];
}

