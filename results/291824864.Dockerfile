[app/sources/291824864.Dockerfile]
digraph {
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" [label="docker-image://docker.io/tensorflow/tensorflow:latest-gpu-py3" shape="ellipse"];
  "sha256:e5b223648c8fbbe73f9d848d41781d8ec5b910d40a7f6105e81a8288a62e595e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:abd9d8ac704e146a2ee36785d4036d22154f49ddafe995d2f0491c40cab70220" [label="/bin/sh -c apt-get install -y libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg libav-tools wget git vim" shape="box"];
  "sha256:93f1f34552869fcd06886a3d4289aeab46100d2ace79615ce72ec6da71350cd9" [label="/bin/sh -c wget http://data.keithito.com/data/speech/LJSpeech-1.1.tar.bz2" shape="box"];
  "sha256:d7733556b43c94262ca71c75f858952635a29a3baaac8ff5d632779e51029664" [label="/bin/sh -c tar -jxvf LJSpeech-1.1.tar.bz2" shape="box"];
  "sha256:3a2b36555bcdbf0f6996a995d44245a0f7961559c84b9aa26b2087b5365e9a9b" [label="/bin/sh -c git clone https://github.com/Rayhane-mamah/Tacotron-2.git" shape="box"];
  "sha256:470952f5c6104ad8a8807816b86ec5e49626d68a27eb023c520dcbe51b0ef642" [label="mkdir{path=/Tacotron-2}" shape="note"];
  "sha256:3ab27be6f90f9e20c61db6c6f1d2e36dfbe7ad23dd3d0fd660d7846e2effef19" [label="/bin/sh -c ln -s ../LJSpeech-1.1 ." shape="box"];
  "sha256:19cb1e7d023b5cfa2e95d9a3586faa3d25e9774b288079217eb7b23c88ce47b6" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:ccf4565b51607714fe9e19a4dfa42b750d1512283c2086b379c344ed8f43fa90" [label="sha256:ccf4565b51607714fe9e19a4dfa42b750d1512283c2086b379c344ed8f43fa90" shape="plaintext"];
  "sha256:6fc8c36586e38bbec514f40c07c3330b35c8f9d13820ac975d3340766d6c8381" -> "sha256:e5b223648c8fbbe73f9d848d41781d8ec5b910d40a7f6105e81a8288a62e595e" [label=""];
  "sha256:e5b223648c8fbbe73f9d848d41781d8ec5b910d40a7f6105e81a8288a62e595e" -> "sha256:abd9d8ac704e146a2ee36785d4036d22154f49ddafe995d2f0491c40cab70220" [label=""];
  "sha256:abd9d8ac704e146a2ee36785d4036d22154f49ddafe995d2f0491c40cab70220" -> "sha256:93f1f34552869fcd06886a3d4289aeab46100d2ace79615ce72ec6da71350cd9" [label=""];
  "sha256:93f1f34552869fcd06886a3d4289aeab46100d2ace79615ce72ec6da71350cd9" -> "sha256:d7733556b43c94262ca71c75f858952635a29a3baaac8ff5d632779e51029664" [label=""];
  "sha256:d7733556b43c94262ca71c75f858952635a29a3baaac8ff5d632779e51029664" -> "sha256:3a2b36555bcdbf0f6996a995d44245a0f7961559c84b9aa26b2087b5365e9a9b" [label=""];
  "sha256:3a2b36555bcdbf0f6996a995d44245a0f7961559c84b9aa26b2087b5365e9a9b" -> "sha256:470952f5c6104ad8a8807816b86ec5e49626d68a27eb023c520dcbe51b0ef642" [label=""];
  "sha256:470952f5c6104ad8a8807816b86ec5e49626d68a27eb023c520dcbe51b0ef642" -> "sha256:3ab27be6f90f9e20c61db6c6f1d2e36dfbe7ad23dd3d0fd660d7846e2effef19" [label=""];
  "sha256:3ab27be6f90f9e20c61db6c6f1d2e36dfbe7ad23dd3d0fd660d7846e2effef19" -> "sha256:19cb1e7d023b5cfa2e95d9a3586faa3d25e9774b288079217eb7b23c88ce47b6" [label=""];
  "sha256:19cb1e7d023b5cfa2e95d9a3586faa3d25e9774b288079217eb7b23c88ce47b6" -> "sha256:ccf4565b51607714fe9e19a4dfa42b750d1512283c2086b379c344ed8f43fa90" [label=""];
}

