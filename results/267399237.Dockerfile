[app/sources/267399237.Dockerfile]
digraph {
  "sha256:3c409a183df230e69c41c71d14be8249ce1aa565298f49600ce1df589c252f43" [label="local://context" shape="ellipse"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:be1c72ba75266c7506e27a8ec8d4ab3c4507f655512401400009869370af3f1e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         bash-completion         ca-certificates         curl         git         jq         less         vim     && echo \". /etc/bash_completion\" >> ~/.bashrc     && rm -rf /var/lib/apt/lists/*     && mkdir -p ~/completions     && mkdir -p ~/k8s-prompt" shape="box"];
  "sha256:414c2232c1c0422d3354ae8e8f21093e778085a313d3ded6a93bd600a51b878f" [label="mkdir{path=/tmp/install-utils}" shape="note"];
  "sha256:0ccc76af3724dadf583084e826f66259f7bfcfc94066f2b6204497498ccaf2f1" [label="/bin/sh -c curl -LO https://storage.googleapis.com/kubernetes-release/release/v$KUBECTL_VERSION/bin/linux/amd64/kubectl     && chmod +x ./kubectl     && mv ./kubectl /usr/local/bin/kubectl     && kubectl completion bash > ~/completions/kubectl.completion     && echo \"source ~/completions/kubectl.completion\" >> ~/.bashrc" shape="box"];
  "sha256:664346e1239a19501d48826f5f8b2eea21c4d3a413b4dfc711847fbfbe505ca4" [label="/bin/sh -c curl -L https://github.com/ahmetb/kubectx/archive/v$KUBECTX_VERSION.tar.gz | tar xz     && cd ./kubectx-$KUBECTX_VERSION     && mv kubectx kubens /usr/local/bin/     && chmod +x /usr/local/bin/kubectx     && chmod +x /usr/local/bin/kubens     && cat completion/kubectx.bash >> ~/completions/kubectx.completion     && cat completion/kubens.bash >> ~/completions/kubens.completion     && echo \"source ~/completions/kubectx.completion\" >> ~/.bashrc     && echo \"source ~/completions/kubens.completion\" >> ~/.bashrc     && cd ../     && rm -fr ./kubectx-$KUBECTX_VERSION" shape="box"];
  "sha256:4a3fde8a7d23e6dd264539eb3cb09c428d0eb23f8cfadeab0c3c429b1adc80f0" [label="/bin/sh -c curl -LO https://github.com/linkerd/linkerd2/releases/download/stable-$LINKERD_VERSION/linkerd2-cli-stable-$LINKERD_VERSION-linux     && mv ./linkerd2-cli-stable-$LINKERD_VERSION-linux /usr/local/bin/linkerd     && chmod +x /usr/local/bin/linkerd" shape="box"];
  "sha256:d514d9cf774dfb6ea9bf39cfb2d07b704050969c6fd5ee4fc5fbb75388ae680a" [label="/bin/sh -c curl -L https://github.com/istio/istio/releases/download/$ISTIO_VERSION/istio-$ISTIO_VERSION-linux.tar.gz | tar xz     && cd ./istio-$ISTIO_VERSION     && mv bin/istioctl /usr/local/bin/     && chmod +x /usr/local/bin/istioctl     && cd ../     && rm -fr ./istio-$ISTIO_VERSION     && istioctl collateral --bash -o ~/completions     && mv ~/completions/istioctl.bash ~/completions/istioctl.completion     && echo \"source ~/completions/istioctl.completion\" >> ~/.bashrc" shape="box"];
  "sha256:1ec70c6567522afb13275bf92d6153d7c8ae01b9b345a44e44d78d5527a93504" [label="/bin/sh -c mkdir helm-$HELM_VERSION     && curl -L https://storage.googleapis.com/kubernetes-helm/helm-v$HELM_VERSION-linux-amd64.tar.gz | tar xz -C helm-$HELM_VERSION --strip-components 1     && cd ./helm-$HELM_VERSION     && mv helm /usr/local/bin/     && chmod +x /usr/local/bin/helm     && cd ../     && rm -fr ./helm-$HELM_VERSION     && helm completion bash > ~/completions/helm.completion     && echo \"source ~/completions/helm.completion\" >> ~/.bashrc" shape="box"];
  "sha256:769f5dc93114d69d72540f54e963b511ca898e79ee77999d5d0b682d9a0a8288" [label="copy{src=/k8s-cli-ps1.sh, dest=/root/k8s-prompt/}" shape="note"];
  "sha256:f96c0c7b3e97bc09559d2b876d65353050204281e4f8fc1b7e0c5f3a7de6adb6" [label="/bin/sh -c curl -L https://github.com/jonmosco/kube-ps1/archive/v$KUBE_PS1_VERSION.tar.gz | tar xz     && cd ./kube-ps1-$KUBE_PS1_VERSION     && mv kube-ps1.sh ~/k8s-prompt/     && chmod +x ~/k8s-prompt/*.sh     && rm -fr ./kube-ps1-$KUBE_PS1_VERSION     && echo \"source ~/k8s-prompt/kube-ps1.sh\" >> ~/.bashrc     && echo \"source ~/k8s-prompt/k8s-cli-ps1.sh\" >> ~/.bashrc     && echo \"PROMPT_COMMAND=\\\"_kube_ps1_update_cache && k8s_cli_ps1\\\"\" >> ~/.bashrc" shape="box"];
  "sha256:303a9b68a3535b0b21b0a44ca8219354afddd522380b511e2156e512616d46ee" [label="/bin/sh -c rm -fr /tmp/install-utils     && echo \"alias k=kubectl\" >> ~/.bashrc     && echo \"complete -o default -F __start_kubectl k\" >> ~/.bashrc" shape="box"];
  "sha256:d41e16d7698e0b644bbd5ff1394e92c3e69b5d53dd786ea1cb44c44fd73f782b" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:c7eb3c40ce0de1faf680140541b2c74444592b031bca4d7e481788bb1eaf5cd7" [label="sha256:c7eb3c40ce0de1faf680140541b2c74444592b031bca4d7e481788bb1eaf5cd7" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:be1c72ba75266c7506e27a8ec8d4ab3c4507f655512401400009869370af3f1e" [label=""];
  "sha256:be1c72ba75266c7506e27a8ec8d4ab3c4507f655512401400009869370af3f1e" -> "sha256:414c2232c1c0422d3354ae8e8f21093e778085a313d3ded6a93bd600a51b878f" [label=""];
  "sha256:414c2232c1c0422d3354ae8e8f21093e778085a313d3ded6a93bd600a51b878f" -> "sha256:0ccc76af3724dadf583084e826f66259f7bfcfc94066f2b6204497498ccaf2f1" [label=""];
  "sha256:0ccc76af3724dadf583084e826f66259f7bfcfc94066f2b6204497498ccaf2f1" -> "sha256:664346e1239a19501d48826f5f8b2eea21c4d3a413b4dfc711847fbfbe505ca4" [label=""];
  "sha256:664346e1239a19501d48826f5f8b2eea21c4d3a413b4dfc711847fbfbe505ca4" -> "sha256:4a3fde8a7d23e6dd264539eb3cb09c428d0eb23f8cfadeab0c3c429b1adc80f0" [label=""];
  "sha256:4a3fde8a7d23e6dd264539eb3cb09c428d0eb23f8cfadeab0c3c429b1adc80f0" -> "sha256:d514d9cf774dfb6ea9bf39cfb2d07b704050969c6fd5ee4fc5fbb75388ae680a" [label=""];
  "sha256:d514d9cf774dfb6ea9bf39cfb2d07b704050969c6fd5ee4fc5fbb75388ae680a" -> "sha256:1ec70c6567522afb13275bf92d6153d7c8ae01b9b345a44e44d78d5527a93504" [label=""];
  "sha256:1ec70c6567522afb13275bf92d6153d7c8ae01b9b345a44e44d78d5527a93504" -> "sha256:769f5dc93114d69d72540f54e963b511ca898e79ee77999d5d0b682d9a0a8288" [label=""];
  "sha256:3c409a183df230e69c41c71d14be8249ce1aa565298f49600ce1df589c252f43" -> "sha256:769f5dc93114d69d72540f54e963b511ca898e79ee77999d5d0b682d9a0a8288" [label=""];
  "sha256:769f5dc93114d69d72540f54e963b511ca898e79ee77999d5d0b682d9a0a8288" -> "sha256:f96c0c7b3e97bc09559d2b876d65353050204281e4f8fc1b7e0c5f3a7de6adb6" [label=""];
  "sha256:f96c0c7b3e97bc09559d2b876d65353050204281e4f8fc1b7e0c5f3a7de6adb6" -> "sha256:303a9b68a3535b0b21b0a44ca8219354afddd522380b511e2156e512616d46ee" [label=""];
  "sha256:303a9b68a3535b0b21b0a44ca8219354afddd522380b511e2156e512616d46ee" -> "sha256:d41e16d7698e0b644bbd5ff1394e92c3e69b5d53dd786ea1cb44c44fd73f782b" [label=""];
  "sha256:d41e16d7698e0b644bbd5ff1394e92c3e69b5d53dd786ea1cb44c44fd73f782b" -> "sha256:c7eb3c40ce0de1faf680140541b2c74444592b031bca4d7e481788bb1eaf5cd7" [label=""];
}
