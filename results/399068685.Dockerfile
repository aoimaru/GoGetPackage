[app/sources/399068685.Dockerfile]
digraph {
  "sha256:e88748b55621011f3dbd87791f9ca1c1be314d648d7ad775c1fe71343781a867" [label="local://context" shape="ellipse"];
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" [label="docker-image://docker.io/library/nginx:1.15" shape="ellipse"];
  "sha256:94e529b8dfcca719b41034cb73635744160cda6cbbc96f129c69069a300809fe" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:7521879575f9621019d4e5747baa2ba98e83f1cafcabeecae4d5cf6e86eb852d" [label="/bin/sh -c apt-get install -y subversion" shape="box"];
  "sha256:798873e51f12135b6aa5a54c0747642bc474afa8ac5e56491eb189bbe1f238f4" [label="/bin/sh -c mkdir -p ${var_dir}" shape="box"];
  "sha256:21c0c0d1fa112976edefe94059702b828f5d30cd5789a1890a76a6136861d6e4" [label="/bin/sh -c svn co --depth immediates http://svn.apache.org/repos/asf/httpcomponents/site ${www_dir}" shape="box"];
  "sha256:69e98de464959407456ddd42a06bd5937a0878569cc705d4880b7f513eba7e2f" [label="/bin/sh -c svn up --set-depth infinity ${www_dir}/images" shape="box"];
  "sha256:2a86c20c52807810b6ed381063836c6799ed12fa3119f0392df94969eb1ba12f" [label="/bin/sh -c svn up --set-depth infinity ${www_dir}/css" shape="box"];
  "sha256:e0494d8750f069edb97ccdd6b197d2c4fb7b1b9bea6d0f8ab4ae197bd2b2ee87" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:9cbef6e8c41ca125b3590a70f7218a1d5affa746e307ece5755fcdb2bab67c97" [label="sha256:9cbef6e8c41ca125b3590a70f7218a1d5affa746e307ece5755fcdb2bab67c97" shape="plaintext"];
  "sha256:bee2785a9d8f0bcb9ca23ce69395a268d6402c4a287009ebd81644cb949d0a10" -> "sha256:94e529b8dfcca719b41034cb73635744160cda6cbbc96f129c69069a300809fe" [label=""];
  "sha256:94e529b8dfcca719b41034cb73635744160cda6cbbc96f129c69069a300809fe" -> "sha256:7521879575f9621019d4e5747baa2ba98e83f1cafcabeecae4d5cf6e86eb852d" [label=""];
  "sha256:7521879575f9621019d4e5747baa2ba98e83f1cafcabeecae4d5cf6e86eb852d" -> "sha256:798873e51f12135b6aa5a54c0747642bc474afa8ac5e56491eb189bbe1f238f4" [label=""];
  "sha256:798873e51f12135b6aa5a54c0747642bc474afa8ac5e56491eb189bbe1f238f4" -> "sha256:21c0c0d1fa112976edefe94059702b828f5d30cd5789a1890a76a6136861d6e4" [label=""];
  "sha256:21c0c0d1fa112976edefe94059702b828f5d30cd5789a1890a76a6136861d6e4" -> "sha256:69e98de464959407456ddd42a06bd5937a0878569cc705d4880b7f513eba7e2f" [label=""];
  "sha256:69e98de464959407456ddd42a06bd5937a0878569cc705d4880b7f513eba7e2f" -> "sha256:2a86c20c52807810b6ed381063836c6799ed12fa3119f0392df94969eb1ba12f" [label=""];
  "sha256:2a86c20c52807810b6ed381063836c6799ed12fa3119f0392df94969eb1ba12f" -> "sha256:e0494d8750f069edb97ccdd6b197d2c4fb7b1b9bea6d0f8ab4ae197bd2b2ee87" [label=""];
  "sha256:e88748b55621011f3dbd87791f9ca1c1be314d648d7ad775c1fe71343781a867" -> "sha256:e0494d8750f069edb97ccdd6b197d2c4fb7b1b9bea6d0f8ab4ae197bd2b2ee87" [label=""];
  "sha256:e0494d8750f069edb97ccdd6b197d2c4fb7b1b9bea6d0f8ab4ae197bd2b2ee87" -> "sha256:9cbef6e8c41ca125b3590a70f7218a1d5affa746e307ece5755fcdb2bab67c97" [label=""];
}

