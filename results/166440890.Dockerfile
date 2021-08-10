[app/sources/166440890.Dockerfile]
digraph {
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" [label="docker-image://docker.io/phusion/baseimage:0.9.16" shape="ellipse"];
  "sha256:fa0c0a076f302cb622c3700412238e5dc36e1c4a8a1a120a8901575895322929" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C &&     echo \"deb http://ppa.launchpad.net/nginx/stable/ubuntu trusty main\" > /etc/apt/sources.list.d/nginx.list &&     apt-get update &&     apt-get upgrade -y &&     apt-get install -y --no-install-recommends radosgw nginx-light" shape="box"];
  "sha256:6d8a6bca71b3085b4c56ff2ab0c3590a4888d9571f3ae44dc2abac52b175b75b" [label="local://context" shape="ellipse"];
  "sha256:3fd70d601bbed143497686f14309c89a2c67f8e39ea2c82828e7e5e2215430bb" [label="copy{src=/conf/nginx.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:814e8f9ba0477d8fa303e5e9198d2279c00c1acc4a7ffbdf549200c7c8626c1c" [label="copy{src=/services/nginx, dest=/etc/service/nginx/run}" shape="note"];
  "sha256:85137e57eba9284cd17beb09770f22c5aac01e2b5a4ff5cf670bcde5657ed8ff" [label="copy{src=/services/radosgw, dest=/etc/service/radosgw/run}" shape="note"];
  "sha256:398785f94fc4b2f389c9d630424a3dda2f9b20a43584a3c8622f5887d0b9bd97" [label="sha256:398785f94fc4b2f389c9d630424a3dda2f9b20a43584a3c8622f5887d0b9bd97" shape="plaintext"];
  "sha256:5d8e2aec31158c2705cd9d29bc6c55e0a7c55e3bf7397c70ad85278ce1d08a83" -> "sha256:fa0c0a076f302cb622c3700412238e5dc36e1c4a8a1a120a8901575895322929" [label=""];
  "sha256:fa0c0a076f302cb622c3700412238e5dc36e1c4a8a1a120a8901575895322929" -> "sha256:3fd70d601bbed143497686f14309c89a2c67f8e39ea2c82828e7e5e2215430bb" [label=""];
  "sha256:6d8a6bca71b3085b4c56ff2ab0c3590a4888d9571f3ae44dc2abac52b175b75b" -> "sha256:3fd70d601bbed143497686f14309c89a2c67f8e39ea2c82828e7e5e2215430bb" [label=""];
  "sha256:3fd70d601bbed143497686f14309c89a2c67f8e39ea2c82828e7e5e2215430bb" -> "sha256:814e8f9ba0477d8fa303e5e9198d2279c00c1acc4a7ffbdf549200c7c8626c1c" [label=""];
  "sha256:6d8a6bca71b3085b4c56ff2ab0c3590a4888d9571f3ae44dc2abac52b175b75b" -> "sha256:814e8f9ba0477d8fa303e5e9198d2279c00c1acc4a7ffbdf549200c7c8626c1c" [label=""];
  "sha256:814e8f9ba0477d8fa303e5e9198d2279c00c1acc4a7ffbdf549200c7c8626c1c" -> "sha256:85137e57eba9284cd17beb09770f22c5aac01e2b5a4ff5cf670bcde5657ed8ff" [label=""];
  "sha256:6d8a6bca71b3085b4c56ff2ab0c3590a4888d9571f3ae44dc2abac52b175b75b" -> "sha256:85137e57eba9284cd17beb09770f22c5aac01e2b5a4ff5cf670bcde5657ed8ff" [label=""];
  "sha256:85137e57eba9284cd17beb09770f22c5aac01e2b5a4ff5cf670bcde5657ed8ff" -> "sha256:398785f94fc4b2f389c9d630424a3dda2f9b20a43584a3c8622f5887d0b9bd97" [label=""];
}

