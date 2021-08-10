[app/sources/352462080.Dockerfile]
digraph {
  "sha256:fd3e4afad6b7aaabf31b3c7972beb4ccbf16e9c99ebf80cd0052239f8b7e8ed2" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c7b608b5d47b3fe4bcfcab448f10267aaa066a645cd8ed39691b3fa0f681db0c" [label="/bin/sh -c apt-get update && echo \"y\" | apt-get install apt-transport-https" shape="box"];
  "sha256:3e7d3ea539a124a46d461ec1083776ebeaa2e35004adf0ecc1afacf721cd407f" [label="/bin/sh -c apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D" shape="box"];
  "sha256:90045c287a922ebbb128f622cbf6cd9abd36df56622ecbfab2984fce1034dc2f" [label="/bin/sh -c echo \"deb https://apt.dockerproject.org/repo ubuntu-xenial main\" > /etc/apt/sources.list.d/docker.list" shape="box"];
  "sha256:eeb09854b116ffd7355675c1bf0a024b75e18a8a6688c7993fdd9010056973cc" [label="/bin/sh -c apt-get update &&     echo \"y\" | apt-get install python     python-dev     python-pip     build-essential     docker-engine     dpkg     dpkg-dev     qemu-kvm   && pip install -I pip==9.0.1   && pip install mock" shape="box"];
  "sha256:1330a0f061c00cf4cf7ccee191e294f2c62142d79aad519fcc0d8241b1e5e43e" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:ad2b694d00b5432eb3dca702f60a89c803e07266a1083559fcf84728d0809bad" [label="copy{src=/requirements-test.txt, dest=/requirements-test.txt}" shape="note"];
  "sha256:7b3eca8a8815cbcbcc4547b5170249e729bd6e0baf5c64104a52bcfae0c7e5c3" [label="/bin/sh -c pip install -r requirements-test.txt" shape="box"];
  "sha256:62713dbd1c0c5088cd6446bb21535985cc6e1683f244cbbc3fc7a466a5b851e4" [label="mkdir{path=/crawler}" shape="note"];
  "sha256:f3a159356fda457c6ec0afb25e8779db2727244e0175a8220d30b4070cc9d853" [label="copy{src=/, dest=/crawler}" shape="note"];
  "sha256:a208daf20050a99ee8abab6629966db8c9463ddab5fa18cc07cf8c57c231c9cd" [label="/bin/sh -c (cd psvmi/psvmi; python setup.py build && python setup.py install)" shape="box"];
  "sha256:e10ff18625c7557516fbb14b64b63a0a429f51592b55698d091141e7291221ce" [label="copy{src=/psvmi/maps, dest=/crawler/maps}" shape="note"];
  "sha256:e4cc6fe4398a1db3d85cc702e5961e67531fdc7bdf2d80ccf7b5c9dca49197ac" [label="copy{src=/psvmi/offsets, dest=/crawler/offsets}" shape="note"];
  "sha256:a24020b3cbc1d68844520e717b5c55915887f27bc2ac08c954f8e886539c1bc7" [label="copy{src=/psvmi/header.h, dest=/crawler/}" shape="note"];
  "sha256:12a0baeeb1376065d11060e9e4925352e0448f94ed0b4199a232d7d2d743b054" [label="sha256:12a0baeeb1376065d11060e9e4925352e0448f94ed0b4199a232d7d2d743b054" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c7b608b5d47b3fe4bcfcab448f10267aaa066a645cd8ed39691b3fa0f681db0c" [label=""];
  "sha256:c7b608b5d47b3fe4bcfcab448f10267aaa066a645cd8ed39691b3fa0f681db0c" -> "sha256:3e7d3ea539a124a46d461ec1083776ebeaa2e35004adf0ecc1afacf721cd407f" [label=""];
  "sha256:3e7d3ea539a124a46d461ec1083776ebeaa2e35004adf0ecc1afacf721cd407f" -> "sha256:90045c287a922ebbb128f622cbf6cd9abd36df56622ecbfab2984fce1034dc2f" [label=""];
  "sha256:90045c287a922ebbb128f622cbf6cd9abd36df56622ecbfab2984fce1034dc2f" -> "sha256:eeb09854b116ffd7355675c1bf0a024b75e18a8a6688c7993fdd9010056973cc" [label=""];
  "sha256:eeb09854b116ffd7355675c1bf0a024b75e18a8a6688c7993fdd9010056973cc" -> "sha256:1330a0f061c00cf4cf7ccee191e294f2c62142d79aad519fcc0d8241b1e5e43e" [label=""];
  "sha256:fd3e4afad6b7aaabf31b3c7972beb4ccbf16e9c99ebf80cd0052239f8b7e8ed2" -> "sha256:1330a0f061c00cf4cf7ccee191e294f2c62142d79aad519fcc0d8241b1e5e43e" [label=""];
  "sha256:1330a0f061c00cf4cf7ccee191e294f2c62142d79aad519fcc0d8241b1e5e43e" -> "sha256:ad2b694d00b5432eb3dca702f60a89c803e07266a1083559fcf84728d0809bad" [label=""];
  "sha256:fd3e4afad6b7aaabf31b3c7972beb4ccbf16e9c99ebf80cd0052239f8b7e8ed2" -> "sha256:ad2b694d00b5432eb3dca702f60a89c803e07266a1083559fcf84728d0809bad" [label=""];
  "sha256:ad2b694d00b5432eb3dca702f60a89c803e07266a1083559fcf84728d0809bad" -> "sha256:7b3eca8a8815cbcbcc4547b5170249e729bd6e0baf5c64104a52bcfae0c7e5c3" [label=""];
  "sha256:7b3eca8a8815cbcbcc4547b5170249e729bd6e0baf5c64104a52bcfae0c7e5c3" -> "sha256:62713dbd1c0c5088cd6446bb21535985cc6e1683f244cbbc3fc7a466a5b851e4" [label=""];
  "sha256:62713dbd1c0c5088cd6446bb21535985cc6e1683f244cbbc3fc7a466a5b851e4" -> "sha256:f3a159356fda457c6ec0afb25e8779db2727244e0175a8220d30b4070cc9d853" [label=""];
  "sha256:fd3e4afad6b7aaabf31b3c7972beb4ccbf16e9c99ebf80cd0052239f8b7e8ed2" -> "sha256:f3a159356fda457c6ec0afb25e8779db2727244e0175a8220d30b4070cc9d853" [label=""];
  "sha256:f3a159356fda457c6ec0afb25e8779db2727244e0175a8220d30b4070cc9d853" -> "sha256:a208daf20050a99ee8abab6629966db8c9463ddab5fa18cc07cf8c57c231c9cd" [label=""];
  "sha256:a208daf20050a99ee8abab6629966db8c9463ddab5fa18cc07cf8c57c231c9cd" -> "sha256:e10ff18625c7557516fbb14b64b63a0a429f51592b55698d091141e7291221ce" [label=""];
  "sha256:fd3e4afad6b7aaabf31b3c7972beb4ccbf16e9c99ebf80cd0052239f8b7e8ed2" -> "sha256:e10ff18625c7557516fbb14b64b63a0a429f51592b55698d091141e7291221ce" [label=""];
  "sha256:e10ff18625c7557516fbb14b64b63a0a429f51592b55698d091141e7291221ce" -> "sha256:e4cc6fe4398a1db3d85cc702e5961e67531fdc7bdf2d80ccf7b5c9dca49197ac" [label=""];
  "sha256:fd3e4afad6b7aaabf31b3c7972beb4ccbf16e9c99ebf80cd0052239f8b7e8ed2" -> "sha256:e4cc6fe4398a1db3d85cc702e5961e67531fdc7bdf2d80ccf7b5c9dca49197ac" [label=""];
  "sha256:e4cc6fe4398a1db3d85cc702e5961e67531fdc7bdf2d80ccf7b5c9dca49197ac" -> "sha256:a24020b3cbc1d68844520e717b5c55915887f27bc2ac08c954f8e886539c1bc7" [label=""];
  "sha256:fd3e4afad6b7aaabf31b3c7972beb4ccbf16e9c99ebf80cd0052239f8b7e8ed2" -> "sha256:a24020b3cbc1d68844520e717b5c55915887f27bc2ac08c954f8e886539c1bc7" [label=""];
  "sha256:a24020b3cbc1d68844520e717b5c55915887f27bc2ac08c954f8e886539c1bc7" -> "sha256:12a0baeeb1376065d11060e9e4925352e0448f94ed0b4199a232d7d2d743b054" [label=""];
}

