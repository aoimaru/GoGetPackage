[app/sources/324896511.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c2b98ec3f147d8ca4a056dbbf2bf2673015d9e5fb1cf2c9799cb36939d04ff6e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:98f26ec902219ac752597803dfdd3e1537c5985a81dc53338717eeb335ec0c48" [label="/bin/sh -c apt-get install -y ed" shape="box"];
  "sha256:f42c3fb45b90e93c54e75aef9de3703e7cbdc2b9e8b657233c66116d1d1edffa" [label="/bin/sh -c useradd -b /home/noleak noleak" shape="box"];
  "sha256:3a16ac55a34fb1e5cefe0b18cb462bbb9c8dfab21aea6bf14910287ab73fd4eb" [label="local://context" shape="ellipse"];
  "sha256:93e9f6b80ca2f93a92791d7860dbfec8267c75b3c6880edd21686535eebbbc67" [label="copy{src=/noleak, dest=/home/noleak/noleak}" shape="note"];
  "sha256:ddae6003f086f1c4ce2cffda8187fe408128866ec8fe6520b44e1ab5990f5b1e" [label="copy{src=/flag, dest=/home/noleak/flag_166903c90eadca6ffac515cd8a6787f2}" shape="note"];
  "sha256:6566eaa370ed8f9d34ff2622a8882158fb011e984929842dc35c39feab6e95bb" [label="/bin/sh -c chown -R root:$USER /home/$USER" shape="box"];
  "sha256:c4591c83f09392d22a3f226307d622760ce3ea49414f34afc606d93b48b5d0a7" [label="/bin/sh -c chmod 750 /home/$USER" shape="box"];
  "sha256:93cd94a895d1b8ef66e9ac32ee144acede047efc3e3f4262e3de12d5cce63945" [label="/bin/sh -c chmod 750 /home/$USER/$USER" shape="box"];
  "sha256:5640ea7e55277bc18e16f89e64e81df762a68369943c0b5f1201855bc8de6d31" [label="/bin/sh -c chmod 440 /home/$USER/$FLAG" shape="box"];
  "sha256:4b6df2a51dd99e832066649831f99907d86cd5ab2591cb1ff0cc86f6979d040d" [label="copy{src=/super.pl, dest=/}" shape="note"];
  "sha256:b75d59b1ae2bea3ceeb32343ef9a57dd6b9ca4be3d5f8dd8e7c3457edfa5ff42" [label="mkdir{path=/home/noleak}" shape="note"];
  "sha256:e7fd3052fbbc97994771f8b9e2c1171ae7d73438dbb691dcd9cdba363f0e7dcd" [label="sha256:e7fd3052fbbc97994771f8b9e2c1171ae7d73438dbb691dcd9cdba363f0e7dcd" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c2b98ec3f147d8ca4a056dbbf2bf2673015d9e5fb1cf2c9799cb36939d04ff6e" [label=""];
  "sha256:c2b98ec3f147d8ca4a056dbbf2bf2673015d9e5fb1cf2c9799cb36939d04ff6e" -> "sha256:98f26ec902219ac752597803dfdd3e1537c5985a81dc53338717eeb335ec0c48" [label=""];
  "sha256:98f26ec902219ac752597803dfdd3e1537c5985a81dc53338717eeb335ec0c48" -> "sha256:f42c3fb45b90e93c54e75aef9de3703e7cbdc2b9e8b657233c66116d1d1edffa" [label=""];
  "sha256:f42c3fb45b90e93c54e75aef9de3703e7cbdc2b9e8b657233c66116d1d1edffa" -> "sha256:93e9f6b80ca2f93a92791d7860dbfec8267c75b3c6880edd21686535eebbbc67" [label=""];
  "sha256:3a16ac55a34fb1e5cefe0b18cb462bbb9c8dfab21aea6bf14910287ab73fd4eb" -> "sha256:93e9f6b80ca2f93a92791d7860dbfec8267c75b3c6880edd21686535eebbbc67" [label=""];
  "sha256:93e9f6b80ca2f93a92791d7860dbfec8267c75b3c6880edd21686535eebbbc67" -> "sha256:ddae6003f086f1c4ce2cffda8187fe408128866ec8fe6520b44e1ab5990f5b1e" [label=""];
  "sha256:3a16ac55a34fb1e5cefe0b18cb462bbb9c8dfab21aea6bf14910287ab73fd4eb" -> "sha256:ddae6003f086f1c4ce2cffda8187fe408128866ec8fe6520b44e1ab5990f5b1e" [label=""];
  "sha256:ddae6003f086f1c4ce2cffda8187fe408128866ec8fe6520b44e1ab5990f5b1e" -> "sha256:6566eaa370ed8f9d34ff2622a8882158fb011e984929842dc35c39feab6e95bb" [label=""];
  "sha256:6566eaa370ed8f9d34ff2622a8882158fb011e984929842dc35c39feab6e95bb" -> "sha256:c4591c83f09392d22a3f226307d622760ce3ea49414f34afc606d93b48b5d0a7" [label=""];
  "sha256:c4591c83f09392d22a3f226307d622760ce3ea49414f34afc606d93b48b5d0a7" -> "sha256:93cd94a895d1b8ef66e9ac32ee144acede047efc3e3f4262e3de12d5cce63945" [label=""];
  "sha256:93cd94a895d1b8ef66e9ac32ee144acede047efc3e3f4262e3de12d5cce63945" -> "sha256:5640ea7e55277bc18e16f89e64e81df762a68369943c0b5f1201855bc8de6d31" [label=""];
  "sha256:5640ea7e55277bc18e16f89e64e81df762a68369943c0b5f1201855bc8de6d31" -> "sha256:4b6df2a51dd99e832066649831f99907d86cd5ab2591cb1ff0cc86f6979d040d" [label=""];
  "sha256:3a16ac55a34fb1e5cefe0b18cb462bbb9c8dfab21aea6bf14910287ab73fd4eb" -> "sha256:4b6df2a51dd99e832066649831f99907d86cd5ab2591cb1ff0cc86f6979d040d" [label=""];
  "sha256:4b6df2a51dd99e832066649831f99907d86cd5ab2591cb1ff0cc86f6979d040d" -> "sha256:b75d59b1ae2bea3ceeb32343ef9a57dd6b9ca4be3d5f8dd8e7c3457edfa5ff42" [label=""];
  "sha256:b75d59b1ae2bea3ceeb32343ef9a57dd6b9ca4be3d5f8dd8e7c3457edfa5ff42" -> "sha256:e7fd3052fbbc97994771f8b9e2c1171ae7d73438dbb691dcd9cdba363f0e7dcd" [label=""];
}

