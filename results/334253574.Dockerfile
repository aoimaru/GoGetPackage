[app/sources/334253574.Dockerfile]
digraph {
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" [label="local://context" shape="ellipse"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:ae4831a42530aa2bde2de4eab70e82e79a9a79277e6fde53f4550c020a238719" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:a5edf0fe210b505871b7df28b1ed5aca89b869630be0e8cba22ca2c26968e155" [label="/bin/sh -c apt-get install -y wget supervisor iptables" shape="box"];
  "sha256:44012d26f134e3b991639339e93d17c951e3d15470dc0ce773e6ffede70b2a01" [label="/bin/sh -c apt-get install -y iputils-ping vim tmux less curl" shape="box"];
  "sha256:8bdc839ed7c77ce453564aea4058fb59caafe7a35220ef868926bef26eb95ab2" [label="/bin/sh -c apt-get install -y redis-server" shape="box"];
  "sha256:6972226018cc7b0356cb1e6f7f0ff70369203504330c5e68e44f6b0c718c9b0f" [label="/bin/sh -c /bin/bash -c \"curl -sL https://deb.nodesource.com/setup_8.x | bash -\"" shape="box"];
  "sha256:96f5982fb6e186607341e3f6cbd161dfddffff1462f41211d4bd5e2d97a835ad" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:6f7b5611d94b9f72d29c62431af1ac2f7901c6cae2ad24ee5a1466e69eaaac5d" [label="/bin/sh -c mkdir -p /gryadka" shape="box"];
  "sha256:2dd461ce0b80bbcf47b3ba48a35a5e6c26d63a65591cc1cbce48486f7e4834ed" [label="mkdir{path=/gryadka}" shape="note"];
  "sha256:fcd2fc13380b8a83d45de0934428a7ccb6fb0423061590728fca4bcb1fb86249" [label="copy{src=/isolate.sh, dest=/gryadka/isolate.sh}" shape="note"];
  "sha256:cfe671192ddc2e7e4e2912f1142ba4bcdc94cfb3a95dbef9acf5e74fe7004321" [label="copy{src=/rejoin.sh, dest=/gryadka/rejoin.sh}" shape="note"];
  "sha256:60cae0b82c274ab4cb15d87249bee9a3d7d0461f6a73e93d1625de4e4321062e" [label="copy{src=/redis.conf, dest=/gryadka/redis.conf}" shape="note"];
  "sha256:837cd3c44aadc1609b018731608db357553b66c575534e9d790dd06bfc6ef33e" [label="copy{src=/run-redis.sh, dest=/gryadka/run-redis.sh}" shape="note"];
  "sha256:463be06eed9e62c65ce114db75c2487cf4e8229165f303911ab6a9c798b4b3d9" [label="copy{src=/remote-tester, dest=/gryadka/remote-tester}" shape="note"];
  "sha256:9cbb96125262d62b5773b97484bb51150d3b16f06024508c412653181f48ff70" [label="mkdir{path=/gryadka/remote-tester}" shape="note"];
  "sha256:d6ca9ae0b64da5d134a57c5d867b3f69aca718ec3fa178e16716786c2746fd67" [label="/bin/sh -c npm install" shape="box"];
  "sha256:28d9a134cd198f46691e5a9af3ecf6f2ac14cf158e73daf6051cb3cbb89e6c5e" [label="mkdir{path=/gryadka}" shape="note"];
  "sha256:a0d911771682826a6bf0262d081e9a69497e88ec2f23c262d3496b48504ce680" [label="copy{src=/cluster.json, dest=/gryadka/cluster.json}" shape="note"];
  "sha256:ce857d7bd95d99e12cb86fbe9713c8cc356d5f228a07f72b7b8cca2760646668" [label="copy{src=/run-gryadka.sh, dest=/gryadka/run-gryadka.sh}" shape="note"];
  "sha256:b729c0d62b91a78ee7656c0308808de9134634cabc930c499b1ef5bcd77a93a3" [label="copy{src=/gryadka.conf, dest=/etc/supervisor/conf.d/gryadka.conf}" shape="note"];
  "sha256:b2a7c205fd131b9722f4993951f1c2d3c6fe05923f0ab9865449c72cf7ab3bdf" [label="sha256:b2a7c205fd131b9722f4993951f1c2d3c6fe05923f0ab9865449c72cf7ab3bdf" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:ae4831a42530aa2bde2de4eab70e82e79a9a79277e6fde53f4550c020a238719" [label=""];
  "sha256:ae4831a42530aa2bde2de4eab70e82e79a9a79277e6fde53f4550c020a238719" -> "sha256:a5edf0fe210b505871b7df28b1ed5aca89b869630be0e8cba22ca2c26968e155" [label=""];
  "sha256:a5edf0fe210b505871b7df28b1ed5aca89b869630be0e8cba22ca2c26968e155" -> "sha256:44012d26f134e3b991639339e93d17c951e3d15470dc0ce773e6ffede70b2a01" [label=""];
  "sha256:44012d26f134e3b991639339e93d17c951e3d15470dc0ce773e6ffede70b2a01" -> "sha256:8bdc839ed7c77ce453564aea4058fb59caafe7a35220ef868926bef26eb95ab2" [label=""];
  "sha256:8bdc839ed7c77ce453564aea4058fb59caafe7a35220ef868926bef26eb95ab2" -> "sha256:6972226018cc7b0356cb1e6f7f0ff70369203504330c5e68e44f6b0c718c9b0f" [label=""];
  "sha256:6972226018cc7b0356cb1e6f7f0ff70369203504330c5e68e44f6b0c718c9b0f" -> "sha256:96f5982fb6e186607341e3f6cbd161dfddffff1462f41211d4bd5e2d97a835ad" [label=""];
  "sha256:96f5982fb6e186607341e3f6cbd161dfddffff1462f41211d4bd5e2d97a835ad" -> "sha256:6f7b5611d94b9f72d29c62431af1ac2f7901c6cae2ad24ee5a1466e69eaaac5d" [label=""];
  "sha256:6f7b5611d94b9f72d29c62431af1ac2f7901c6cae2ad24ee5a1466e69eaaac5d" -> "sha256:2dd461ce0b80bbcf47b3ba48a35a5e6c26d63a65591cc1cbce48486f7e4834ed" [label=""];
  "sha256:2dd461ce0b80bbcf47b3ba48a35a5e6c26d63a65591cc1cbce48486f7e4834ed" -> "sha256:fcd2fc13380b8a83d45de0934428a7ccb6fb0423061590728fca4bcb1fb86249" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:fcd2fc13380b8a83d45de0934428a7ccb6fb0423061590728fca4bcb1fb86249" [label=""];
  "sha256:fcd2fc13380b8a83d45de0934428a7ccb6fb0423061590728fca4bcb1fb86249" -> "sha256:cfe671192ddc2e7e4e2912f1142ba4bcdc94cfb3a95dbef9acf5e74fe7004321" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:cfe671192ddc2e7e4e2912f1142ba4bcdc94cfb3a95dbef9acf5e74fe7004321" [label=""];
  "sha256:cfe671192ddc2e7e4e2912f1142ba4bcdc94cfb3a95dbef9acf5e74fe7004321" -> "sha256:60cae0b82c274ab4cb15d87249bee9a3d7d0461f6a73e93d1625de4e4321062e" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:60cae0b82c274ab4cb15d87249bee9a3d7d0461f6a73e93d1625de4e4321062e" [label=""];
  "sha256:60cae0b82c274ab4cb15d87249bee9a3d7d0461f6a73e93d1625de4e4321062e" -> "sha256:837cd3c44aadc1609b018731608db357553b66c575534e9d790dd06bfc6ef33e" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:837cd3c44aadc1609b018731608db357553b66c575534e9d790dd06bfc6ef33e" [label=""];
  "sha256:837cd3c44aadc1609b018731608db357553b66c575534e9d790dd06bfc6ef33e" -> "sha256:463be06eed9e62c65ce114db75c2487cf4e8229165f303911ab6a9c798b4b3d9" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:463be06eed9e62c65ce114db75c2487cf4e8229165f303911ab6a9c798b4b3d9" [label=""];
  "sha256:463be06eed9e62c65ce114db75c2487cf4e8229165f303911ab6a9c798b4b3d9" -> "sha256:9cbb96125262d62b5773b97484bb51150d3b16f06024508c412653181f48ff70" [label=""];
  "sha256:9cbb96125262d62b5773b97484bb51150d3b16f06024508c412653181f48ff70" -> "sha256:d6ca9ae0b64da5d134a57c5d867b3f69aca718ec3fa178e16716786c2746fd67" [label=""];
  "sha256:d6ca9ae0b64da5d134a57c5d867b3f69aca718ec3fa178e16716786c2746fd67" -> "sha256:28d9a134cd198f46691e5a9af3ecf6f2ac14cf158e73daf6051cb3cbb89e6c5e" [label=""];
  "sha256:28d9a134cd198f46691e5a9af3ecf6f2ac14cf158e73daf6051cb3cbb89e6c5e" -> "sha256:a0d911771682826a6bf0262d081e9a69497e88ec2f23c262d3496b48504ce680" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:a0d911771682826a6bf0262d081e9a69497e88ec2f23c262d3496b48504ce680" [label=""];
  "sha256:a0d911771682826a6bf0262d081e9a69497e88ec2f23c262d3496b48504ce680" -> "sha256:ce857d7bd95d99e12cb86fbe9713c8cc356d5f228a07f72b7b8cca2760646668" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:ce857d7bd95d99e12cb86fbe9713c8cc356d5f228a07f72b7b8cca2760646668" [label=""];
  "sha256:ce857d7bd95d99e12cb86fbe9713c8cc356d5f228a07f72b7b8cca2760646668" -> "sha256:b729c0d62b91a78ee7656c0308808de9134634cabc930c499b1ef5bcd77a93a3" [label=""];
  "sha256:4bb348c96990a0df76b38a08e57d2e967cbae1975644b55de4bc56d275e4631b" -> "sha256:b729c0d62b91a78ee7656c0308808de9134634cabc930c499b1ef5bcd77a93a3" [label=""];
  "sha256:b729c0d62b91a78ee7656c0308808de9134634cabc930c499b1ef5bcd77a93a3" -> "sha256:b2a7c205fd131b9722f4993951f1c2d3c6fe05923f0ab9865449c72cf7ab3bdf" [label=""];
}

