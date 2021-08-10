[app/sources/320229544.Dockerfile]
digraph {
  "sha256:064160884a0ec03c791b9f997a927cc91270f3e671fdebde554f92539c62567c" [label="local://context" shape="ellipse"];
  "sha256:78bbfb98b9d4ad9b8ffb22a5550cebca61baee6da7c00c4a870efac9082d7d4e" [label="docker-image://docker.io/ansible/ansible-runner:latest" shape="ellipse"];
  "sha256:4be65fd4f650ee76436641c797f84575b9752874541905943799fdf41cf034ae" [label="/bin/sh -c yum remove -y ansible python-idna" shape="box"];
  "sha256:be1c7542e629a531a42294cd3c2dfed1013f89040911f1aff527d47d6719c19d" [label="/bin/sh -c pip uninstall ansible-runner -y" shape="box"];
  "sha256:cf5d2ada32ddc29b784a669364ac4996b13057783b4fff39dda6f026a018ae60" [label="/bin/sh -c pip install --upgrade setuptools" shape="box"];
  "sha256:d8698af8f57527d70930b7200cfba166f8f7df73ded0ce33ebf640f7bdd904ed" [label="/bin/sh -c pip install ansible ansible-runner openshift kubernetes ansible-runner-http idna==2.7" shape="box"];
  "sha256:f6d4129becacf98631fa6bb4c2708d28ecaef31c1012e2d3e38a1bee947140ad" [label="/bin/sh -c mkdir -p /etc/ansible /usr/share/ansible/openshift     && echo \"localhost ansible_connection=local\" > /etc/ansible/hosts     && echo '[defaults]' > /etc/ansible/ansible.cfg     && echo 'roles_path = /opt/ansible/roles' >> /etc/ansible/ansible.cfg     && echo 'library = /usr/share/ansible/openshift' >> /etc/ansible/ansible.cfg" shape="box"];
  "sha256:14329a95fa5a436b0e873a0787624c3aed6c8487d2ea2ace4ca5edbac6e7b45d" [label="copy{src=/build/_output/bin/ansible-operator, dest=/usr/local/bin/ansible-operator}" shape="note"];
  "sha256:cd4cc57e945b4fcf4b43fd81151c887007dd459ddee30f5001d4ce5f63015434" [label="copy{src=/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:ace7f4192120735ceff291cb14b497be519c39f96a3f1a6f7d9f30619fc3b853" [label="copy{src=/library/k8s_status.py, dest=/usr/share/ansible/openshift/}" shape="note"];
  "sha256:9a5179201e6585dcbc2f0f10cc2d4c5045ca86fcd86a011e6334c719f300ea00" [label="/bin/sh -c /usr/local/bin/user_setup" shape="box"];
  "sha256:e3109746f1dc6b3bd2520026df44a063cfc0b19c38c4a25a3265682c73752f41" [label="sha256:e3109746f1dc6b3bd2520026df44a063cfc0b19c38c4a25a3265682c73752f41" shape="plaintext"];
  "sha256:78bbfb98b9d4ad9b8ffb22a5550cebca61baee6da7c00c4a870efac9082d7d4e" -> "sha256:4be65fd4f650ee76436641c797f84575b9752874541905943799fdf41cf034ae" [label=""];
  "sha256:4be65fd4f650ee76436641c797f84575b9752874541905943799fdf41cf034ae" -> "sha256:be1c7542e629a531a42294cd3c2dfed1013f89040911f1aff527d47d6719c19d" [label=""];
  "sha256:be1c7542e629a531a42294cd3c2dfed1013f89040911f1aff527d47d6719c19d" -> "sha256:cf5d2ada32ddc29b784a669364ac4996b13057783b4fff39dda6f026a018ae60" [label=""];
  "sha256:cf5d2ada32ddc29b784a669364ac4996b13057783b4fff39dda6f026a018ae60" -> "sha256:d8698af8f57527d70930b7200cfba166f8f7df73ded0ce33ebf640f7bdd904ed" [label=""];
  "sha256:d8698af8f57527d70930b7200cfba166f8f7df73ded0ce33ebf640f7bdd904ed" -> "sha256:f6d4129becacf98631fa6bb4c2708d28ecaef31c1012e2d3e38a1bee947140ad" [label=""];
  "sha256:f6d4129becacf98631fa6bb4c2708d28ecaef31c1012e2d3e38a1bee947140ad" -> "sha256:14329a95fa5a436b0e873a0787624c3aed6c8487d2ea2ace4ca5edbac6e7b45d" [label=""];
  "sha256:064160884a0ec03c791b9f997a927cc91270f3e671fdebde554f92539c62567c" -> "sha256:14329a95fa5a436b0e873a0787624c3aed6c8487d2ea2ace4ca5edbac6e7b45d" [label=""];
  "sha256:14329a95fa5a436b0e873a0787624c3aed6c8487d2ea2ace4ca5edbac6e7b45d" -> "sha256:cd4cc57e945b4fcf4b43fd81151c887007dd459ddee30f5001d4ce5f63015434" [label=""];
  "sha256:064160884a0ec03c791b9f997a927cc91270f3e671fdebde554f92539c62567c" -> "sha256:cd4cc57e945b4fcf4b43fd81151c887007dd459ddee30f5001d4ce5f63015434" [label=""];
  "sha256:cd4cc57e945b4fcf4b43fd81151c887007dd459ddee30f5001d4ce5f63015434" -> "sha256:ace7f4192120735ceff291cb14b497be519c39f96a3f1a6f7d9f30619fc3b853" [label=""];
  "sha256:064160884a0ec03c791b9f997a927cc91270f3e671fdebde554f92539c62567c" -> "sha256:ace7f4192120735ceff291cb14b497be519c39f96a3f1a6f7d9f30619fc3b853" [label=""];
  "sha256:ace7f4192120735ceff291cb14b497be519c39f96a3f1a6f7d9f30619fc3b853" -> "sha256:9a5179201e6585dcbc2f0f10cc2d4c5045ca86fcd86a011e6334c719f300ea00" [label=""];
  "sha256:9a5179201e6585dcbc2f0f10cc2d4c5045ca86fcd86a011e6334c719f300ea00" -> "sha256:e3109746f1dc6b3bd2520026df44a063cfc0b19c38c4a25a3265682c73752f41" [label=""];
}

