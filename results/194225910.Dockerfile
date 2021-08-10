[app/sources/194225910.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:265fff0ca9fa925865d0fb246fa502a80d27c1eae3d953b98091dab9083dc871" [label="/bin/sh -c echo \"===> Adding Ansible's PPA...\"  &&     echo \"deb http://ppa.launchpad.net/ansible/ansible-1.9/ubuntu trusty main\" | tee /etc/apt/sources.list.d/ansible.list           &&     echo \"deb-src http://ppa.launchpad.net/ansible/ansible-1.9/ubuntu trusty main\" | tee -a /etc/apt/sources.list.d/ansible.list    &&     apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7BB9C367    &&     DEBIAN_FRONTEND=noninteractive  apt-get update  &&             echo \"===> Installing Ansible...\"  &&     apt-get install -y ansible  &&             echo \"===> Installing handy tools (not absolutely required)...\"  &&     apt-get install -y sshpass openssh-client  &&             echo \"===> Removing Ansible PPA...\"  &&     rm -rf /var/lib/apt/lists/*  /etc/apt/sources.list.d/ansible.list  &&             echo \"===> Adding hosts for convenience...\"  &&     echo 'localhost' > /etc/ansible/hosts" shape="box"];
  "sha256:94afa1adf0e17b9db1c37eec1268ac3a3bf44d9722c52713be040dc44805eba7" [label="sha256:94afa1adf0e17b9db1c37eec1268ac3a3bf44d9722c52713be040dc44805eba7" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:265fff0ca9fa925865d0fb246fa502a80d27c1eae3d953b98091dab9083dc871" [label=""];
  "sha256:265fff0ca9fa925865d0fb246fa502a80d27c1eae3d953b98091dab9083dc871" -> "sha256:94afa1adf0e17b9db1c37eec1268ac3a3bf44d9722c52713be040dc44805eba7" [label=""];
}

