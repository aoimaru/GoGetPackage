[app/sources/238729623.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8958e10072507ec3d23fd6dc66a40222fe1659991ed2cdc0ca6964bf4b5c7e40" [label="/bin/sh -c sed -i -e 's/archive\\.ubuntu\\.com/mirror\\.0x\\.sg/g' /etc/apt/sources.list" shape="box"];
  "sha256:4e424ea8ba42b98539b0605466bca7aeaf34fcb7ba06fdff342f865c884a5522" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ec689e3a917ff7a071017e35546e25c7f39d636454bdd62fcf878cf004a6bd33" [label="/bin/sh -c apt-get install -y xinetd" shape="box"];
  "sha256:5c91be4c16f497fcaaad0240c5cf89fed5c166e9fce99e96a1e2a10ab6072924" [label="/bin/sh -c useradd -m $user" shape="box"];
  "sha256:e88c3cae322ad105258ad7f27239337c03c330507fd17bd6c0e0d889b582593d" [label="/bin/sh -c echo \"$user     hard    nproc       20\" >> /etc/security/limits.conf" shape="box"];
  "sha256:040cd811707b05a6c1b79d8a41f92cd4c2ac89411b1c4b56ad1d973842c8fedb" [label="local://context" shape="ellipse"];
  "sha256:fd01fffe506c8505942945b210b3fbce724a9d32bc25532d58089521fd5e91f4" [label="copy{src=/blackbeauty, dest=/home/blackbeautyuser/blackbeauty}" shape="note"];
  "sha256:df8033c012fcfe42bc4a42a517710ff7c38080ba125722634973797d91e06434" [label="copy{src=/blackbeauty.c, dest=/home/blackbeautyuser/blackbeauty.c}" shape="note"];
  "sha256:b2ec4411de87758ed3a7652b09dec50e23160bb234424e2ead95f19b3328c05c" [label="copy{src=/flag, dest=/home/blackbeautyuser/flag}" shape="note"];
  "sha256:465f1a301fb22b51cfff0c17fac088d5f29987a9261c2628d266dd3ea98772b4" [label="copy{src=/blackbeautyservice, dest=/etc/xinetd.d/blackbeautyservice}" shape="note"];
  "sha256:37f2408898dd63487ac53b10e517a7c7f8f9e6a3c79ea9c31adb4869cd0b81dc" [label="/bin/sh -c chown -R root:$user /home/$user" shape="box"];
  "sha256:75a17b722382b137f4df8a6b70224927d7a7ddf384fc2f2020e0582554c05946" [label="/bin/sh -c chmod -R 750 /home/$user" shape="box"];
  "sha256:f45f431ce25a9f38e6a31e7fd3767bf88b332ec8e96acc0b94888335b7941a54" [label="/bin/sh -c chown root:$user /home/$user/flag" shape="box"];
  "sha256:0bd57542a96533e7c7531bac58661108a38417fc78ca0aa694737cf44ef79b47" [label="/bin/sh -c chmod 440 /home/$user/flag" shape="box"];
  "sha256:d8cd47709a1174c3ccc19558c823a57747d0042cc95995b7fa6fd937b323c6c4" [label="sha256:d8cd47709a1174c3ccc19558c823a57747d0042cc95995b7fa6fd937b323c6c4" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:8958e10072507ec3d23fd6dc66a40222fe1659991ed2cdc0ca6964bf4b5c7e40" [label=""];
  "sha256:8958e10072507ec3d23fd6dc66a40222fe1659991ed2cdc0ca6964bf4b5c7e40" -> "sha256:4e424ea8ba42b98539b0605466bca7aeaf34fcb7ba06fdff342f865c884a5522" [label=""];
  "sha256:4e424ea8ba42b98539b0605466bca7aeaf34fcb7ba06fdff342f865c884a5522" -> "sha256:ec689e3a917ff7a071017e35546e25c7f39d636454bdd62fcf878cf004a6bd33" [label=""];
  "sha256:ec689e3a917ff7a071017e35546e25c7f39d636454bdd62fcf878cf004a6bd33" -> "sha256:5c91be4c16f497fcaaad0240c5cf89fed5c166e9fce99e96a1e2a10ab6072924" [label=""];
  "sha256:5c91be4c16f497fcaaad0240c5cf89fed5c166e9fce99e96a1e2a10ab6072924" -> "sha256:e88c3cae322ad105258ad7f27239337c03c330507fd17bd6c0e0d889b582593d" [label=""];
  "sha256:e88c3cae322ad105258ad7f27239337c03c330507fd17bd6c0e0d889b582593d" -> "sha256:fd01fffe506c8505942945b210b3fbce724a9d32bc25532d58089521fd5e91f4" [label=""];
  "sha256:040cd811707b05a6c1b79d8a41f92cd4c2ac89411b1c4b56ad1d973842c8fedb" -> "sha256:fd01fffe506c8505942945b210b3fbce724a9d32bc25532d58089521fd5e91f4" [label=""];
  "sha256:fd01fffe506c8505942945b210b3fbce724a9d32bc25532d58089521fd5e91f4" -> "sha256:df8033c012fcfe42bc4a42a517710ff7c38080ba125722634973797d91e06434" [label=""];
  "sha256:040cd811707b05a6c1b79d8a41f92cd4c2ac89411b1c4b56ad1d973842c8fedb" -> "sha256:df8033c012fcfe42bc4a42a517710ff7c38080ba125722634973797d91e06434" [label=""];
  "sha256:df8033c012fcfe42bc4a42a517710ff7c38080ba125722634973797d91e06434" -> "sha256:b2ec4411de87758ed3a7652b09dec50e23160bb234424e2ead95f19b3328c05c" [label=""];
  "sha256:040cd811707b05a6c1b79d8a41f92cd4c2ac89411b1c4b56ad1d973842c8fedb" -> "sha256:b2ec4411de87758ed3a7652b09dec50e23160bb234424e2ead95f19b3328c05c" [label=""];
  "sha256:b2ec4411de87758ed3a7652b09dec50e23160bb234424e2ead95f19b3328c05c" -> "sha256:465f1a301fb22b51cfff0c17fac088d5f29987a9261c2628d266dd3ea98772b4" [label=""];
  "sha256:040cd811707b05a6c1b79d8a41f92cd4c2ac89411b1c4b56ad1d973842c8fedb" -> "sha256:465f1a301fb22b51cfff0c17fac088d5f29987a9261c2628d266dd3ea98772b4" [label=""];
  "sha256:465f1a301fb22b51cfff0c17fac088d5f29987a9261c2628d266dd3ea98772b4" -> "sha256:37f2408898dd63487ac53b10e517a7c7f8f9e6a3c79ea9c31adb4869cd0b81dc" [label=""];
  "sha256:37f2408898dd63487ac53b10e517a7c7f8f9e6a3c79ea9c31adb4869cd0b81dc" -> "sha256:75a17b722382b137f4df8a6b70224927d7a7ddf384fc2f2020e0582554c05946" [label=""];
  "sha256:75a17b722382b137f4df8a6b70224927d7a7ddf384fc2f2020e0582554c05946" -> "sha256:f45f431ce25a9f38e6a31e7fd3767bf88b332ec8e96acc0b94888335b7941a54" [label=""];
  "sha256:f45f431ce25a9f38e6a31e7fd3767bf88b332ec8e96acc0b94888335b7941a54" -> "sha256:0bd57542a96533e7c7531bac58661108a38417fc78ca0aa694737cf44ef79b47" [label=""];
  "sha256:0bd57542a96533e7c7531bac58661108a38417fc78ca0aa694737cf44ef79b47" -> "sha256:d8cd47709a1174c3ccc19558c823a57747d0042cc95995b7fa6fd937b323c6c4" [label=""];
}

