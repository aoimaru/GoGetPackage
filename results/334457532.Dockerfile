[app/sources/334457532.Dockerfile]
digraph {
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" [label="docker-image://docker.io/library/openjdk:8-alpine" shape="ellipse"];
  "sha256:59c4ff70aca56acf7515e09230020d3ef05921a748409d1c75e805da23238ba6" [label="/bin/sh -c apk add --no-cache libc6-compat curl" shape="box"];
  "sha256:e84b152630328c04ddce2101657186d3ed93bb00c7e37ec292e8ed6a56bd348d" [label="mkdir{path=/app}" shape="note"];
  "sha256:f2ab924b0eecedb218a0a61a11a768b1c401e27c17c2088629547906f91e17d4" [label="docker-image://docker.io/library/openjdk:8-slim" shape="ellipse"];
  "sha256:27b479a124368efd1998dbf80c99215500f69e0c6f1429b01f7e2937d4cf9c3a" [label="mkdir{path=/app}" shape="note"];
  "sha256:df13197d954225995f05c3871cafa495608d29b8dbe644a4adc15a41b55a9fb6" [label="mkdir{path=/app}" shape="note"];
  "sha256:6340cf4c1c06d5bdae261b45b073e9ff33eb90d16f85250a13248b9b4090109a" [label="/bin/sh -c apk add --no-cache ca-certificates git curl unzip" shape="box"];
  "sha256:82034eab731a59dbc0627adee4875078bcd39e4cd373ff0af2ff636d12695f43" [label="/bin/sh -c git clone https://github.com/census-instrumentation/opencensus-java.git" shape="box"];
  "sha256:ee35992942fe17c0f17a2928947b0c36f4a194a902e06842b956f9a477ec9f12" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:52495e2e2640ee0b7799d8fcad37f8a8d9942fd5d3a4da20f8c3b07cfce0cd1d" [label="/bin/sh -c cd opencensus-java && ./gradlew install" shape="box"];
  "sha256:7dd745a969f09ea8a7b7d9ea18f290df48e6602cf589d460015e6e5101496813" [label="/bin/sh -c cd opencensus-java &&     egrep CURRENT_OPENCENSUS_VERSION build.gradle | awk '{print $3}' | sed 's/^/export OCVERSION=/' > /app/.env" shape="box"];
  "sha256:4072944cd8a37fef1d9b35cd6ee06ae63ee26a265a226315a7f90099735d36c7" [label="local://context" shape="ellipse"];
  "sha256:df637c919aab45693e5b71dc264d101275aa0e043334d56785500f45ae6c364f" [label="copy{src=/build.gradle, dest=/app/},copy{src=/gradlew, dest=/app/}" shape="note"];
  "sha256:c728fd0fc1eed85f47c6384197f72bfac4768b5eef1bc685116ad916db79ab04" [label="copy{src=/gradle, dest=/app/gradle}" shape="note"];
  "sha256:5058ed072ffaf295afd763287f6b26af5fe0fd81caa1deba23d59630c78c84ca" [label="/bin/sh -c sh -c ' cd /app/ ; . /app/.env; ./gradlew downloadRepos'" shape="box"];
  "sha256:de60bfe54429deec85504d37b5b77db3934a7f42a4b63abc23606c8d93ce55bf" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:6a915bdfd2ed52b35b10c7a84b0f20d7b0368e3a38c7b575b4b431bbebfa565b" [label="/bin/sh -c sh -c ' cd /app/ ;  . /app/.env ; ./gradlew installDist'" shape="box"];
  "sha256:9af3af8919c6cd60d46846ad408f528feb5932a1f360392d6e14b3b79a7fb46c" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:997e91b119c134edb455536d6977477becf43d8e3d15ded0d2d2a24b67038035" [label="sha256:997e91b119c134edb455536d6977477becf43d8e3d15ded0d2d2a24b67038035" shape="plaintext"];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:59c4ff70aca56acf7515e09230020d3ef05921a748409d1c75e805da23238ba6" [label=""];
  "sha256:59c4ff70aca56acf7515e09230020d3ef05921a748409d1c75e805da23238ba6" -> "sha256:e84b152630328c04ddce2101657186d3ed93bb00c7e37ec292e8ed6a56bd348d" [label=""];
  "sha256:f2ab924b0eecedb218a0a61a11a768b1c401e27c17c2088629547906f91e17d4" -> "sha256:27b479a124368efd1998dbf80c99215500f69e0c6f1429b01f7e2937d4cf9c3a" [label=""];
  "sha256:0f85c81d05d14a95cdc43adb8744bfe3f9a65f11568b091593bee2f1ef5beb9d" -> "sha256:df13197d954225995f05c3871cafa495608d29b8dbe644a4adc15a41b55a9fb6" [label=""];
  "sha256:df13197d954225995f05c3871cafa495608d29b8dbe644a4adc15a41b55a9fb6" -> "sha256:6340cf4c1c06d5bdae261b45b073e9ff33eb90d16f85250a13248b9b4090109a" [label=""];
  "sha256:6340cf4c1c06d5bdae261b45b073e9ff33eb90d16f85250a13248b9b4090109a" -> "sha256:82034eab731a59dbc0627adee4875078bcd39e4cd373ff0af2ff636d12695f43" [label=""];
  "sha256:27b479a124368efd1998dbf80c99215500f69e0c6f1429b01f7e2937d4cf9c3a" -> "sha256:ee35992942fe17c0f17a2928947b0c36f4a194a902e06842b956f9a477ec9f12" [label=""];
  "sha256:82034eab731a59dbc0627adee4875078bcd39e4cd373ff0af2ff636d12695f43" -> "sha256:ee35992942fe17c0f17a2928947b0c36f4a194a902e06842b956f9a477ec9f12" [label=""];
  "sha256:ee35992942fe17c0f17a2928947b0c36f4a194a902e06842b956f9a477ec9f12" -> "sha256:52495e2e2640ee0b7799d8fcad37f8a8d9942fd5d3a4da20f8c3b07cfce0cd1d" [label=""];
  "sha256:52495e2e2640ee0b7799d8fcad37f8a8d9942fd5d3a4da20f8c3b07cfce0cd1d" -> "sha256:7dd745a969f09ea8a7b7d9ea18f290df48e6602cf589d460015e6e5101496813" [label=""];
  "sha256:7dd745a969f09ea8a7b7d9ea18f290df48e6602cf589d460015e6e5101496813" -> "sha256:df637c919aab45693e5b71dc264d101275aa0e043334d56785500f45ae6c364f" [label=""];
  "sha256:4072944cd8a37fef1d9b35cd6ee06ae63ee26a265a226315a7f90099735d36c7" -> "sha256:df637c919aab45693e5b71dc264d101275aa0e043334d56785500f45ae6c364f" [label=""];
  "sha256:df637c919aab45693e5b71dc264d101275aa0e043334d56785500f45ae6c364f" -> "sha256:c728fd0fc1eed85f47c6384197f72bfac4768b5eef1bc685116ad916db79ab04" [label=""];
  "sha256:4072944cd8a37fef1d9b35cd6ee06ae63ee26a265a226315a7f90099735d36c7" -> "sha256:c728fd0fc1eed85f47c6384197f72bfac4768b5eef1bc685116ad916db79ab04" [label=""];
  "sha256:c728fd0fc1eed85f47c6384197f72bfac4768b5eef1bc685116ad916db79ab04" -> "sha256:5058ed072ffaf295afd763287f6b26af5fe0fd81caa1deba23d59630c78c84ca" [label=""];
  "sha256:5058ed072ffaf295afd763287f6b26af5fe0fd81caa1deba23d59630c78c84ca" -> "sha256:de60bfe54429deec85504d37b5b77db3934a7f42a4b63abc23606c8d93ce55bf" [label=""];
  "sha256:4072944cd8a37fef1d9b35cd6ee06ae63ee26a265a226315a7f90099735d36c7" -> "sha256:de60bfe54429deec85504d37b5b77db3934a7f42a4b63abc23606c8d93ce55bf" [label=""];
  "sha256:de60bfe54429deec85504d37b5b77db3934a7f42a4b63abc23606c8d93ce55bf" -> "sha256:6a915bdfd2ed52b35b10c7a84b0f20d7b0368e3a38c7b575b4b431bbebfa565b" [label=""];
  "sha256:e84b152630328c04ddce2101657186d3ed93bb00c7e37ec292e8ed6a56bd348d" -> "sha256:9af3af8919c6cd60d46846ad408f528feb5932a1f360392d6e14b3b79a7fb46c" [label=""];
  "sha256:6a915bdfd2ed52b35b10c7a84b0f20d7b0368e3a38c7b575b4b431bbebfa565b" -> "sha256:9af3af8919c6cd60d46846ad408f528feb5932a1f360392d6e14b3b79a7fb46c" [label=""];
  "sha256:9af3af8919c6cd60d46846ad408f528feb5932a1f360392d6e14b3b79a7fb46c" -> "sha256:997e91b119c134edb455536d6977477becf43d8e3d15ded0d2d2a24b67038035" [label=""];
}

