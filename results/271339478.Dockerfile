[app/sources/271339478.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:ec69c1edf0183bc19af067ce08a1051f420df07835715f7e7b50973eca817a82" [label="/bin/sh -c useradd -m -d /home/$user/ -s /bin/bash $user" shape="box"];
  "sha256:b86ea22ab50887df435ae5f99da2ca4aed812edc6c1b6bdbda7c2f54250d4c0d" [label="/bin/sh -c echo \"$user     hard    nproc   20\" >> /etc/security/limits.conf" shape="box"];
  "sha256:f547f6541da2125dce78b3dce3b0f8a32a928125c8b1f7cd4f507e85622939a8" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e1e622b154df6fe5f064bbd2a0c67f0c468d2af1310e0a84fee3c0488ddf213b" [label="/bin/sh -c apt-get install -y xinetd" shape="box"];
  "sha256:89ea9e238a0c9f6cf65ee38b1402964d81ddeb82b4a39124e337e3c2e4aac269" [label="local://context" shape="ellipse"];
  "sha256:850b62626ab71799e376fccb1e5fdd5c2dbc1eafb2dd3cdc268ab0fec6fe9a01" [label="copy{src=/dr, dest=/home/dr/dirtyroom}" shape="note"];
  "sha256:8ea2a423c50bbcbc90a974efae6a69004f1e9d2d3bb0ce0652d619e7b9e0fd52" [label="copy{src=/flag, dest=/home/dr/flag}" shape="note"];
  "sha256:6c21bc3de1ada0fe5148b8a390421a0155a3eeba2d0ff857b9e8dc43112b9eae" [label="copy{src=/xinetd_conf, dest=/etc/xinetd.d/xinetd_conf}" shape="note"];
  "sha256:3bf9d42e5f9c39c13fbcfd8d1c23dac2a97fc053c3f6680c8dd3bcc6245f0163" [label="/bin/sh -c chown -R root:$user /home/$user" shape="box"];
  "sha256:45989a02076bc82313a84814160154c7158f24fa8f3abb23fa9bce634178ae6a" [label="/bin/sh -c chmod -R 750 /home/$user" shape="box"];
  "sha256:96130f8084571dff2e751b3ea1185e8c3161567f796e6bc5e59acece34b514ee" [label="/bin/sh -c chmod 440 /home/$user/flag" shape="box"];
  "sha256:8bea5afcfa30b552a82655d2c1c1cb0f50e4c8ab2a0166df1779a06ee0ef57c5" [label="sha256:8bea5afcfa30b552a82655d2c1c1cb0f50e4c8ab2a0166df1779a06ee0ef57c5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:ec69c1edf0183bc19af067ce08a1051f420df07835715f7e7b50973eca817a82" [label=""];
  "sha256:ec69c1edf0183bc19af067ce08a1051f420df07835715f7e7b50973eca817a82" -> "sha256:b86ea22ab50887df435ae5f99da2ca4aed812edc6c1b6bdbda7c2f54250d4c0d" [label=""];
  "sha256:b86ea22ab50887df435ae5f99da2ca4aed812edc6c1b6bdbda7c2f54250d4c0d" -> "sha256:f547f6541da2125dce78b3dce3b0f8a32a928125c8b1f7cd4f507e85622939a8" [label=""];
  "sha256:f547f6541da2125dce78b3dce3b0f8a32a928125c8b1f7cd4f507e85622939a8" -> "sha256:e1e622b154df6fe5f064bbd2a0c67f0c468d2af1310e0a84fee3c0488ddf213b" [label=""];
  "sha256:e1e622b154df6fe5f064bbd2a0c67f0c468d2af1310e0a84fee3c0488ddf213b" -> "sha256:850b62626ab71799e376fccb1e5fdd5c2dbc1eafb2dd3cdc268ab0fec6fe9a01" [label=""];
  "sha256:89ea9e238a0c9f6cf65ee38b1402964d81ddeb82b4a39124e337e3c2e4aac269" -> "sha256:850b62626ab71799e376fccb1e5fdd5c2dbc1eafb2dd3cdc268ab0fec6fe9a01" [label=""];
  "sha256:850b62626ab71799e376fccb1e5fdd5c2dbc1eafb2dd3cdc268ab0fec6fe9a01" -> "sha256:8ea2a423c50bbcbc90a974efae6a69004f1e9d2d3bb0ce0652d619e7b9e0fd52" [label=""];
  "sha256:89ea9e238a0c9f6cf65ee38b1402964d81ddeb82b4a39124e337e3c2e4aac269" -> "sha256:8ea2a423c50bbcbc90a974efae6a69004f1e9d2d3bb0ce0652d619e7b9e0fd52" [label=""];
  "sha256:8ea2a423c50bbcbc90a974efae6a69004f1e9d2d3bb0ce0652d619e7b9e0fd52" -> "sha256:6c21bc3de1ada0fe5148b8a390421a0155a3eeba2d0ff857b9e8dc43112b9eae" [label=""];
  "sha256:89ea9e238a0c9f6cf65ee38b1402964d81ddeb82b4a39124e337e3c2e4aac269" -> "sha256:6c21bc3de1ada0fe5148b8a390421a0155a3eeba2d0ff857b9e8dc43112b9eae" [label=""];
  "sha256:6c21bc3de1ada0fe5148b8a390421a0155a3eeba2d0ff857b9e8dc43112b9eae" -> "sha256:3bf9d42e5f9c39c13fbcfd8d1c23dac2a97fc053c3f6680c8dd3bcc6245f0163" [label=""];
  "sha256:3bf9d42e5f9c39c13fbcfd8d1c23dac2a97fc053c3f6680c8dd3bcc6245f0163" -> "sha256:45989a02076bc82313a84814160154c7158f24fa8f3abb23fa9bce634178ae6a" [label=""];
  "sha256:45989a02076bc82313a84814160154c7158f24fa8f3abb23fa9bce634178ae6a" -> "sha256:96130f8084571dff2e751b3ea1185e8c3161567f796e6bc5e59acece34b514ee" [label=""];
  "sha256:96130f8084571dff2e751b3ea1185e8c3161567f796e6bc5e59acece34b514ee" -> "sha256:8bea5afcfa30b552a82655d2c1c1cb0f50e4c8ab2a0166df1779a06ee0ef57c5" [label=""];
}

