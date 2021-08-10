[app/sources/279831747.Dockerfile]
digraph {
  "sha256:53f77c67eee35ac9e9e8686346e616c214a65391355fa57c102a71c8f38a7871" [label="docker-image://docker.io/jenkins/jenkins:lts@sha256:abcd55c9f19c85808124a4d82e3412719cd5c511c03ebd7d4210e9fa9e8f1029" shape="ellipse"];
  "sha256:0dbc771195c409ff3d8f97ded640bb4f3407f5cc82db1deea546b785acbc2bd5" [label="/bin/sh -c apt-get update &&     apt-get -y install apt-transport-https       ca-certificates       curl       gnupg2       software-properties-common &&     curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo \"$ID\")/gpg > /tmp/dkey; apt-key add /tmp/dkey &&     add-apt-repository       \"deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo \"$ID\")       $(lsb_release -cs)       stable\" &&    apt-get update &&    apt-get -y install docker-ce" shape="box"];
  "sha256:15e454cbe2f661eaa705a9f2510d861e904681630595b79fb6312be692adb25f" [label="sha256:15e454cbe2f661eaa705a9f2510d861e904681630595b79fb6312be692adb25f" shape="plaintext"];
  "sha256:53f77c67eee35ac9e9e8686346e616c214a65391355fa57c102a71c8f38a7871" -> "sha256:0dbc771195c409ff3d8f97ded640bb4f3407f5cc82db1deea546b785acbc2bd5" [label=""];
  "sha256:0dbc771195c409ff3d8f97ded640bb4f3407f5cc82db1deea546b785acbc2bd5" -> "sha256:15e454cbe2f661eaa705a9f2510d861e904681630595b79fb6312be692adb25f" [label=""];
}

