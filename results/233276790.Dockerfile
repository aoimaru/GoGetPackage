[app/sources/233276790.Dockerfile]
digraph {
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" [label="docker-image://docker.io/library/fedora:26" shape="ellipse"];
  "sha256:a629e28a5e056f4baac8f3731dcfe94d790e651839e1ab1f8c6c77fc8525c59e" [label="/bin/sh -c dnf -y update && dnf install -y findutils" shape="box"];
  "sha256:317f9d2c45753660ab4c4741d992724f024acf52369e04d1a4996883010ab455" [label="/bin/sh -c find /etc/systemd/system     /lib/systemd/system     -path '*.wants/*'     -not -name '*journald*'     -not -name '*systemd-tmpfiles*'     -not -name '*systemd-user-sessions*'     -exec rm \\{} \\;" shape="box"];
  "sha256:c2052216936e0fdf13a7abdd84875035a79d065440d4571ca40c6c90e22fccb8" [label="/bin/sh -c systemctl set-default multi-user.target" shape="box"];
  "sha256:144c3f4a4039f193f46b2119f12cb01adc56f09be548a8a6fe4d8975a2e04598" [label="local://context" shape="ellipse"];
  "sha256:e3d6db7d869bcd317d79e4caa780628ebda5511c3c986d8e0f0b15b3ece62a61" [label="copy{src=/setup, dest=/sbin/}" shape="note"];
  "sha256:5ea2483cc5ef7b24873d39292ef9c97ebb1b079449b4f794b484332653a5a2d8" [label="/bin/sh -c dnf -y update" shape="box"];
  "sha256:a26cd6cc5464dc34461c037fc335f26ec53f9ec801b4f8b9512795736663b59b" [label="/bin/sh -c dnf install -y python2 python2-dnf python-pip libselinux-python sudo" shape="box"];
  "sha256:10d556ce935ed1bd9fdf7d43484ce0a5864fa4cd685dbab47f7fba411846021a" [label="/bin/sh -c dnf -y install ansible-2.5.2-1.fc26" shape="box"];
  "sha256:7dcfe80fc4a0fd96efc68cb22e2189154bc060bdfd4e32461f75862d716c9ee3" [label="/bin/sh -c pip install -U ansible-lint" shape="box"];
  "sha256:770f86a48c24d69b386d407beb831e2f7af120f05e05da1937de577b86fff3a5" [label="/bin/sh -c mkdir -p /etc/ansible" shape="box"];
  "sha256:40ce72e9006627399f253e644206d1235772025f00ff45753393369c7fb84743" [label="/bin/sh -c echo \"[local]\" > /etc/ansible/hosts" shape="box"];
  "sha256:c96b825762a7c215aa1a4b2fd34039a870efddf7ef82006dc7bb587428c95864" [label="/bin/sh -c echo \"localhost ansible_connection=local\" >> /etc/ansible/hosts" shape="box"];
  "sha256:d5193baed327803eae1b8296decc8bddd39b7c3b3b6c88a2cc4578464c3e512d" [label="sha256:d5193baed327803eae1b8296decc8bddd39b7c3b3b6c88a2cc4578464c3e512d" shape="plaintext"];
  "sha256:d19758662293df0f2eee93ddec580b57e3114637e1b274f4b0e906753d6c7a90" -> "sha256:a629e28a5e056f4baac8f3731dcfe94d790e651839e1ab1f8c6c77fc8525c59e" [label=""];
  "sha256:a629e28a5e056f4baac8f3731dcfe94d790e651839e1ab1f8c6c77fc8525c59e" -> "sha256:317f9d2c45753660ab4c4741d992724f024acf52369e04d1a4996883010ab455" [label=""];
  "sha256:317f9d2c45753660ab4c4741d992724f024acf52369e04d1a4996883010ab455" -> "sha256:c2052216936e0fdf13a7abdd84875035a79d065440d4571ca40c6c90e22fccb8" [label=""];
  "sha256:c2052216936e0fdf13a7abdd84875035a79d065440d4571ca40c6c90e22fccb8" -> "sha256:e3d6db7d869bcd317d79e4caa780628ebda5511c3c986d8e0f0b15b3ece62a61" [label=""];
  "sha256:144c3f4a4039f193f46b2119f12cb01adc56f09be548a8a6fe4d8975a2e04598" -> "sha256:e3d6db7d869bcd317d79e4caa780628ebda5511c3c986d8e0f0b15b3ece62a61" [label=""];
  "sha256:e3d6db7d869bcd317d79e4caa780628ebda5511c3c986d8e0f0b15b3ece62a61" -> "sha256:5ea2483cc5ef7b24873d39292ef9c97ebb1b079449b4f794b484332653a5a2d8" [label=""];
  "sha256:5ea2483cc5ef7b24873d39292ef9c97ebb1b079449b4f794b484332653a5a2d8" -> "sha256:a26cd6cc5464dc34461c037fc335f26ec53f9ec801b4f8b9512795736663b59b" [label=""];
  "sha256:a26cd6cc5464dc34461c037fc335f26ec53f9ec801b4f8b9512795736663b59b" -> "sha256:10d556ce935ed1bd9fdf7d43484ce0a5864fa4cd685dbab47f7fba411846021a" [label=""];
  "sha256:10d556ce935ed1bd9fdf7d43484ce0a5864fa4cd685dbab47f7fba411846021a" -> "sha256:7dcfe80fc4a0fd96efc68cb22e2189154bc060bdfd4e32461f75862d716c9ee3" [label=""];
  "sha256:7dcfe80fc4a0fd96efc68cb22e2189154bc060bdfd4e32461f75862d716c9ee3" -> "sha256:770f86a48c24d69b386d407beb831e2f7af120f05e05da1937de577b86fff3a5" [label=""];
  "sha256:770f86a48c24d69b386d407beb831e2f7af120f05e05da1937de577b86fff3a5" -> "sha256:40ce72e9006627399f253e644206d1235772025f00ff45753393369c7fb84743" [label=""];
  "sha256:40ce72e9006627399f253e644206d1235772025f00ff45753393369c7fb84743" -> "sha256:c96b825762a7c215aa1a4b2fd34039a870efddf7ef82006dc7bb587428c95864" [label=""];
  "sha256:c96b825762a7c215aa1a4b2fd34039a870efddf7ef82006dc7bb587428c95864" -> "sha256:d5193baed327803eae1b8296decc8bddd39b7c3b3b6c88a2cc4578464c3e512d" [label=""];
}

