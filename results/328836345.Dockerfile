[app/sources/328836345.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:55f028414616c7ec137033b846311fd2f8e787b490c6911a1f1b64a644d1cf82" [label="/bin/sh -c echo 'dockerio:x:1001:1001::/bin:/bin/false' >> /etc/passwd" shape="box"];
  "sha256:49f02746b61a85590723546dcdca2976f73d76e3def81c24ff11e6240ff3879f" [label="/bin/sh -c echo 'dockerio:x:1001:' >> /etc/group" shape="box"];
  "sha256:752d71f83f5ee382a760a3a89d299b74d36c471e3f51364c0a4a7ca8680eef8e" [label="/bin/sh -c touch /exists" shape="box"];
  "sha256:77dcc6e093b77299273dd9b96ed50452b89b615eb1c528eb9d39b443f21f01ca" [label="/bin/sh -c chown dockerio.dockerio exists" shape="box"];
  "sha256:af5756171686b873f06d79e904b4ca05abcaf334f51a56f5f81bbc77b1e1c5c1" [label="local://context" shape="ellipse"];
  "sha256:8ed5e9da369177a4ae3f300657411a7326a4456b9675c77e80cf7dfd5e16fe55" [label="copy{src=/test_dir, dest=/test_dir}" shape="note"];
  "sha256:a5e7a32cd7ff17024925b6c6de3f7bb68fd586a7cfd741332e2db42d15c33060" [label="/bin/sh -c [ $(ls -l / | grep test_dir | awk '{print $3\":\"$4}') = 'root:root' ]" shape="box"];
  "sha256:09e7ff44a566ab007b1de91ce4c4052533e87cb37097cd547b002d3b443bf86f" [label="/bin/sh -c [ $(ls -l / | grep test_dir | awk '{print $1}') = 'drwxr-xr-x' ]" shape="box"];
  "sha256:dddf385527bae44985a08f7138f47e134340310f938e21cbc4cc10f2991e55da" [label="/bin/sh -c [ $(ls -l /test_dir/test_file | awk '{print $3\":\"$4}') = 'root:root' ]" shape="box"];
  "sha256:18207400d027a0b2ea61915eaabb7032486515b591753b155187b82c346a7f79" [label="/bin/sh -c [ $(ls -l /test_dir/test_file | awk '{print $1}') = '-rw-r--r--' ]" shape="box"];
  "sha256:3e4bec808612b0c67e39c193ccf7eb2573342011c3fdca4f8675ef5960619161" [label="/bin/sh -c [ $(ls -l /exists | awk '{print $3\":\"$4}') = 'dockerio:dockerio' ]" shape="box"];
  "sha256:841d05065303e24b0d78dfe410f20d9ddb4df9523b7cbd7e13629e5e7ff55a12" [label="sha256:841d05065303e24b0d78dfe410f20d9ddb4df9523b7cbd7e13629e5e7ff55a12" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:55f028414616c7ec137033b846311fd2f8e787b490c6911a1f1b64a644d1cf82" [label=""];
  "sha256:55f028414616c7ec137033b846311fd2f8e787b490c6911a1f1b64a644d1cf82" -> "sha256:49f02746b61a85590723546dcdca2976f73d76e3def81c24ff11e6240ff3879f" [label=""];
  "sha256:49f02746b61a85590723546dcdca2976f73d76e3def81c24ff11e6240ff3879f" -> "sha256:752d71f83f5ee382a760a3a89d299b74d36c471e3f51364c0a4a7ca8680eef8e" [label=""];
  "sha256:752d71f83f5ee382a760a3a89d299b74d36c471e3f51364c0a4a7ca8680eef8e" -> "sha256:77dcc6e093b77299273dd9b96ed50452b89b615eb1c528eb9d39b443f21f01ca" [label=""];
  "sha256:77dcc6e093b77299273dd9b96ed50452b89b615eb1c528eb9d39b443f21f01ca" -> "sha256:8ed5e9da369177a4ae3f300657411a7326a4456b9675c77e80cf7dfd5e16fe55" [label=""];
  "sha256:af5756171686b873f06d79e904b4ca05abcaf334f51a56f5f81bbc77b1e1c5c1" -> "sha256:8ed5e9da369177a4ae3f300657411a7326a4456b9675c77e80cf7dfd5e16fe55" [label=""];
  "sha256:8ed5e9da369177a4ae3f300657411a7326a4456b9675c77e80cf7dfd5e16fe55" -> "sha256:a5e7a32cd7ff17024925b6c6de3f7bb68fd586a7cfd741332e2db42d15c33060" [label=""];
  "sha256:a5e7a32cd7ff17024925b6c6de3f7bb68fd586a7cfd741332e2db42d15c33060" -> "sha256:09e7ff44a566ab007b1de91ce4c4052533e87cb37097cd547b002d3b443bf86f" [label=""];
  "sha256:09e7ff44a566ab007b1de91ce4c4052533e87cb37097cd547b002d3b443bf86f" -> "sha256:dddf385527bae44985a08f7138f47e134340310f938e21cbc4cc10f2991e55da" [label=""];
  "sha256:dddf385527bae44985a08f7138f47e134340310f938e21cbc4cc10f2991e55da" -> "sha256:18207400d027a0b2ea61915eaabb7032486515b591753b155187b82c346a7f79" [label=""];
  "sha256:18207400d027a0b2ea61915eaabb7032486515b591753b155187b82c346a7f79" -> "sha256:3e4bec808612b0c67e39c193ccf7eb2573342011c3fdca4f8675ef5960619161" [label=""];
  "sha256:3e4bec808612b0c67e39c193ccf7eb2573342011c3fdca4f8675ef5960619161" -> "sha256:841d05065303e24b0d78dfe410f20d9ddb4df9523b7cbd7e13629e5e7ff55a12" [label=""];
}

