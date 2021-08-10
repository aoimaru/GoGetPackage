[app/sources/192944555.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:3a58b07779d1a359087162dd80998da0d943f263edbfd3bc378c6ed00340dc65" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:ebd87fe62347efde83930ada219461e38a65091e871492e9d8271c8dbc7a99a6" [label="/bin/sh -c yum groupinstall -y \"C Development Tools and Libraries\" \"Development Tools\" \"System Tools\"" shape="box"];
  "sha256:cb0b5faaa1cb84fe1a1702f9a1129c5b835fcbe5dab0d361faec16d234ac4781" [label="/bin/sh -c yum install -y     git bzip2 wget subversion which     gcc-c++ make automake autoconf zlib-devel atlas-static \t python" shape="box"];
  "sha256:0d9cfc293bed1f6fc34c70128f0e9647b86fb6347eef3827a4f014109191217d" [label="/bin/sh -c yum -y install https://centos7.iuscommunity.org/ius-release.rpm" shape="box"];
  "sha256:dbcf623570a6e49f03e27d941c42a3d678995a221d0bac5460ca37086694b525" [label="/bin/sh -c yum -y install python36u" shape="box"];
  "sha256:d051876c447966b8f7323b0383f05695f48ae4cafd2af3e3cdb16222d6aa04da" [label="/bin/sh -c ln -s /usr/bin/python3.6 /usr/bin/python3" shape="box"];
  "sha256:be3f967afca95054c81cda40afdc9e7ad09ec5822af457ca33e730525e286b37" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:f1419ba6a24c9864a822280298eb697e98cea04bf3e39f45eca0d4575bdf0192" [label="/bin/sh -c git clone https://github.com/kaldi-asr/kaldi.git" shape="box"];
  "sha256:e02ebb8fa035688034e4e327b392254c031a2f10330ab03162e7f31eba62afd5" [label="mkdir{path=/usr/local/kaldi/tools}" shape="note"];
  "sha256:552012043b845ccb1b3d5c09d84a8d42cc2724f675af76c72dd763295e849a31" [label="/bin/sh -c extras/check_dependencies.sh" shape="box"];
  "sha256:791fb649059b05f5341c39e317032170edc52ee44311bce777a6fc8f98f22e5d" [label="/bin/sh -c make -j $CPU_CORE" shape="box"];
  "sha256:eb6ea0aff6d4071955633afa350e7a4d002c2a09887425b15a64230cccb61f8d" [label="mkdir{path=/usr/local/kaldi/src}" shape="note"];
  "sha256:fd0cb360897bc1a56794b6b10a8afb05cac7e0ab0bf4db4098cc5df7b648cbeb" [label="/bin/sh -c ./configure && make depend -j $CPU_CORE && make -j $CPU_CORE" shape="box"];
  "sha256:e4c0db5be613f6dcf77d5b559e1129a625674c95063e29156df9a45e49704030" [label="sha256:e4c0db5be613f6dcf77d5b559e1129a625674c95063e29156df9a45e49704030" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:3a58b07779d1a359087162dd80998da0d943f263edbfd3bc378c6ed00340dc65" [label=""];
  "sha256:3a58b07779d1a359087162dd80998da0d943f263edbfd3bc378c6ed00340dc65" -> "sha256:ebd87fe62347efde83930ada219461e38a65091e871492e9d8271c8dbc7a99a6" [label=""];
  "sha256:ebd87fe62347efde83930ada219461e38a65091e871492e9d8271c8dbc7a99a6" -> "sha256:cb0b5faaa1cb84fe1a1702f9a1129c5b835fcbe5dab0d361faec16d234ac4781" [label=""];
  "sha256:cb0b5faaa1cb84fe1a1702f9a1129c5b835fcbe5dab0d361faec16d234ac4781" -> "sha256:0d9cfc293bed1f6fc34c70128f0e9647b86fb6347eef3827a4f014109191217d" [label=""];
  "sha256:0d9cfc293bed1f6fc34c70128f0e9647b86fb6347eef3827a4f014109191217d" -> "sha256:dbcf623570a6e49f03e27d941c42a3d678995a221d0bac5460ca37086694b525" [label=""];
  "sha256:dbcf623570a6e49f03e27d941c42a3d678995a221d0bac5460ca37086694b525" -> "sha256:d051876c447966b8f7323b0383f05695f48ae4cafd2af3e3cdb16222d6aa04da" [label=""];
  "sha256:d051876c447966b8f7323b0383f05695f48ae4cafd2af3e3cdb16222d6aa04da" -> "sha256:be3f967afca95054c81cda40afdc9e7ad09ec5822af457ca33e730525e286b37" [label=""];
  "sha256:be3f967afca95054c81cda40afdc9e7ad09ec5822af457ca33e730525e286b37" -> "sha256:f1419ba6a24c9864a822280298eb697e98cea04bf3e39f45eca0d4575bdf0192" [label=""];
  "sha256:f1419ba6a24c9864a822280298eb697e98cea04bf3e39f45eca0d4575bdf0192" -> "sha256:e02ebb8fa035688034e4e327b392254c031a2f10330ab03162e7f31eba62afd5" [label=""];
  "sha256:e02ebb8fa035688034e4e327b392254c031a2f10330ab03162e7f31eba62afd5" -> "sha256:552012043b845ccb1b3d5c09d84a8d42cc2724f675af76c72dd763295e849a31" [label=""];
  "sha256:552012043b845ccb1b3d5c09d84a8d42cc2724f675af76c72dd763295e849a31" -> "sha256:791fb649059b05f5341c39e317032170edc52ee44311bce777a6fc8f98f22e5d" [label=""];
  "sha256:791fb649059b05f5341c39e317032170edc52ee44311bce777a6fc8f98f22e5d" -> "sha256:eb6ea0aff6d4071955633afa350e7a4d002c2a09887425b15a64230cccb61f8d" [label=""];
  "sha256:eb6ea0aff6d4071955633afa350e7a4d002c2a09887425b15a64230cccb61f8d" -> "sha256:fd0cb360897bc1a56794b6b10a8afb05cac7e0ab0bf4db4098cc5df7b648cbeb" [label=""];
  "sha256:fd0cb360897bc1a56794b6b10a8afb05cac7e0ab0bf4db4098cc5df7b648cbeb" -> "sha256:e4c0db5be613f6dcf77d5b559e1129a625674c95063e29156df9a45e49704030" [label=""];
}

