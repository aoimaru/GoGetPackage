[app/sources/331638426.Dockerfile]
digraph {
  "sha256:60c7373905e8921546840eb405625571de447ee024882ff52dc6886939ae6221" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:8ffe8d99f37d2eb5bdd1b1abb3795323fc2302eda35d25252bf25c1305b542e4" [label="/bin/sh -c mkdir -p /opt/patrowl-engines/nessus" shape="box"];
  "sha256:29ea6a11ba89a48c7d2f36944aeb480667294fb0595b246ef9249022cd2415c5" [label="/bin/sh -c mkdir -p /opt/patrowl-engines/nessus/results" shape="box"];
  "sha256:b13dce886bd9345587fa5ef054bf214228444a2d1f489cded133e11bbcd2b03c" [label="/bin/sh -c mkdir -p /opt/patrowl-engines/nessus/reports" shape="box"];
  "sha256:ac27a546b6f2ba0d89895ce2b32fa960a9c37f1d40ab5dbafe641fd524f1a816" [label="mkdir{path=/opt/patrowl-engines/nessus}" shape="note"];
  "sha256:35033c92a47ab9dfedb9a8f6cb7fc8f9495bab1c708ea280545bbdddbe1ad397" [label="copy{src=/__init__.py, dest=/opt/patrowl-engines/nessus/}" shape="note"];
  "sha256:2f3fc34189a192676d169d29a81377d6bdd29637c94fd11515809e0ea78762f6" [label="copy{src=/engine-nessus.py, dest=/opt/patrowl-engines/nessus/}" shape="note"];
  "sha256:8d77be9caced926e3c103d6a35b2b54fa78d53dac16017dcad879c2dcc9f58f4" [label="copy{src=/nessus.json.sample, dest=/opt/patrowl-engines/nessus/nessus.json}" shape="note"];
  "sha256:518134b2e98d94074a0251bf2a728f8ed92b8d7e89d73fb457efb4c8638ff770" [label="copy{src=/requirements.txt, dest=/opt/patrowl-engines/nessus/}" shape="note"];
  "sha256:335db3ab0d5a3586949d78e76f60177f55547ae32dee2ced97d19a15870a23ad" [label="copy{src=/README.md, dest=/opt/patrowl-engines/nessus/}" shape="note"];
  "sha256:a3598f1175f29126724feadc8e11ec2585ce11a9f992d8d0b28eb033839d4c3e" [label="copy{src=/etc, dest=/opt/patrowl-engines/nessus/etc/}" shape="note"];
  "sha256:6f22e1717d7e855c3daac765a95946afe3c43d22ab3759c3695ff5406fbc769c" [label="/bin/sh -c apk add --update     python     python-dev     py3-pip   && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:e4f686a09ab68c43bf0d943adb7e1ba445964429cd4a9e5845b21a4b1e6dade2" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:1d3037723685d190cc66be001df96142158a61d59acd37fb5a2b480db744f250" [label="/bin/sh -c pip3 install --trusted-host pypi.python.org -r requirements.txt" shape="box"];
  "sha256:10bc8e5d28b4e56aefd2df45017eed1a58cf9431852c3e2f374f75e4bc745369" [label="sha256:10bc8e5d28b4e56aefd2df45017eed1a58cf9431852c3e2f374f75e4bc745369" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:8ffe8d99f37d2eb5bdd1b1abb3795323fc2302eda35d25252bf25c1305b542e4" [label=""];
  "sha256:8ffe8d99f37d2eb5bdd1b1abb3795323fc2302eda35d25252bf25c1305b542e4" -> "sha256:29ea6a11ba89a48c7d2f36944aeb480667294fb0595b246ef9249022cd2415c5" [label=""];
  "sha256:29ea6a11ba89a48c7d2f36944aeb480667294fb0595b246ef9249022cd2415c5" -> "sha256:b13dce886bd9345587fa5ef054bf214228444a2d1f489cded133e11bbcd2b03c" [label=""];
  "sha256:b13dce886bd9345587fa5ef054bf214228444a2d1f489cded133e11bbcd2b03c" -> "sha256:ac27a546b6f2ba0d89895ce2b32fa960a9c37f1d40ab5dbafe641fd524f1a816" [label=""];
  "sha256:ac27a546b6f2ba0d89895ce2b32fa960a9c37f1d40ab5dbafe641fd524f1a816" -> "sha256:35033c92a47ab9dfedb9a8f6cb7fc8f9495bab1c708ea280545bbdddbe1ad397" [label=""];
  "sha256:60c7373905e8921546840eb405625571de447ee024882ff52dc6886939ae6221" -> "sha256:35033c92a47ab9dfedb9a8f6cb7fc8f9495bab1c708ea280545bbdddbe1ad397" [label=""];
  "sha256:35033c92a47ab9dfedb9a8f6cb7fc8f9495bab1c708ea280545bbdddbe1ad397" -> "sha256:2f3fc34189a192676d169d29a81377d6bdd29637c94fd11515809e0ea78762f6" [label=""];
  "sha256:60c7373905e8921546840eb405625571de447ee024882ff52dc6886939ae6221" -> "sha256:2f3fc34189a192676d169d29a81377d6bdd29637c94fd11515809e0ea78762f6" [label=""];
  "sha256:2f3fc34189a192676d169d29a81377d6bdd29637c94fd11515809e0ea78762f6" -> "sha256:8d77be9caced926e3c103d6a35b2b54fa78d53dac16017dcad879c2dcc9f58f4" [label=""];
  "sha256:60c7373905e8921546840eb405625571de447ee024882ff52dc6886939ae6221" -> "sha256:8d77be9caced926e3c103d6a35b2b54fa78d53dac16017dcad879c2dcc9f58f4" [label=""];
  "sha256:8d77be9caced926e3c103d6a35b2b54fa78d53dac16017dcad879c2dcc9f58f4" -> "sha256:518134b2e98d94074a0251bf2a728f8ed92b8d7e89d73fb457efb4c8638ff770" [label=""];
  "sha256:60c7373905e8921546840eb405625571de447ee024882ff52dc6886939ae6221" -> "sha256:518134b2e98d94074a0251bf2a728f8ed92b8d7e89d73fb457efb4c8638ff770" [label=""];
  "sha256:518134b2e98d94074a0251bf2a728f8ed92b8d7e89d73fb457efb4c8638ff770" -> "sha256:335db3ab0d5a3586949d78e76f60177f55547ae32dee2ced97d19a15870a23ad" [label=""];
  "sha256:60c7373905e8921546840eb405625571de447ee024882ff52dc6886939ae6221" -> "sha256:335db3ab0d5a3586949d78e76f60177f55547ae32dee2ced97d19a15870a23ad" [label=""];
  "sha256:335db3ab0d5a3586949d78e76f60177f55547ae32dee2ced97d19a15870a23ad" -> "sha256:a3598f1175f29126724feadc8e11ec2585ce11a9f992d8d0b28eb033839d4c3e" [label=""];
  "sha256:60c7373905e8921546840eb405625571de447ee024882ff52dc6886939ae6221" -> "sha256:a3598f1175f29126724feadc8e11ec2585ce11a9f992d8d0b28eb033839d4c3e" [label=""];
  "sha256:a3598f1175f29126724feadc8e11ec2585ce11a9f992d8d0b28eb033839d4c3e" -> "sha256:6f22e1717d7e855c3daac765a95946afe3c43d22ab3759c3695ff5406fbc769c" [label=""];
  "sha256:6f22e1717d7e855c3daac765a95946afe3c43d22ab3759c3695ff5406fbc769c" -> "sha256:e4f686a09ab68c43bf0d943adb7e1ba445964429cd4a9e5845b21a4b1e6dade2" [label=""];
  "sha256:e4f686a09ab68c43bf0d943adb7e1ba445964429cd4a9e5845b21a4b1e6dade2" -> "sha256:1d3037723685d190cc66be001df96142158a61d59acd37fb5a2b480db744f250" [label=""];
  "sha256:1d3037723685d190cc66be001df96142158a61d59acd37fb5a2b480db744f250" -> "sha256:10bc8e5d28b4e56aefd2df45017eed1a58cf9431852c3e2f374f75e4bc745369" [label=""];
}

