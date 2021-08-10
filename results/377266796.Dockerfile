[app/sources/377266796.Dockerfile]
digraph {
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" [label="docker-image://docker.io/library/node:10" shape="ellipse"];
  "sha256:e7760aa6bcb7fa256eb930749adb6d1ae06de65165775b7090a53cb4feb84d0d" [label="mkdir{path=/frontend}" shape="note"];
  "sha256:152beae1bef8fd2d0d2f9c97b8001c19e180c6930ee134147c95f605192d9e7d" [label="local://context" shape="ellipse"];
  "sha256:aa33c9ea56f5aab2658f2989509592dbedb0b75290c0b1c5c5a12d0e2fcd9971" [label="copy{src=/package.json, dest=/frontend/},copy{src=/package-lock.json, dest=/frontend/}" shape="note"];
  "sha256:c9606de660153e7ac7582564c0525ed992bd61a9b20f8a144ca1452a047f8eea" [label="/bin/sh -c npm install" shape="box"];
  "sha256:7b8faf8a739607d32d26492f38b9f6dc600abed5591635dde1e889a6715a65ed" [label="copy{src=/client, dest=/frontend/client}" shape="note"];
  "sha256:e6f9a8697635f820906ae7822f8827791d26c86ca8165033035530e02d2b7f6b" [label="copy{src=/webpack.config.js, dest=/frontend/}" shape="note"];
  "sha256:89c39295cc4df82c44d6c40e12f0da71160f74b6c3ce2714cbf8a107d7f643f5" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:40202ba6d34ead2104edfeb35b7f005f30e64f92e5d39bddc8de146940fc88d9" [label="docker-image://docker.io/redash/base:debian" shape="ellipse"];
  "sha256:e62875894ea324539098f802730caf037971c35f77c5f1c960b058305d58cadd" [label="copy{src=/requirements.txt, dest=/},copy{src=/requirements_bundles.txt, dest=/},copy{src=/requirements_dev.txt, dest=/},copy{src=/requirements_all_ds.txt, dest=/}" shape="note"];
  "sha256:52a83753d78ddee27d44aaa31b2a13fbdaefd35975f0e9100f2d7c9a4ec7546f" [label="/bin/sh -c pip install -r requirements.txt -r requirements_dev.txt" shape="box"];
  "sha256:3c92824f575370a237d6708201723ed935f7ceb9165d0eabac793f22581905d2" [label="/bin/sh -c if [ \"x$skip_ds_deps\" = \"x\" ] ; then pip install -r requirements_all_ds.txt ; else echo \"Skipping pip install -r requirements_all_ds.txt\" ; fi" shape="box"];
  "sha256:5505e7955e58502be4814bcbf92eb1af3a8966e1a027316e14dee09a82a35024" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:ea85730b5a7d91b68376bab8447ea07d63effebe995beb2115ff794e0f486496" [label="copy{src=/frontend/client/dist, dest=/app/client/dist}" shape="note"];
  "sha256:5c855fc3a2fe01e6c62980ea6e43258a3114e53281c6122925ed6b3e0dfe9b15" [label="/bin/sh -c chown -R redash /app" shape="box"];
  "sha256:e7c08291c0a9936d22f63893ed6832f94df5e12e4605b15cd66595e2512c3980" [label="sha256:e7c08291c0a9936d22f63893ed6832f94df5e12e4605b15cd66595e2512c3980" shape="plaintext"];
  "sha256:d1800fe2850657bf17f308707f027e91516fbaa3c0d89a0803311ceeb61fa674" -> "sha256:e7760aa6bcb7fa256eb930749adb6d1ae06de65165775b7090a53cb4feb84d0d" [label=""];
  "sha256:e7760aa6bcb7fa256eb930749adb6d1ae06de65165775b7090a53cb4feb84d0d" -> "sha256:aa33c9ea56f5aab2658f2989509592dbedb0b75290c0b1c5c5a12d0e2fcd9971" [label=""];
  "sha256:152beae1bef8fd2d0d2f9c97b8001c19e180c6930ee134147c95f605192d9e7d" -> "sha256:aa33c9ea56f5aab2658f2989509592dbedb0b75290c0b1c5c5a12d0e2fcd9971" [label=""];
  "sha256:aa33c9ea56f5aab2658f2989509592dbedb0b75290c0b1c5c5a12d0e2fcd9971" -> "sha256:c9606de660153e7ac7582564c0525ed992bd61a9b20f8a144ca1452a047f8eea" [label=""];
  "sha256:c9606de660153e7ac7582564c0525ed992bd61a9b20f8a144ca1452a047f8eea" -> "sha256:7b8faf8a739607d32d26492f38b9f6dc600abed5591635dde1e889a6715a65ed" [label=""];
  "sha256:152beae1bef8fd2d0d2f9c97b8001c19e180c6930ee134147c95f605192d9e7d" -> "sha256:7b8faf8a739607d32d26492f38b9f6dc600abed5591635dde1e889a6715a65ed" [label=""];
  "sha256:7b8faf8a739607d32d26492f38b9f6dc600abed5591635dde1e889a6715a65ed" -> "sha256:e6f9a8697635f820906ae7822f8827791d26c86ca8165033035530e02d2b7f6b" [label=""];
  "sha256:152beae1bef8fd2d0d2f9c97b8001c19e180c6930ee134147c95f605192d9e7d" -> "sha256:e6f9a8697635f820906ae7822f8827791d26c86ca8165033035530e02d2b7f6b" [label=""];
  "sha256:e6f9a8697635f820906ae7822f8827791d26c86ca8165033035530e02d2b7f6b" -> "sha256:89c39295cc4df82c44d6c40e12f0da71160f74b6c3ce2714cbf8a107d7f643f5" [label=""];
  "sha256:40202ba6d34ead2104edfeb35b7f005f30e64f92e5d39bddc8de146940fc88d9" -> "sha256:e62875894ea324539098f802730caf037971c35f77c5f1c960b058305d58cadd" [label=""];
  "sha256:152beae1bef8fd2d0d2f9c97b8001c19e180c6930ee134147c95f605192d9e7d" -> "sha256:e62875894ea324539098f802730caf037971c35f77c5f1c960b058305d58cadd" [label=""];
  "sha256:e62875894ea324539098f802730caf037971c35f77c5f1c960b058305d58cadd" -> "sha256:52a83753d78ddee27d44aaa31b2a13fbdaefd35975f0e9100f2d7c9a4ec7546f" [label=""];
  "sha256:52a83753d78ddee27d44aaa31b2a13fbdaefd35975f0e9100f2d7c9a4ec7546f" -> "sha256:3c92824f575370a237d6708201723ed935f7ceb9165d0eabac793f22581905d2" [label=""];
  "sha256:3c92824f575370a237d6708201723ed935f7ceb9165d0eabac793f22581905d2" -> "sha256:5505e7955e58502be4814bcbf92eb1af3a8966e1a027316e14dee09a82a35024" [label=""];
  "sha256:152beae1bef8fd2d0d2f9c97b8001c19e180c6930ee134147c95f605192d9e7d" -> "sha256:5505e7955e58502be4814bcbf92eb1af3a8966e1a027316e14dee09a82a35024" [label=""];
  "sha256:5505e7955e58502be4814bcbf92eb1af3a8966e1a027316e14dee09a82a35024" -> "sha256:ea85730b5a7d91b68376bab8447ea07d63effebe995beb2115ff794e0f486496" [label=""];
  "sha256:89c39295cc4df82c44d6c40e12f0da71160f74b6c3ce2714cbf8a107d7f643f5" -> "sha256:ea85730b5a7d91b68376bab8447ea07d63effebe995beb2115ff794e0f486496" [label=""];
  "sha256:ea85730b5a7d91b68376bab8447ea07d63effebe995beb2115ff794e0f486496" -> "sha256:5c855fc3a2fe01e6c62980ea6e43258a3114e53281c6122925ed6b3e0dfe9b15" [label=""];
  "sha256:5c855fc3a2fe01e6c62980ea6e43258a3114e53281c6122925ed6b3e0dfe9b15" -> "sha256:e7c08291c0a9936d22f63893ed6832f94df5e12e4605b15cd66595e2512c3980" [label=""];
}

