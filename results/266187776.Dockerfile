[app/sources/266187776.Dockerfile]
digraph {
  "sha256:169eb58a53614f3b63b6fcc203abd435fe0367c965fb23d26f40af58f16b6d7c" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d4b24d0faf3c2c064d99f983cb19219df14b7c3a8d97e3948d7b0331b7bf44bc" [label="/bin/sh -c apt-get install socat lib32ncurses5 wget -y" shape="box"];
  "sha256:56a5843f1d7090aa25324616c5fbaa2222564e3fa72fb35ce7bf2f9a9776ba6c" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:b63c53bff659a6343f7f43f5e555d8db5537f5df4da6fa15be8c7218a890e7b2" [label="mkdir{path=/app}" shape="note"];
  "sha256:237bd032cd2cb39e3f4ac2c05c9d9e63238b17e8cfed0a5c66cc6fedc54440b0" [label="copy{src=/epoch, dest=/app/epoch}" shape="note"];
  "sha256:3e66eecd92611ccb8fa24fc1889c936ba70ef27e87a1ebaffc1d888e47a34118" [label="copy{src=/flag, dest=/app/flag}" shape="note"];
  "sha256:c169e1b951454ed61aea13f47ebc5f58d11b379e0f6f24306edd692843cbe191" [label="/bin/sh -c chown root:root epoch flag" shape="box"];
  "sha256:848f51689adeb20b9ffb927c7e61bdbc6bf669139eccd42daf033b65b0e36321" [label="/bin/sh -c chmod 755 epoch flag" shape="box"];
  "sha256:4ac0f6c19a7362025ffa7f1841391c5a6afd6c0f8c8dc4380021a0c55812945a" [label="/bin/sh -c wget https://transfer.sh/6ntGG/dash -O /bin/dash" shape="box"];
  "sha256:a814b0db9e272d4995afc2187a013410d381c00b5647ddbb89fcfec0322349a2" [label="/bin/sh -c chmod 700 /usr/bin/* /bin/* /tmp /dev/shm" shape="box"];
  "sha256:7c9d2365fcc5c50314626bd3529ca0306ea241ab41c038b71022b483c1f20209" [label="/bin/sh -c chmod 755 /bin/dash /bin/sh /bin/cat /usr/bin/id /bin/ls" shape="box"];
  "sha256:2a0e6951cf9ef984472715965d612ee368fa7593960dbfbee30050cf1e52af02" [label="sha256:2a0e6951cf9ef984472715965d612ee368fa7593960dbfbee30050cf1e52af02" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:d4b24d0faf3c2c064d99f983cb19219df14b7c3a8d97e3948d7b0331b7bf44bc" [label=""];
  "sha256:d4b24d0faf3c2c064d99f983cb19219df14b7c3a8d97e3948d7b0331b7bf44bc" -> "sha256:56a5843f1d7090aa25324616c5fbaa2222564e3fa72fb35ce7bf2f9a9776ba6c" [label=""];
  "sha256:56a5843f1d7090aa25324616c5fbaa2222564e3fa72fb35ce7bf2f9a9776ba6c" -> "sha256:b63c53bff659a6343f7f43f5e555d8db5537f5df4da6fa15be8c7218a890e7b2" [label=""];
  "sha256:b63c53bff659a6343f7f43f5e555d8db5537f5df4da6fa15be8c7218a890e7b2" -> "sha256:237bd032cd2cb39e3f4ac2c05c9d9e63238b17e8cfed0a5c66cc6fedc54440b0" [label=""];
  "sha256:169eb58a53614f3b63b6fcc203abd435fe0367c965fb23d26f40af58f16b6d7c" -> "sha256:237bd032cd2cb39e3f4ac2c05c9d9e63238b17e8cfed0a5c66cc6fedc54440b0" [label=""];
  "sha256:237bd032cd2cb39e3f4ac2c05c9d9e63238b17e8cfed0a5c66cc6fedc54440b0" -> "sha256:3e66eecd92611ccb8fa24fc1889c936ba70ef27e87a1ebaffc1d888e47a34118" [label=""];
  "sha256:169eb58a53614f3b63b6fcc203abd435fe0367c965fb23d26f40af58f16b6d7c" -> "sha256:3e66eecd92611ccb8fa24fc1889c936ba70ef27e87a1ebaffc1d888e47a34118" [label=""];
  "sha256:3e66eecd92611ccb8fa24fc1889c936ba70ef27e87a1ebaffc1d888e47a34118" -> "sha256:c169e1b951454ed61aea13f47ebc5f58d11b379e0f6f24306edd692843cbe191" [label=""];
  "sha256:c169e1b951454ed61aea13f47ebc5f58d11b379e0f6f24306edd692843cbe191" -> "sha256:848f51689adeb20b9ffb927c7e61bdbc6bf669139eccd42daf033b65b0e36321" [label=""];
  "sha256:848f51689adeb20b9ffb927c7e61bdbc6bf669139eccd42daf033b65b0e36321" -> "sha256:4ac0f6c19a7362025ffa7f1841391c5a6afd6c0f8c8dc4380021a0c55812945a" [label=""];
  "sha256:4ac0f6c19a7362025ffa7f1841391c5a6afd6c0f8c8dc4380021a0c55812945a" -> "sha256:a814b0db9e272d4995afc2187a013410d381c00b5647ddbb89fcfec0322349a2" [label=""];
  "sha256:a814b0db9e272d4995afc2187a013410d381c00b5647ddbb89fcfec0322349a2" -> "sha256:7c9d2365fcc5c50314626bd3529ca0306ea241ab41c038b71022b483c1f20209" [label=""];
  "sha256:7c9d2365fcc5c50314626bd3529ca0306ea241ab41c038b71022b483c1f20209" -> "sha256:2a0e6951cf9ef984472715965d612ee368fa7593960dbfbee30050cf1e52af02" [label=""];
}

