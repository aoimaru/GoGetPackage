[app/sources/173786244.Dockerfile]
digraph {
  "sha256:c6896379c7f126998ccf32e59dcb0031388368fcb8323e6b4952f230257b4404" [label="docker-image://docker.io/stackstorm/packagingtest:centos7-systemd" shape="ellipse"];
  "sha256:7a56bcb156daac355256754a5ad7d86fde8ed9ac2422354f80918c1e03a5410e" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:33357038d4cdbb6ec2e215731831662254ac541bb0ac35331634f7587ff932b2" [label="/bin/sh -c useradd -d /home/<%= @username %> -m -s /bin/bash <%= @username %>" shape="box"];
  "sha256:601a489bff7fecd30d19e8d1e3a0a30e1644012cdf0e8f2250f1e88729899cde" [label="/bin/sh -c echo <%= \"#{@username}:#{@password}\" %> | chpasswd" shape="box"];
  "sha256:2ca2b1c94d1016ac423e1a93b8eadb0b4c9ede6c0e18dcfa24421a90b947d91b" [label="/bin/sh -c echo '<%= @username %> ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers" shape="box"];
  "sha256:a6b11724e054cc707775f72402b6e1b8dcc5c0b3ffe5df0ed45dac4df404f6a8" [label="/bin/sh -c mkdir -p /home/<%= @username %>/.ssh" shape="box"];
  "sha256:4842c8dc2bdac4d13c72d337c9b794aa3636319b6f6ecfe11aeddaa5cd617302" [label="/bin/sh -c chown -R <%= @username %> /home/<%= @username %>/.ssh" shape="box"];
  "sha256:342c310fbeb910bb94d24c663df5ee7328e1f3cfd9e8e7196b88a1fe682d1d39" [label="/bin/sh -c chmod 0700 /home/<%= @username %>/.ssh" shape="box"];
  "sha256:66831442c9a1abc146cd70e71c928f0965007eb397b23757062b071077190b44" [label="/bin/sh -c touch /home/<%= @username %>/.ssh/authorized_keys" shape="box"];
  "sha256:078daaf224a158c0efc264851e4989358289b86471c4a830c4cd20d730ad6c9c" [label="/bin/sh -c chown <%= @username %> /home/<%= @username %>/.ssh/authorized_keys" shape="box"];
  "sha256:391420d405b286effe14778e4962ac4095d5e8cdeec18addd69bcf58a3839bc5" [label="/bin/sh -c chmod 0600 /home/<%= @username %>/.ssh/authorized_keys" shape="box"];
  "sha256:c8bee5495930230d50d61b7c8e444a9a998af4126bdac0b836aded914e2925b9" [label="/bin/sh -c echo '<%= IO.read(@public_key).strip %>' >> /home/<%= @username %>/.ssh/authorized_keys" shape="box"];
  "sha256:7850af7d594e8dd4479092b35d3f28fae076d9ef78575b484a6a7b917afdb33c" [label="/bin/sh -c yum -y upgrade" shape="box"];
  "sha256:a828bce709f4e7a013ac2a854749a7ca52e7af75d5d723deea516a76cf8deadb" [label="/bin/sh -c sed -i '/nodocs/d' /etc/yum.conf" shape="box"];
  "sha256:fb379d3e427eee5d53cb20b0fcdd78d14a7912e602e8d2490ca638858be34a46" [label="/bin/sh -c yum -y install https://yum.puppet.com/puppet6/puppet6-release-el-7.noarch.rpm" shape="box"];
  "sha256:adb7df70d68bbbb4345e8be6e1ca1ec9a20e468537a1851308e6ddc872f595fe" [label="/bin/sh -c yum -y install puppet-agent" shape="box"];
  "sha256:40cefe48327d519176a39f042df35826060dce4283164c6e9c45da642fcc65d6" [label="/bin/sh -c ln -s /opt/puppetlabs/bin/facter /usr/bin/" shape="box"];
  "sha256:39f32a8b21dde40ac65845b55d9b9e73e760b7dde30a7911ef3774a069d4044a" [label="/bin/sh -c ln -s /opt/puppetlabs/bin/hiera /usr/bin/" shape="box"];
  "sha256:1ae22cafe5ce5e1363d22d20b764f690b21ccb6eca96d478a2e1db29cc3276c2" [label="/bin/sh -c ln -s /opt/puppetlabs/bin/mco /usr/bin/" shape="box"];
  "sha256:4e66eac688dc3ae2407e2852917c2e35a262b4c0e1fbf25e2ee92b9d1b2602dd" [label="/bin/sh -c ln -s /opt/puppetlabs/bin/puppet /usr/bin/" shape="box"];
  "sha256:4229e57fd370295bcb9b489b26d4ed763a5de6d958cc2778ff4853f706c4aa00" [label="/bin/sh -c puppet --version" shape="box"];
  "sha256:49b37691e117a44dd08d4fe058d08c160077722d6f1e3b5731ecff197d2f395b" [label="/bin/sh -c sudo -E puppet --version" shape="box"];
  "sha256:86a83af311a8aeebb599bcda62e86e4e79b6cd2522bafd48101dd13ce577d54c" [label="sha256:86a83af311a8aeebb599bcda62e86e4e79b6cd2522bafd48101dd13ce577d54c" shape="plaintext"];
  "sha256:c6896379c7f126998ccf32e59dcb0031388368fcb8323e6b4952f230257b4404" -> "sha256:7a56bcb156daac355256754a5ad7d86fde8ed9ac2422354f80918c1e03a5410e" [label=""];
  "sha256:7a56bcb156daac355256754a5ad7d86fde8ed9ac2422354f80918c1e03a5410e" -> "sha256:33357038d4cdbb6ec2e215731831662254ac541bb0ac35331634f7587ff932b2" [label=""];
  "sha256:33357038d4cdbb6ec2e215731831662254ac541bb0ac35331634f7587ff932b2" -> "sha256:601a489bff7fecd30d19e8d1e3a0a30e1644012cdf0e8f2250f1e88729899cde" [label=""];
  "sha256:601a489bff7fecd30d19e8d1e3a0a30e1644012cdf0e8f2250f1e88729899cde" -> "sha256:2ca2b1c94d1016ac423e1a93b8eadb0b4c9ede6c0e18dcfa24421a90b947d91b" [label=""];
  "sha256:2ca2b1c94d1016ac423e1a93b8eadb0b4c9ede6c0e18dcfa24421a90b947d91b" -> "sha256:a6b11724e054cc707775f72402b6e1b8dcc5c0b3ffe5df0ed45dac4df404f6a8" [label=""];
  "sha256:a6b11724e054cc707775f72402b6e1b8dcc5c0b3ffe5df0ed45dac4df404f6a8" -> "sha256:4842c8dc2bdac4d13c72d337c9b794aa3636319b6f6ecfe11aeddaa5cd617302" [label=""];
  "sha256:4842c8dc2bdac4d13c72d337c9b794aa3636319b6f6ecfe11aeddaa5cd617302" -> "sha256:342c310fbeb910bb94d24c663df5ee7328e1f3cfd9e8e7196b88a1fe682d1d39" [label=""];
  "sha256:342c310fbeb910bb94d24c663df5ee7328e1f3cfd9e8e7196b88a1fe682d1d39" -> "sha256:66831442c9a1abc146cd70e71c928f0965007eb397b23757062b071077190b44" [label=""];
  "sha256:66831442c9a1abc146cd70e71c928f0965007eb397b23757062b071077190b44" -> "sha256:078daaf224a158c0efc264851e4989358289b86471c4a830c4cd20d730ad6c9c" [label=""];
  "sha256:078daaf224a158c0efc264851e4989358289b86471c4a830c4cd20d730ad6c9c" -> "sha256:391420d405b286effe14778e4962ac4095d5e8cdeec18addd69bcf58a3839bc5" [label=""];
  "sha256:391420d405b286effe14778e4962ac4095d5e8cdeec18addd69bcf58a3839bc5" -> "sha256:c8bee5495930230d50d61b7c8e444a9a998af4126bdac0b836aded914e2925b9" [label=""];
  "sha256:c8bee5495930230d50d61b7c8e444a9a998af4126bdac0b836aded914e2925b9" -> "sha256:7850af7d594e8dd4479092b35d3f28fae076d9ef78575b484a6a7b917afdb33c" [label=""];
  "sha256:7850af7d594e8dd4479092b35d3f28fae076d9ef78575b484a6a7b917afdb33c" -> "sha256:a828bce709f4e7a013ac2a854749a7ca52e7af75d5d723deea516a76cf8deadb" [label=""];
  "sha256:a828bce709f4e7a013ac2a854749a7ca52e7af75d5d723deea516a76cf8deadb" -> "sha256:fb379d3e427eee5d53cb20b0fcdd78d14a7912e602e8d2490ca638858be34a46" [label=""];
  "sha256:fb379d3e427eee5d53cb20b0fcdd78d14a7912e602e8d2490ca638858be34a46" -> "sha256:adb7df70d68bbbb4345e8be6e1ca1ec9a20e468537a1851308e6ddc872f595fe" [label=""];
  "sha256:adb7df70d68bbbb4345e8be6e1ca1ec9a20e468537a1851308e6ddc872f595fe" -> "sha256:40cefe48327d519176a39f042df35826060dce4283164c6e9c45da642fcc65d6" [label=""];
  "sha256:40cefe48327d519176a39f042df35826060dce4283164c6e9c45da642fcc65d6" -> "sha256:39f32a8b21dde40ac65845b55d9b9e73e760b7dde30a7911ef3774a069d4044a" [label=""];
  "sha256:39f32a8b21dde40ac65845b55d9b9e73e760b7dde30a7911ef3774a069d4044a" -> "sha256:1ae22cafe5ce5e1363d22d20b764f690b21ccb6eca96d478a2e1db29cc3276c2" [label=""];
  "sha256:1ae22cafe5ce5e1363d22d20b764f690b21ccb6eca96d478a2e1db29cc3276c2" -> "sha256:4e66eac688dc3ae2407e2852917c2e35a262b4c0e1fbf25e2ee92b9d1b2602dd" [label=""];
  "sha256:4e66eac688dc3ae2407e2852917c2e35a262b4c0e1fbf25e2ee92b9d1b2602dd" -> "sha256:4229e57fd370295bcb9b489b26d4ed763a5de6d958cc2778ff4853f706c4aa00" [label=""];
  "sha256:4229e57fd370295bcb9b489b26d4ed763a5de6d958cc2778ff4853f706c4aa00" -> "sha256:49b37691e117a44dd08d4fe058d08c160077722d6f1e3b5731ecff197d2f395b" [label=""];
  "sha256:49b37691e117a44dd08d4fe058d08c160077722d6f1e3b5731ecff197d2f395b" -> "sha256:86a83af311a8aeebb599bcda62e86e4e79b6cd2522bafd48101dd13ce577d54c" [label=""];
}

