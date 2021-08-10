[app/sources/362692632.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:41cb2856b76cf124ff1c4d482423e5c93b368092f5d91cf7ba08818c63c67e21" [label="https://raw.githubusercontent.com/Jinmo/AssemblyLearner/master/install.sh" shape="ellipse"];
  "sha256:54a07bd1fc0281c58edd1aa414822773ed536609298b8acea2cf49bfa0271245" [label="copy{src=/install.sh, dest=/install.sh}" shape="note"];
  "sha256:2dcfd5625b2f9d822268087f1547ec2809864e324706e050138cd10f57b9d514" [label="https://raw.githubusercontent.com/Jinmo/AssemblyLearner/master/scripts/start" shape="ellipse"];
  "sha256:0bdc87ee3372413e975998fbe3787bc9f95d0e5d8cf0b3557610c8508931811a" [label="copy{src=/start, dest=/scripts/start}" shape="note"];
  "sha256:76f1a2e1dd39e06e048cb762784a60af9134952c7068b4856628cd415ce1482c" [label="https://raw.githubusercontent.com/Jinmo/AssemblyLearner/master/scripts/stop" shape="ellipse"];
  "sha256:0fd9b4ae17bd13587efba431f32eb4c9c7ec51f9685c18aaf6dea9a00eb669eb" [label="copy{src=/stop, dest=/scripts/stop}" shape="note"];
  "sha256:65973427b26b59bbd0384c35469b9805628ef8e933733d93383c7820ae8d5abf" [label="/bin/sh -c chmod +x /install.sh /scripts/start /scripts/stop" shape="box"];
  "sha256:c4f06b7d6fcf3341beb4c422b2cca6e6ebdc84606f4698ce15b807fbca108a1c" [label="/bin/sh -c /install.sh" shape="box"];
  "sha256:7b4ff344524261ee33b5ccb99a70e80fa5ab5b558f111259cbbf950c65336d05" [label="sha256:7b4ff344524261ee33b5ccb99a70e80fa5ab5b558f111259cbbf950c65336d05" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:54a07bd1fc0281c58edd1aa414822773ed536609298b8acea2cf49bfa0271245" [label=""];
  "sha256:41cb2856b76cf124ff1c4d482423e5c93b368092f5d91cf7ba08818c63c67e21" -> "sha256:54a07bd1fc0281c58edd1aa414822773ed536609298b8acea2cf49bfa0271245" [label=""];
  "sha256:54a07bd1fc0281c58edd1aa414822773ed536609298b8acea2cf49bfa0271245" -> "sha256:0bdc87ee3372413e975998fbe3787bc9f95d0e5d8cf0b3557610c8508931811a" [label=""];
  "sha256:2dcfd5625b2f9d822268087f1547ec2809864e324706e050138cd10f57b9d514" -> "sha256:0bdc87ee3372413e975998fbe3787bc9f95d0e5d8cf0b3557610c8508931811a" [label=""];
  "sha256:0bdc87ee3372413e975998fbe3787bc9f95d0e5d8cf0b3557610c8508931811a" -> "sha256:0fd9b4ae17bd13587efba431f32eb4c9c7ec51f9685c18aaf6dea9a00eb669eb" [label=""];
  "sha256:76f1a2e1dd39e06e048cb762784a60af9134952c7068b4856628cd415ce1482c" -> "sha256:0fd9b4ae17bd13587efba431f32eb4c9c7ec51f9685c18aaf6dea9a00eb669eb" [label=""];
  "sha256:0fd9b4ae17bd13587efba431f32eb4c9c7ec51f9685c18aaf6dea9a00eb669eb" -> "sha256:65973427b26b59bbd0384c35469b9805628ef8e933733d93383c7820ae8d5abf" [label=""];
  "sha256:65973427b26b59bbd0384c35469b9805628ef8e933733d93383c7820ae8d5abf" -> "sha256:c4f06b7d6fcf3341beb4c422b2cca6e6ebdc84606f4698ce15b807fbca108a1c" [label=""];
  "sha256:c4f06b7d6fcf3341beb4c422b2cca6e6ebdc84606f4698ce15b807fbca108a1c" -> "sha256:7b4ff344524261ee33b5ccb99a70e80fa5ab5b558f111259cbbf950c65336d05" [label=""];
}

