[app/sources/323265883.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:1fc1cf5ed11a483c440c7e221608f7d42ebcc5a6c0ab38cc2a755163603aeee3" [label="/bin/sh -c apt-get update -y &&     apt-get install -y python3 python3-pip &&     pip3 install --upgrade pip" shape="box"];
  "sha256:36de302e1aa29299321b15f1860172ab6d4f9a515244bf2325a0030cba590793" [label="/bin/sh -c apt-get install -y libmysqlclient-dev sqlite3" shape="box"];
  "sha256:d9f267b30b433b87379de5980ccb617aaa11f56d4974d3e2a1c079dafd999472" [label="local://context" shape="ellipse"];
  "sha256:d197b8424382d48282921c74ec8e8bad4ad756e010206b97792a99899067491d" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:93ffc36c218c5dd6a7f4b08d76ff6a09f90ee3a287f623a2ec207e79d707940a" [label="mkdir{path=/code}" shape="note"];
  "sha256:474a1050b8224cc23b30655df2be4737bb0b9c67e606a448f934cdd8f7636873" [label="/bin/sh -c pip3 install -r lib/atm/requirements.txt" shape="box"];
  "sha256:afff6ed8e86716555c78d1bf398dedbaf243c85ac191ec5a7fc1d6a8acaf897d" [label="/bin/sh -c pip3 install lib/atm/" shape="box"];
  "sha256:82e493243b37c72e7dbf8dcf5b37aaa4a2c44943c8ae99c1af35c16ddf6f6c8f" [label="/bin/sh -c pip3 install -r server/requirements.txt" shape="box"];
  "sha256:668a833401f302054f4967b6ec5295b21f07442a26c4cae0eaed11760eb93642" [label="sha256:668a833401f302054f4967b6ec5295b21f07442a26c4cae0eaed11760eb93642" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:1fc1cf5ed11a483c440c7e221608f7d42ebcc5a6c0ab38cc2a755163603aeee3" [label=""];
  "sha256:1fc1cf5ed11a483c440c7e221608f7d42ebcc5a6c0ab38cc2a755163603aeee3" -> "sha256:36de302e1aa29299321b15f1860172ab6d4f9a515244bf2325a0030cba590793" [label=""];
  "sha256:36de302e1aa29299321b15f1860172ab6d4f9a515244bf2325a0030cba590793" -> "sha256:d197b8424382d48282921c74ec8e8bad4ad756e010206b97792a99899067491d" [label=""];
  "sha256:d9f267b30b433b87379de5980ccb617aaa11f56d4974d3e2a1c079dafd999472" -> "sha256:d197b8424382d48282921c74ec8e8bad4ad756e010206b97792a99899067491d" [label=""];
  "sha256:d197b8424382d48282921c74ec8e8bad4ad756e010206b97792a99899067491d" -> "sha256:93ffc36c218c5dd6a7f4b08d76ff6a09f90ee3a287f623a2ec207e79d707940a" [label=""];
  "sha256:93ffc36c218c5dd6a7f4b08d76ff6a09f90ee3a287f623a2ec207e79d707940a" -> "sha256:474a1050b8224cc23b30655df2be4737bb0b9c67e606a448f934cdd8f7636873" [label=""];
  "sha256:474a1050b8224cc23b30655df2be4737bb0b9c67e606a448f934cdd8f7636873" -> "sha256:afff6ed8e86716555c78d1bf398dedbaf243c85ac191ec5a7fc1d6a8acaf897d" [label=""];
  "sha256:afff6ed8e86716555c78d1bf398dedbaf243c85ac191ec5a7fc1d6a8acaf897d" -> "sha256:82e493243b37c72e7dbf8dcf5b37aaa4a2c44943c8ae99c1af35c16ddf6f6c8f" [label=""];
  "sha256:82e493243b37c72e7dbf8dcf5b37aaa4a2c44943c8ae99c1af35c16ddf6f6c8f" -> "sha256:668a833401f302054f4967b6ec5295b21f07442a26c4cae0eaed11760eb93642" [label=""];
}

