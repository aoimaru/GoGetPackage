[app/sources/245255694.Dockerfile]
digraph {
  "sha256:f062541caed9e8ceaa3375bd3cb1fd844245d61fbdf50e80a7ec2934542a784f" [label="local://context" shape="ellipse"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:7ff789c70b011f034262e61fbcbe94dad9f66e90624390d4daf1313b9b84480d" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends   ca-certificates   curl   gcc   libc-dev   python   unzip" shape="box"];
  "sha256:0e5365c9dfca017d85f5254688d97fcb05fea826a0641b6bd47e32df332e1e99" [label="mkdir{path=/android}" shape="note"];
  "sha256:ab7b88f0e0f4aeb2562b2ff646946dd54ec386ee9c4e195c578b28ffad15b6e1" [label="copy{src=/android-install-ndk.sh, dest=/android/}" shape="note"];
  "sha256:54c2d13de476cb9cdc2fb8223f729d6f7cf70a5a008a20f64d51a939f8e799e9" [label="/bin/sh -c sh /android/android-install-ndk.sh $ANDROID_ARCH" shape="box"];
  "sha256:dd6a326a24e92877eccb52d8b353e2d9286d22efe40c55da85ac50aef69aa660" [label="copy{src=/android-sysimage.sh, dest=/android/}" shape="note"];
  "sha256:f1e50bf9310811a7088f2f14fadec0b468904795dc62cd01158ced56d56b5a87" [label="/bin/sh -c bash /android/android-sysimage.sh x86_64 x86_64-24_r07.zip" shape="box"];
  "sha256:50a4eddc2b20d2fad6c84071858df8dfe7e55c2f11ebd059a84bd744d79d423f" [label="sha256:50a4eddc2b20d2fad6c84071858df8dfe7e55c2f11ebd059a84bd744d79d423f" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:7ff789c70b011f034262e61fbcbe94dad9f66e90624390d4daf1313b9b84480d" [label=""];
  "sha256:7ff789c70b011f034262e61fbcbe94dad9f66e90624390d4daf1313b9b84480d" -> "sha256:0e5365c9dfca017d85f5254688d97fcb05fea826a0641b6bd47e32df332e1e99" [label=""];
  "sha256:0e5365c9dfca017d85f5254688d97fcb05fea826a0641b6bd47e32df332e1e99" -> "sha256:ab7b88f0e0f4aeb2562b2ff646946dd54ec386ee9c4e195c578b28ffad15b6e1" [label=""];
  "sha256:f062541caed9e8ceaa3375bd3cb1fd844245d61fbdf50e80a7ec2934542a784f" -> "sha256:ab7b88f0e0f4aeb2562b2ff646946dd54ec386ee9c4e195c578b28ffad15b6e1" [label=""];
  "sha256:ab7b88f0e0f4aeb2562b2ff646946dd54ec386ee9c4e195c578b28ffad15b6e1" -> "sha256:54c2d13de476cb9cdc2fb8223f729d6f7cf70a5a008a20f64d51a939f8e799e9" [label=""];
  "sha256:54c2d13de476cb9cdc2fb8223f729d6f7cf70a5a008a20f64d51a939f8e799e9" -> "sha256:dd6a326a24e92877eccb52d8b353e2d9286d22efe40c55da85ac50aef69aa660" [label=""];
  "sha256:f062541caed9e8ceaa3375bd3cb1fd844245d61fbdf50e80a7ec2934542a784f" -> "sha256:dd6a326a24e92877eccb52d8b353e2d9286d22efe40c55da85ac50aef69aa660" [label=""];
  "sha256:dd6a326a24e92877eccb52d8b353e2d9286d22efe40c55da85ac50aef69aa660" -> "sha256:f1e50bf9310811a7088f2f14fadec0b468904795dc62cd01158ced56d56b5a87" [label=""];
  "sha256:f1e50bf9310811a7088f2f14fadec0b468904795dc62cd01158ced56d56b5a87" -> "sha256:50a4eddc2b20d2fad6c84071858df8dfe7e55c2f11ebd059a84bd744d79d423f" [label=""];
}

