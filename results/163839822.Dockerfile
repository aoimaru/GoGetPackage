[app/sources/163839822.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:0b3f934e10adbef081d00ccb3ca27da4a08352bac169acedc22ca9e0f5b07307" [label="/bin/sh -c apt-get update &&   DEBIAN_FRONTEND=noninteractive apt-get install -y python-minimal python-dev curl &&   apt-get clean" shape="box"];
  "sha256:a6e47306c84ea1468268f4bfa18a901c52a54855df5397d710e4fd1423c51e91" [label="/bin/sh -c curl -sL https://bootstrap.pypa.io/get-pip.py | python -" shape="box"];
  "sha256:f6051f6fb2c178be213cc81dc781dcdff4497a087344f5f126c41cb6f6d0fa7c" [label="/bin/sh -c rm -rf $HOME/.cache" shape="box"];
  "sha256:90a9baf57039cb9a04972c4f8934d29dabf3cdcda68b7f287404f63f33599f66" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y gcc libffi-dev libssl-dev &&   apt-get clean" shape="box"];
  "sha256:5793f96e30cfca59fe3f6e38fc822a471a45478aab692000c169e4d7842577aa" [label="/bin/sh -c pip install ansible==2.3.2.0" shape="box"];
  "sha256:df4b7f3d9b99da1c988c71c70ed8ce5950b76a91de30b3a062cc6092de1ae984" [label="/bin/sh -c rm -rf $HOME/.cache" shape="box"];
  "sha256:98958ab6f72d1e1930d016d439656df3f78a527f41f4a6d623592d8c64cc4665" [label="local://context" shape="ellipse"];
  "sha256:575ec8cde30350897c6eb34281fb7acc1a1f784d4b04a1114253194a957f1b7a" [label="copy{src=/, dest=/etc/ansible/roles/ansible-role}" shape="note"];
  "sha256:bc0b37b0c3ce759f7faba5c3ccbe6b019ca60c2dfd4061d232d696fb2154cf5a" [label="mkdir{path=/etc/ansible/roles/ansible-role}" shape="note"];
  "sha256:1f00eda04b7b1faa2c506db2ca509272886b03169243c3d2684502ae6c8d6e59" [label="/bin/sh -c ansible-playbook -i tests/inventory tests/test.yml --connection=local" shape="box"];
  "sha256:db3ac6fe89d891ab911620e1f8d7cb7805c08d5bce747a62ba533eba8d83b307" [label="sha256:db3ac6fe89d891ab911620e1f8d7cb7805c08d5bce747a62ba533eba8d83b307" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:0b3f934e10adbef081d00ccb3ca27da4a08352bac169acedc22ca9e0f5b07307" [label=""];
  "sha256:0b3f934e10adbef081d00ccb3ca27da4a08352bac169acedc22ca9e0f5b07307" -> "sha256:a6e47306c84ea1468268f4bfa18a901c52a54855df5397d710e4fd1423c51e91" [label=""];
  "sha256:a6e47306c84ea1468268f4bfa18a901c52a54855df5397d710e4fd1423c51e91" -> "sha256:f6051f6fb2c178be213cc81dc781dcdff4497a087344f5f126c41cb6f6d0fa7c" [label=""];
  "sha256:f6051f6fb2c178be213cc81dc781dcdff4497a087344f5f126c41cb6f6d0fa7c" -> "sha256:90a9baf57039cb9a04972c4f8934d29dabf3cdcda68b7f287404f63f33599f66" [label=""];
  "sha256:90a9baf57039cb9a04972c4f8934d29dabf3cdcda68b7f287404f63f33599f66" -> "sha256:5793f96e30cfca59fe3f6e38fc822a471a45478aab692000c169e4d7842577aa" [label=""];
  "sha256:5793f96e30cfca59fe3f6e38fc822a471a45478aab692000c169e4d7842577aa" -> "sha256:df4b7f3d9b99da1c988c71c70ed8ce5950b76a91de30b3a062cc6092de1ae984" [label=""];
  "sha256:df4b7f3d9b99da1c988c71c70ed8ce5950b76a91de30b3a062cc6092de1ae984" -> "sha256:575ec8cde30350897c6eb34281fb7acc1a1f784d4b04a1114253194a957f1b7a" [label=""];
  "sha256:98958ab6f72d1e1930d016d439656df3f78a527f41f4a6d623592d8c64cc4665" -> "sha256:575ec8cde30350897c6eb34281fb7acc1a1f784d4b04a1114253194a957f1b7a" [label=""];
  "sha256:575ec8cde30350897c6eb34281fb7acc1a1f784d4b04a1114253194a957f1b7a" -> "sha256:bc0b37b0c3ce759f7faba5c3ccbe6b019ca60c2dfd4061d232d696fb2154cf5a" [label=""];
  "sha256:bc0b37b0c3ce759f7faba5c3ccbe6b019ca60c2dfd4061d232d696fb2154cf5a" -> "sha256:1f00eda04b7b1faa2c506db2ca509272886b03169243c3d2684502ae6c8d6e59" [label=""];
  "sha256:1f00eda04b7b1faa2c506db2ca509272886b03169243c3d2684502ae6c8d6e59" -> "sha256:db3ac6fe89d891ab911620e1f8d7cb7805c08d5bce747a62ba533eba8d83b307" [label=""];
}

