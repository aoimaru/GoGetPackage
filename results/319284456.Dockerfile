[app/sources/319284456.Dockerfile]
digraph {
  "sha256:7959b643abea018183a027368178b6597c512b9cd5305bc330e656baa4c18c67" [label="docker-image://docker.io/oac/builder:latest" shape="ellipse"];
  "sha256:5df9dd6eae16f3de8492f15db3f84c465cb62703ba4e86a5f3c5db2c2cd1ddcf" [label="/bin/sh -c git clone -b $branch https://github.com/OACIO/oac.git --recursive     && cd oac && echo \"$branch:$(git rev-parse HEAD)\" > /etc/oac-version     && cmake -H. -B\"/opt/oac\" -GNinja -DCMAKE_BUILD_TYPE=Release -DWASM_ROOT=/opt/wasm -DCMAKE_CXX_COMPILER=clang++        -DCMAKE_C_COMPILER=clang -DCMAKE_INSTALL_PREFIX=/opt/oac  -DSecp256k1_ROOT_DIR=/usr/local -DBUILD_MONGO_DB_PLUGIN=true -DCORE_SYMBOL_NAME=$symbol     && cmake --build /opt/oac --target install     && mv /oac/Docker/config.ini / && mv /opt/oac/contracts /contracts && mv /oac/Docker/nodoacd.sh /opt/oac/bin/nodoacd.sh && mv tutorials /tutorials     && rm -rf /oac" shape="box"];
  "sha256:6ca42ca2c2282bb478102e74c39fa43cc58d9906647fe9e3f1ab7c728e0cf944" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssl vim psmisc python3-pip && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3faa85cb83defdff47a20d8db71b20321c318ec0f290fcb877fcd69220b78558" [label="/bin/sh -c pip3 install numpy" shape="box"];
  "sha256:2e18fb6df5e14215abaf5de7993437f1346d5619354431fe37516df1ac6e1c8e" [label="/bin/sh -c chmod +x /opt/oac/bin/nodoacd.sh" shape="box"];
  "sha256:a89b3e89216a6d74e48d523926e5d19a07106dd1546f5e8b44d259971c7aa9ea" [label="sha256:a89b3e89216a6d74e48d523926e5d19a07106dd1546f5e8b44d259971c7aa9ea" shape="plaintext"];
  "sha256:7959b643abea018183a027368178b6597c512b9cd5305bc330e656baa4c18c67" -> "sha256:5df9dd6eae16f3de8492f15db3f84c465cb62703ba4e86a5f3c5db2c2cd1ddcf" [label=""];
  "sha256:5df9dd6eae16f3de8492f15db3f84c465cb62703ba4e86a5f3c5db2c2cd1ddcf" -> "sha256:6ca42ca2c2282bb478102e74c39fa43cc58d9906647fe9e3f1ab7c728e0cf944" [label=""];
  "sha256:6ca42ca2c2282bb478102e74c39fa43cc58d9906647fe9e3f1ab7c728e0cf944" -> "sha256:3faa85cb83defdff47a20d8db71b20321c318ec0f290fcb877fcd69220b78558" [label=""];
  "sha256:3faa85cb83defdff47a20d8db71b20321c318ec0f290fcb877fcd69220b78558" -> "sha256:2e18fb6df5e14215abaf5de7993437f1346d5619354431fe37516df1ac6e1c8e" [label=""];
  "sha256:2e18fb6df5e14215abaf5de7993437f1346d5619354431fe37516df1ac6e1c8e" -> "sha256:a89b3e89216a6d74e48d523926e5d19a07106dd1546f5e8b44d259971c7aa9ea" [label=""];
}

