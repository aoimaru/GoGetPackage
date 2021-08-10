[app/sources/244939669.Dockerfile]
digraph {
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" [label="local://context" shape="ellipse"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:0df1ef768a0cb63371f6c0765e22135d8ce883208da49524ad72338627271417" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:72b67a304b0dbdd5d9a54ffbc84315a7cb101c4648cd66cfad17b87def4d4274" [label="copy{src=/install/centos7_core.sh, dest=/work/}" shape="note"];
  "sha256:2f02c427d183c4db6399a252e92c67f0899ebce5e7cdbbfb9c4412b21c04ee50" [label="/bin/sh -c /work/centos7_core.sh" shape="box"];
  "sha256:0eb5a7196ebf0c104aab9e47464101fb1c6c63ce3b3a80d4616b374fcfd2be42" [label="copy{src=/install/centos7_ccache.sh, dest=/work/}" shape="note"];
  "sha256:c68e5e111efe1f15b3be9087095e24fdcf915760d21de791ab69f90cd6876fe1" [label="/bin/sh -c /work/centos7_ccache.sh" shape="box"];
  "sha256:fdc24c9fd695e114b3b82c3c5e39482715246fb539f75bdc44b56174d1da6716" [label="copy{src=/install/centos7_python.sh, dest=/work/}" shape="note"];
  "sha256:cb56f2ecf14b139bdb1b8776f5f8c09b9b0b932169fdda08ea395f41546cd61d" [label="/bin/sh -c /work/centos7_python.sh" shape="box"];
  "sha256:325b61547e89751d2b2f1430ef40a8983cb1af9060600112fe54b7c0cd060ff7" [label="copy{src=/install/centos7_scala.sh, dest=/work/}" shape="note"];
  "sha256:c91f35641b07afa542d46e8e3074afa485a748aba3f8fc576b8f0295f522b3a6" [label="/bin/sh -c /work/centos7_scala.sh" shape="box"];
  "sha256:e1a37cb2c60cf9b760a8133cfffa627c3d23cec84805a785c825a873434574c9" [label="copy{src=/install/ubuntu_mklml.sh, dest=/work/}" shape="note"];
  "sha256:08516052ccc1f7cd76ed899b2540f9ee7de45893176ab1768ac6a9cb7ed2187b" [label="/bin/sh -c /work/ubuntu_mklml.sh" shape="box"];
  "sha256:1efe00cfe9be5a92eb2396ca1f862a971106247ef00bc862ca0eed68bdf9871a" [label="copy{src=/install/centos7_adduser.sh, dest=/work/}" shape="note"];
  "sha256:82a75860160c9d7f33b942cf63d9e5a74269a39d57250f67fbdcd133a72aa7ea" [label="/bin/sh -c /work/centos7_adduser.sh" shape="box"];
  "sha256:37da50dfe62b01b49431245b0a8e1c46555aa412561640ed0aa85707e7f6a129" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:c4daa1a0ee88dfd5ff86065063cfa802e32065af51449876c1c1af4127b6e4fb" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:3bdc1c65cef6ed64c88442e2f57e95e9a0ab3f7f70fd216a4d76f7ddb28d549d" [label="sha256:3bdc1c65cef6ed64c88442e2f57e95e9a0ab3f7f70fd216a4d76f7ddb28d549d" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:0df1ef768a0cb63371f6c0765e22135d8ce883208da49524ad72338627271417" [label=""];
  "sha256:0df1ef768a0cb63371f6c0765e22135d8ce883208da49524ad72338627271417" -> "sha256:72b67a304b0dbdd5d9a54ffbc84315a7cb101c4648cd66cfad17b87def4d4274" [label=""];
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" -> "sha256:72b67a304b0dbdd5d9a54ffbc84315a7cb101c4648cd66cfad17b87def4d4274" [label=""];
  "sha256:72b67a304b0dbdd5d9a54ffbc84315a7cb101c4648cd66cfad17b87def4d4274" -> "sha256:2f02c427d183c4db6399a252e92c67f0899ebce5e7cdbbfb9c4412b21c04ee50" [label=""];
  "sha256:2f02c427d183c4db6399a252e92c67f0899ebce5e7cdbbfb9c4412b21c04ee50" -> "sha256:0eb5a7196ebf0c104aab9e47464101fb1c6c63ce3b3a80d4616b374fcfd2be42" [label=""];
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" -> "sha256:0eb5a7196ebf0c104aab9e47464101fb1c6c63ce3b3a80d4616b374fcfd2be42" [label=""];
  "sha256:0eb5a7196ebf0c104aab9e47464101fb1c6c63ce3b3a80d4616b374fcfd2be42" -> "sha256:c68e5e111efe1f15b3be9087095e24fdcf915760d21de791ab69f90cd6876fe1" [label=""];
  "sha256:c68e5e111efe1f15b3be9087095e24fdcf915760d21de791ab69f90cd6876fe1" -> "sha256:fdc24c9fd695e114b3b82c3c5e39482715246fb539f75bdc44b56174d1da6716" [label=""];
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" -> "sha256:fdc24c9fd695e114b3b82c3c5e39482715246fb539f75bdc44b56174d1da6716" [label=""];
  "sha256:fdc24c9fd695e114b3b82c3c5e39482715246fb539f75bdc44b56174d1da6716" -> "sha256:cb56f2ecf14b139bdb1b8776f5f8c09b9b0b932169fdda08ea395f41546cd61d" [label=""];
  "sha256:cb56f2ecf14b139bdb1b8776f5f8c09b9b0b932169fdda08ea395f41546cd61d" -> "sha256:325b61547e89751d2b2f1430ef40a8983cb1af9060600112fe54b7c0cd060ff7" [label=""];
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" -> "sha256:325b61547e89751d2b2f1430ef40a8983cb1af9060600112fe54b7c0cd060ff7" [label=""];
  "sha256:325b61547e89751d2b2f1430ef40a8983cb1af9060600112fe54b7c0cd060ff7" -> "sha256:c91f35641b07afa542d46e8e3074afa485a748aba3f8fc576b8f0295f522b3a6" [label=""];
  "sha256:c91f35641b07afa542d46e8e3074afa485a748aba3f8fc576b8f0295f522b3a6" -> "sha256:e1a37cb2c60cf9b760a8133cfffa627c3d23cec84805a785c825a873434574c9" [label=""];
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" -> "sha256:e1a37cb2c60cf9b760a8133cfffa627c3d23cec84805a785c825a873434574c9" [label=""];
  "sha256:e1a37cb2c60cf9b760a8133cfffa627c3d23cec84805a785c825a873434574c9" -> "sha256:08516052ccc1f7cd76ed899b2540f9ee7de45893176ab1768ac6a9cb7ed2187b" [label=""];
  "sha256:08516052ccc1f7cd76ed899b2540f9ee7de45893176ab1768ac6a9cb7ed2187b" -> "sha256:1efe00cfe9be5a92eb2396ca1f862a971106247ef00bc862ca0eed68bdf9871a" [label=""];
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" -> "sha256:1efe00cfe9be5a92eb2396ca1f862a971106247ef00bc862ca0eed68bdf9871a" [label=""];
  "sha256:1efe00cfe9be5a92eb2396ca1f862a971106247ef00bc862ca0eed68bdf9871a" -> "sha256:82a75860160c9d7f33b942cf63d9e5a74269a39d57250f67fbdcd133a72aa7ea" [label=""];
  "sha256:82a75860160c9d7f33b942cf63d9e5a74269a39d57250f67fbdcd133a72aa7ea" -> "sha256:37da50dfe62b01b49431245b0a8e1c46555aa412561640ed0aa85707e7f6a129" [label=""];
  "sha256:37da50dfe62b01b49431245b0a8e1c46555aa412561640ed0aa85707e7f6a129" -> "sha256:c4daa1a0ee88dfd5ff86065063cfa802e32065af51449876c1c1af4127b6e4fb" [label=""];
  "sha256:289b63161834886af3844abf59e50dd814306045c3dddfcb424f79d8d81a253b" -> "sha256:c4daa1a0ee88dfd5ff86065063cfa802e32065af51449876c1c1af4127b6e4fb" [label=""];
  "sha256:c4daa1a0ee88dfd5ff86065063cfa802e32065af51449876c1c1af4127b6e4fb" -> "sha256:3bdc1c65cef6ed64c88442e2f57e95e9a0ab3f7f70fd216a4d76f7ddb28d549d" [label=""];
}

