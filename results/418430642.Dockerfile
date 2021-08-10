[app/sources/418430642.Dockerfile]
digraph {
  "sha256:b7dea1c833882179cd622aa197e937fefbbccc625f64db12914b72bf35502ebb" [label="docker-image://docker.io/library/ubuntu:cosmic" shape="ellipse"];
  "sha256:74a79cf0a394cf540bf90c025db85ef3af2426713b591066a437e82f38d74eea" [label="/bin/sh -c apt-get update && apt-get install -y     build-essential     ccache     curl     dbus     gir1.2-gtk-3.0     git     gobject-introspection     lcov     libbz2-dev     libcairo2-dev     libffi-dev     libgirepository1.0-dev     libglib2.0-dev     libgtk-3-0     libreadline-dev     libsqlite3-dev     libssl-dev     ninja-build     python3-pip     xauth     xvfb     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6058c03254b555974c9fb44b4f2e2067ac5e73e6ce29846dbb99068ef18961c5" [label="/bin/sh -c useradd -u $HOST_USER_ID -ms /bin/bash user" shape="box"];
  "sha256:a94d2c527eaab70c509aaab23b6ffbb26ed66a510ec05d40294e303b13d5ea8a" [label="mkdir{path=/home/user}" shape="note"];
  "sha256:f9b9dbc037dc78a13b80e683ca0bcb9912d7cfdfb7004a0e66294ff5a21e542a" [label="/bin/sh -c curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash" shape="box"];
  "sha256:a961a774dde73bb2d994fc71b37e101a506db4ffefe5cdb0eefaf887b66d40e2" [label="/bin/sh -c pyenv install pypy2.7-7.1.0" shape="box"];
  "sha256:f71a7114e99e4a9846262ad45409680ceb258f835f8d9120662f15f7eccdacfe" [label="/bin/sh -c pyenv install pypy3.6-7.1.0" shape="box"];
  "sha256:3c8e13db2904128af3fa3da2faf7983f09333a05c0076532daf416f57ab3ecd2" [label="/bin/sh -c pyenv install --debug 2.7.16" shape="box"];
  "sha256:3a99f57e02938f2edb231b4ce5b897b9dddb281d5aa00e42928cc490374c861c" [label="/bin/sh -c pyenv install 3.5.7" shape="box"];
  "sha256:a934b0a047ad3e8a79268afd21430f7a7b17530ec34322e54ee9cb206a2f70bc" [label="/bin/sh -c pyenv install 3.6.8" shape="box"];
  "sha256:32214268636de3b7df80b013d6d34b46be4a1ba8bc045bca2309ba434e1bef07" [label="/bin/sh -c pyenv install --debug 3.7.3" shape="box"];
  "sha256:781b51ed81fcb879ee839b71f2fbf55df156f699f9b7a58e3fdd102ec2480704" [label="/bin/sh -c pyenv install --debug 3.8-dev" shape="box"];
  "sha256:b92b7b108bf203749b6f441c95eb494d541e0caed8aa08428a8c3c3cca91e4e0" [label="sha256:b92b7b108bf203749b6f441c95eb494d541e0caed8aa08428a8c3c3cca91e4e0" shape="plaintext"];
  "sha256:b7dea1c833882179cd622aa197e937fefbbccc625f64db12914b72bf35502ebb" -> "sha256:74a79cf0a394cf540bf90c025db85ef3af2426713b591066a437e82f38d74eea" [label=""];
  "sha256:74a79cf0a394cf540bf90c025db85ef3af2426713b591066a437e82f38d74eea" -> "sha256:6058c03254b555974c9fb44b4f2e2067ac5e73e6ce29846dbb99068ef18961c5" [label=""];
  "sha256:6058c03254b555974c9fb44b4f2e2067ac5e73e6ce29846dbb99068ef18961c5" -> "sha256:a94d2c527eaab70c509aaab23b6ffbb26ed66a510ec05d40294e303b13d5ea8a" [label=""];
  "sha256:a94d2c527eaab70c509aaab23b6ffbb26ed66a510ec05d40294e303b13d5ea8a" -> "sha256:f9b9dbc037dc78a13b80e683ca0bcb9912d7cfdfb7004a0e66294ff5a21e542a" [label=""];
  "sha256:f9b9dbc037dc78a13b80e683ca0bcb9912d7cfdfb7004a0e66294ff5a21e542a" -> "sha256:a961a774dde73bb2d994fc71b37e101a506db4ffefe5cdb0eefaf887b66d40e2" [label=""];
  "sha256:a961a774dde73bb2d994fc71b37e101a506db4ffefe5cdb0eefaf887b66d40e2" -> "sha256:f71a7114e99e4a9846262ad45409680ceb258f835f8d9120662f15f7eccdacfe" [label=""];
  "sha256:f71a7114e99e4a9846262ad45409680ceb258f835f8d9120662f15f7eccdacfe" -> "sha256:3c8e13db2904128af3fa3da2faf7983f09333a05c0076532daf416f57ab3ecd2" [label=""];
  "sha256:3c8e13db2904128af3fa3da2faf7983f09333a05c0076532daf416f57ab3ecd2" -> "sha256:3a99f57e02938f2edb231b4ce5b897b9dddb281d5aa00e42928cc490374c861c" [label=""];
  "sha256:3a99f57e02938f2edb231b4ce5b897b9dddb281d5aa00e42928cc490374c861c" -> "sha256:a934b0a047ad3e8a79268afd21430f7a7b17530ec34322e54ee9cb206a2f70bc" [label=""];
  "sha256:a934b0a047ad3e8a79268afd21430f7a7b17530ec34322e54ee9cb206a2f70bc" -> "sha256:32214268636de3b7df80b013d6d34b46be4a1ba8bc045bca2309ba434e1bef07" [label=""];
  "sha256:32214268636de3b7df80b013d6d34b46be4a1ba8bc045bca2309ba434e1bef07" -> "sha256:781b51ed81fcb879ee839b71f2fbf55df156f699f9b7a58e3fdd102ec2480704" [label=""];
  "sha256:781b51ed81fcb879ee839b71f2fbf55df156f699f9b7a58e3fdd102ec2480704" -> "sha256:b92b7b108bf203749b6f441c95eb494d541e0caed8aa08428a8c3c3cca91e4e0" [label=""];
}

