[app/sources/165009170.Dockerfile]
digraph {
  "sha256:d826f61843f6a629c97285d0b48aa68edb8ef8c59631f52725a2c3a3425a1dff" [label="local://context" shape="ellipse"];
  "sha256:7e6ca87b2f0921d8f737a4d0d6ce7cf7cdd9f25305370b5c9f35d5fc2dc71d4b" [label="docker-image://registry.access.redhat.com/rhscl/python-27-rhel7:latest" shape="ellipse"];
  "sha256:698568db666658d87752922f82960ca59c06a756b765add48b0023eef844cd26" [label="/bin/sh -c sed -i -e 's!pip install!pip install --cert /tmp/ca_cert!; 1a curl -so /tmp/ca_cert http://cacert/' /usr/libexec/s2i/assemble" shape="box"];
  "sha256:51e20b185084f5ea0ce84fb358e46513c99469a17c8bca468df36d8d47d17149" [label="copy{src=/connection.py, dest=/opt/rh/python27/root/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/connection.py}" shape="note"];
  "sha256:b6d4c39b19150d86b1da1eaa1d13cf6f61b3145a59815c3ec87f21e0414f0b50" [label="copy{src=/connectionpool.py, dest=/opt/rh/python27/root/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/connectionpool.py}" shape="note"];
  "sha256:1541f5d70ebc5f49829719c3a891fc607d1e93e6f830e07a805f74e22678d561" [label="copy{src=/util-connection.py, dest=/opt/rh/python27/root/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/connection.py}" shape="note"];
  "sha256:483a2b0d627f42bbb869fd574d483baac787489048bbd1c8f7b47cf02cac1dd8" [label="sha256:483a2b0d627f42bbb869fd574d483baac787489048bbd1c8f7b47cf02cac1dd8" shape="plaintext"];
  "sha256:7e6ca87b2f0921d8f737a4d0d6ce7cf7cdd9f25305370b5c9f35d5fc2dc71d4b" -> "sha256:698568db666658d87752922f82960ca59c06a756b765add48b0023eef844cd26" [label=""];
  "sha256:698568db666658d87752922f82960ca59c06a756b765add48b0023eef844cd26" -> "sha256:51e20b185084f5ea0ce84fb358e46513c99469a17c8bca468df36d8d47d17149" [label=""];
  "sha256:d826f61843f6a629c97285d0b48aa68edb8ef8c59631f52725a2c3a3425a1dff" -> "sha256:51e20b185084f5ea0ce84fb358e46513c99469a17c8bca468df36d8d47d17149" [label=""];
  "sha256:51e20b185084f5ea0ce84fb358e46513c99469a17c8bca468df36d8d47d17149" -> "sha256:b6d4c39b19150d86b1da1eaa1d13cf6f61b3145a59815c3ec87f21e0414f0b50" [label=""];
  "sha256:d826f61843f6a629c97285d0b48aa68edb8ef8c59631f52725a2c3a3425a1dff" -> "sha256:b6d4c39b19150d86b1da1eaa1d13cf6f61b3145a59815c3ec87f21e0414f0b50" [label=""];
  "sha256:b6d4c39b19150d86b1da1eaa1d13cf6f61b3145a59815c3ec87f21e0414f0b50" -> "sha256:1541f5d70ebc5f49829719c3a891fc607d1e93e6f830e07a805f74e22678d561" [label=""];
  "sha256:d826f61843f6a629c97285d0b48aa68edb8ef8c59631f52725a2c3a3425a1dff" -> "sha256:1541f5d70ebc5f49829719c3a891fc607d1e93e6f830e07a805f74e22678d561" [label=""];
  "sha256:1541f5d70ebc5f49829719c3a891fc607d1e93e6f830e07a805f74e22678d561" -> "sha256:483a2b0d627f42bbb869fd574d483baac787489048bbd1c8f7b47cf02cac1dd8" [label=""];
}

