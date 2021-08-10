[app/sources/398495880.Dockerfile]
digraph {
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:00d954c9aab03ef5589a6dbb547a32a2a06a98eac894f3a8756d20c41d6d4e11" [label="/bin/sh -c apt-get update       && apt-get install -y --no-install-recommends         curl         freetds-dev         gawk         libsqlite3-dev         libssl1.1         libzip-dev         make         sbcl         unzip       && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:846c46fb3511727a05d9b2761ae6959feb396237854d26bffbb34e6e18c63d40" [label="/bin/sh -c apt-get update       && apt-get install -y --no-install-recommends         bzip2         ca-certificates         curl         freetds-dev         gawk         git         libsqlite3-dev         libssl1.1         libzip-dev         make         openssl         patch         time         unzip         wget         cl-ironclad         cl-babel       && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:433fde85c31d9de05874bcdfc0bd9cf3c66bcc658fb2633c2e4f15bc77e35738" [label="/bin/sh -c curl -SL https://github.com/Clozure/ccl/releases/download/v1.11.5/ccl-1.11.5-linuxx86.tar.gz       | tar xz -C /usr/local/src/       && mv /usr/local/src/ccl/scripts/ccl64 /usr/local/bin/ccl" shape="box"];
  "sha256:59f4dbb951449cf78e91b8fdfb48ff0f322fc95c06020405c8f102739ff01008" [label="local://context" shape="ellipse"];
  "sha256:347ad37790c9e7eb87a41d1f6a87594ed6eaf594476e1a4bc961893cc151ce86" [label="copy{src=/, dest=/opt/src/pgloader}" shape="note"];
  "sha256:564e966f514a34b74b30adb540fd9bacb7f91c05e5d39c3249973e3a33b3d09f" [label="/bin/sh -c mkdir -p /opt/src/pgloader/build/bin       && cd /opt/src/pgloader       && make CL=ccl DYNSIZE=256 clones save" shape="box"];
  "sha256:82263f892376b3977530bbaeaad5d0b2ce6eada5cc05eee2bf8e11d2d1c570cc" [label="copy{src=/opt/src/pgloader/build/bin/pgloader, dest=/usr/local/bin}" shape="note"];
  "sha256:0548d8385cab41c3258a95038b5f8b2b8f82c6147b563ea02f5799232c0f9a04" [label="sha256:0548d8385cab41c3258a95038b5f8b2b8f82c6147b563ea02f5799232c0f9a04" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:00d954c9aab03ef5589a6dbb547a32a2a06a98eac894f3a8756d20c41d6d4e11" [label=""];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:846c46fb3511727a05d9b2761ae6959feb396237854d26bffbb34e6e18c63d40" [label=""];
  "sha256:846c46fb3511727a05d9b2761ae6959feb396237854d26bffbb34e6e18c63d40" -> "sha256:433fde85c31d9de05874bcdfc0bd9cf3c66bcc658fb2633c2e4f15bc77e35738" [label=""];
  "sha256:433fde85c31d9de05874bcdfc0bd9cf3c66bcc658fb2633c2e4f15bc77e35738" -> "sha256:347ad37790c9e7eb87a41d1f6a87594ed6eaf594476e1a4bc961893cc151ce86" [label=""];
  "sha256:59f4dbb951449cf78e91b8fdfb48ff0f322fc95c06020405c8f102739ff01008" -> "sha256:347ad37790c9e7eb87a41d1f6a87594ed6eaf594476e1a4bc961893cc151ce86" [label=""];
  "sha256:347ad37790c9e7eb87a41d1f6a87594ed6eaf594476e1a4bc961893cc151ce86" -> "sha256:564e966f514a34b74b30adb540fd9bacb7f91c05e5d39c3249973e3a33b3d09f" [label=""];
  "sha256:00d954c9aab03ef5589a6dbb547a32a2a06a98eac894f3a8756d20c41d6d4e11" -> "sha256:82263f892376b3977530bbaeaad5d0b2ce6eada5cc05eee2bf8e11d2d1c570cc" [label=""];
  "sha256:564e966f514a34b74b30adb540fd9bacb7f91c05e5d39c3249973e3a33b3d09f" -> "sha256:82263f892376b3977530bbaeaad5d0b2ce6eada5cc05eee2bf8e11d2d1c570cc" [label=""];
  "sha256:82263f892376b3977530bbaeaad5d0b2ce6eada5cc05eee2bf8e11d2d1c570cc" -> "sha256:0548d8385cab41c3258a95038b5f8b2b8f82c6147b563ea02f5799232c0f9a04" [label=""];
}

