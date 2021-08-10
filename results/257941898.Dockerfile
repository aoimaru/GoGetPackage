[app/sources/257941898.Dockerfile]
digraph {
  "sha256:2adbb3b4b64fc854211855dd4aa66e4daededc8b4cab8627f057c79847d2c16a" [label="local://context" shape="ellipse"];
  "sha256:d97d27cb65c8e69b9318ce0d9a4c8544ef583342e0ba622fea3f5ac28e18460d" [label="docker-image://docker.io/puckel/docker-airflow:1.8.0" shape="ellipse"];
  "sha256:9ce3a430b09a643806e05645012d3ee321f9177fa88c41918bae7f72d16519c2" [label="/bin/sh -c apt-get update -yqq &&     apt-get install -yqq         sudo         python-pip         postgresql-client         git         libssl-dev         apt-transport-https         ca-certificates         curl         gnupg2         software-properties-common" shape="box"];
  "sha256:df8eb76447b844540b04b23c12b3da11bd33b8e8bf70ebe3828eb4a6e9156252" [label="/bin/sh -c curl -fsSL https://download.docker.com/linux/debian/gpg |     apt-key add -" shape="box"];
  "sha256:d1c4445d6f09f45f46365805c2d9dbbcc4b981fd240f3c266f6a6669093d736c" [label="/bin/sh -c add-apt-repository -y     \"deb [arch=amd64] https://download.docker.com/linux/debian     $(lsb_release -cs)     stable\"" shape="box"];
  "sha256:12ff08cb1fbb50ad24442e110bd186b01f7dedb540ff92bc2ea9928c00f21c62" [label="/bin/sh -c apt-get update -yqq &&     apt-get install -yqq docker-ce" shape="box"];
  "sha256:f38f904be6f6e47ad3cf131e79b63068c4d8784f913ab8219177022313ee7b3e" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:707cb5b80c4c0a41692ee3527efef43f0458cb5ddddff8b2f47eaa3aa76a8b30" [label="/bin/sh -c pip uninstall airflow -y &&     pip install -r /requirements.txt" shape="box"];
  "sha256:6c77b4a4c4a417b11c42440fee83f34e5329c0f5f721d27e71be29204f566ba1" [label="copy{src=/ansible/files/airflow/airflow.cfg, dest=/usr/local/airflow/airflow.cfg}" shape="note"];
  "sha256:517765a689f8f4b1407eb16bb19989af61ae43a02928b187a8b8c42197ebb0bb" [label="copy{src=/ansible/files/airflow/runner.sh, dest=/usr/local/airflow/runner.sh}" shape="note"];
  "sha256:2414d0c6059b76a22acbfe741e5765508529b0bb4420af8cc7698bfe77bec78c" [label="copy{src=/ansible/files/airflow/replace_env.py, dest=/usr/local/airflow/replace_env.py}" shape="note"];
  "sha256:2c77c605ba42cdb711e57b0742c7f936ba049d29a947d804c0431c443a3ee7bf" [label="copy{src=/ansible/files/airflow/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:fa05a34cd31b9fbc79fcf03b613ca796dd160bf6b1729c435e7a1b191329a177" [label="/bin/sh -c chown ${AIRFLOW_USER}:${AIRFLOW_USER} -R ${AIRFLOW_HOME}" shape="box"];
  "sha256:4db2b8c363af95b6f557a87c6c8aa0ecc0f7ee8b18783e975d427d5f85a9fa61" [label="copy{src=/dags, dest=/usr/local/airflow/dags/}" shape="note"];
  "sha256:8994214238b5809b32d432a651236574f36ae6ae2a95dd499d78e3a7c6bc3024" [label="sha256:8994214238b5809b32d432a651236574f36ae6ae2a95dd499d78e3a7c6bc3024" shape="plaintext"];
  "sha256:d97d27cb65c8e69b9318ce0d9a4c8544ef583342e0ba622fea3f5ac28e18460d" -> "sha256:9ce3a430b09a643806e05645012d3ee321f9177fa88c41918bae7f72d16519c2" [label=""];
  "sha256:9ce3a430b09a643806e05645012d3ee321f9177fa88c41918bae7f72d16519c2" -> "sha256:df8eb76447b844540b04b23c12b3da11bd33b8e8bf70ebe3828eb4a6e9156252" [label=""];
  "sha256:df8eb76447b844540b04b23c12b3da11bd33b8e8bf70ebe3828eb4a6e9156252" -> "sha256:d1c4445d6f09f45f46365805c2d9dbbcc4b981fd240f3c266f6a6669093d736c" [label=""];
  "sha256:d1c4445d6f09f45f46365805c2d9dbbcc4b981fd240f3c266f6a6669093d736c" -> "sha256:12ff08cb1fbb50ad24442e110bd186b01f7dedb540ff92bc2ea9928c00f21c62" [label=""];
  "sha256:12ff08cb1fbb50ad24442e110bd186b01f7dedb540ff92bc2ea9928c00f21c62" -> "sha256:f38f904be6f6e47ad3cf131e79b63068c4d8784f913ab8219177022313ee7b3e" [label=""];
  "sha256:2adbb3b4b64fc854211855dd4aa66e4daededc8b4cab8627f057c79847d2c16a" -> "sha256:f38f904be6f6e47ad3cf131e79b63068c4d8784f913ab8219177022313ee7b3e" [label=""];
  "sha256:f38f904be6f6e47ad3cf131e79b63068c4d8784f913ab8219177022313ee7b3e" -> "sha256:707cb5b80c4c0a41692ee3527efef43f0458cb5ddddff8b2f47eaa3aa76a8b30" [label=""];
  "sha256:707cb5b80c4c0a41692ee3527efef43f0458cb5ddddff8b2f47eaa3aa76a8b30" -> "sha256:6c77b4a4c4a417b11c42440fee83f34e5329c0f5f721d27e71be29204f566ba1" [label=""];
  "sha256:2adbb3b4b64fc854211855dd4aa66e4daededc8b4cab8627f057c79847d2c16a" -> "sha256:6c77b4a4c4a417b11c42440fee83f34e5329c0f5f721d27e71be29204f566ba1" [label=""];
  "sha256:6c77b4a4c4a417b11c42440fee83f34e5329c0f5f721d27e71be29204f566ba1" -> "sha256:517765a689f8f4b1407eb16bb19989af61ae43a02928b187a8b8c42197ebb0bb" [label=""];
  "sha256:2adbb3b4b64fc854211855dd4aa66e4daededc8b4cab8627f057c79847d2c16a" -> "sha256:517765a689f8f4b1407eb16bb19989af61ae43a02928b187a8b8c42197ebb0bb" [label=""];
  "sha256:517765a689f8f4b1407eb16bb19989af61ae43a02928b187a8b8c42197ebb0bb" -> "sha256:2414d0c6059b76a22acbfe741e5765508529b0bb4420af8cc7698bfe77bec78c" [label=""];
  "sha256:2adbb3b4b64fc854211855dd4aa66e4daededc8b4cab8627f057c79847d2c16a" -> "sha256:2414d0c6059b76a22acbfe741e5765508529b0bb4420af8cc7698bfe77bec78c" [label=""];
  "sha256:2414d0c6059b76a22acbfe741e5765508529b0bb4420af8cc7698bfe77bec78c" -> "sha256:2c77c605ba42cdb711e57b0742c7f936ba049d29a947d804c0431c443a3ee7bf" [label=""];
  "sha256:2adbb3b4b64fc854211855dd4aa66e4daededc8b4cab8627f057c79847d2c16a" -> "sha256:2c77c605ba42cdb711e57b0742c7f936ba049d29a947d804c0431c443a3ee7bf" [label=""];
  "sha256:2c77c605ba42cdb711e57b0742c7f936ba049d29a947d804c0431c443a3ee7bf" -> "sha256:fa05a34cd31b9fbc79fcf03b613ca796dd160bf6b1729c435e7a1b191329a177" [label=""];
  "sha256:fa05a34cd31b9fbc79fcf03b613ca796dd160bf6b1729c435e7a1b191329a177" -> "sha256:4db2b8c363af95b6f557a87c6c8aa0ecc0f7ee8b18783e975d427d5f85a9fa61" [label=""];
  "sha256:2adbb3b4b64fc854211855dd4aa66e4daededc8b4cab8627f057c79847d2c16a" -> "sha256:4db2b8c363af95b6f557a87c6c8aa0ecc0f7ee8b18783e975d427d5f85a9fa61" [label=""];
  "sha256:4db2b8c363af95b6f557a87c6c8aa0ecc0f7ee8b18783e975d427d5f85a9fa61" -> "sha256:8994214238b5809b32d432a651236574f36ae6ae2a95dd499d78e3a7c6bc3024" [label=""];
}

