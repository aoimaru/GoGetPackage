[app/sources/314440446.Dockerfile]
digraph {
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label="mkdir{path=/work/deps}" shape="note"];
  "sha256:9713969f14831018abdeddf0d6f33deaf6e2c1a0a07bc8bd713b5bd3f1a4f1e9" [label="copy{src=/install/ubuntu_core.sh, dest=/work/}" shape="note"];
  "sha256:a2d52bb177002dc22370d1b8431255f7b862582928bfdee85c9d587f420a240e" [label="/bin/sh -c /work/ubuntu_core.sh" shape="box"];
  "sha256:074c1ab5da7d613a299aa54ce97a7c95cb8396733ca29ed226a7611a567fe761" [label="copy{src=/install/ubuntu_python.sh, dest=/work/}" shape="note"];
  "sha256:6a5a986108827b5891dfb545af6338a9f1de10d9a6ad932e356d023e4b4352be" [label="/bin/sh -c /work/ubuntu_python.sh" shape="box"];
  "sha256:2486920a887c903c144494acbfba52ba79cb4ff290164c2b129ddfe29948e661" [label="copy{src=/install/ubuntu_scala.sh, dest=/work/}" shape="note"];
  "sha256:b4e3d138b09529124c3657ebcc4c8b88f51a0d9178fbdfa6706496974091cbda" [label="/bin/sh -c /work/ubuntu_scala.sh" shape="box"];
  "sha256:532df6bd79183f0fa571bd0c5fc4a217fddd45fc3083c34bec4c18464905a2a0" [label="copy{src=/install/ubuntu_r.sh, dest=/work/}" shape="note"];
  "sha256:b7a596d04b7b97b1e6060ef67a0fb015c55824384cc90df4f4f3e23a310f0a0f" [label="/bin/sh -c /work/ubuntu_r.sh" shape="box"];
  "sha256:546ecf2bb393d99ecedbdf7263a144414bfe39db5ce6c15a94511a7100e5c09f" [label="copy{src=/install/ubuntu_perl.sh, dest=/work/}" shape="note"];
  "sha256:9abf56878eebb97ca6c318542443bb739f843b2a06eb26defd56f344b4ddfc40" [label="/bin/sh -c /work/ubuntu_perl.sh" shape="box"];
  "sha256:5466007cc388618601bbd64b6af78f5e062685a83000da981149d07d109e44ae" [label="copy{src=/install/ubuntu_clang.sh, dest=/work/}" shape="note"];
  "sha256:0624dbba82a2ccf7d2b3b426eb8b05a8d4ad58a58ee89d37ee3badbbe80bd8ef" [label="/bin/sh -c /work/ubuntu_clang.sh" shape="box"];
  "sha256:5055b181c8bba6b2b9df43eb11b0f95af429bb91517536ad53e390b0b21324f7" [label="copy{src=/install/ubuntu_mklml.sh, dest=/work/}" shape="note"];
  "sha256:9075b7eb636c8b3bc5eb812be67e5f08f8f1a6e11108f2eb1b00f36e5bbd84dc" [label="/bin/sh -c /work/ubuntu_mklml.sh" shape="box"];
  "sha256:91216cc3ce072d586a40d4608b886f39b51d66c2d1aa289b20e4d13c36da3602" [label="copy{src=/install/ubuntu_caffe.sh, dest=/work/}" shape="note"];
  "sha256:2747b02a26326bb3c32667e744cf2ced64e4b7a0f42bac330918da479daea1d9" [label="/bin/sh -c /work/ubuntu_caffe.sh" shape="box"];
  "sha256:3c762414d1bd6e67b1cae6b387822818ae49328bb63251506c575ff7a2ce7104" [label="copy{src=/install/ubuntu_onnx.sh, dest=/work/}" shape="note"];
  "sha256:a0896301372492b30488d387d4c257adc63020facae405344cc22ca1fbbca363" [label="/bin/sh -c /work/ubuntu_onnx.sh" shape="box"];
  "sha256:35200c6f221ae33ed28f6cdcdcea53cb3db5361d7b1b92679479ec5dc0ae96b6" [label="copy{src=/install/ubuntu_docs.sh, dest=/work/}" shape="note"];
  "sha256:83a90da64d211846909646280ac97f4e7f3448225b38e5f20c6c7f1ff590b165" [label="/bin/sh -c /work/ubuntu_docs.sh" shape="box"];
  "sha256:a8550e313e3a8e25365acce80699f4e0460a626017e1e4344554dfdf6ebaa537" [label="copy{src=/install/ubuntu_adduser.sh, dest=/work/}" shape="note"];
  "sha256:edf5aff4f3f9f499a19e907b95471fc649a1ca51af12dc3ba0c0ddba5a116a53" [label="/bin/sh -c /work/ubuntu_adduser.sh" shape="box"];
  "sha256:7d2d676c1e44df537c497e2e184ad1fe37dfbe4e187de2668b501d992689efc4" [label="copy{src=/runtime_functions.sh, dest=/work/}" shape="note"];
  "sha256:eae9c9b06d75b6b85ab8bb8ec79d73257a16313aae1d9b3208e704a6de6d6f4a" [label="mkdir{path=/work/mxnet}" shape="note"];
  "sha256:b98c28e3814ca5a0fbefa7fad36404329bf94c8b40d4301a8f8a5838715d613e" [label="sha256:b98c28e3814ca5a0fbefa7fad36404329bf94c8b40d4301a8f8a5838715d613e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" [label=""];
  "sha256:d58701265fac393e54ef9a17dc05f25d720d51a6440e46d3f9f1ae37da43b90e" -> "sha256:9713969f14831018abdeddf0d6f33deaf6e2c1a0a07bc8bd713b5bd3f1a4f1e9" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:9713969f14831018abdeddf0d6f33deaf6e2c1a0a07bc8bd713b5bd3f1a4f1e9" [label=""];
  "sha256:9713969f14831018abdeddf0d6f33deaf6e2c1a0a07bc8bd713b5bd3f1a4f1e9" -> "sha256:a2d52bb177002dc22370d1b8431255f7b862582928bfdee85c9d587f420a240e" [label=""];
  "sha256:a2d52bb177002dc22370d1b8431255f7b862582928bfdee85c9d587f420a240e" -> "sha256:074c1ab5da7d613a299aa54ce97a7c95cb8396733ca29ed226a7611a567fe761" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:074c1ab5da7d613a299aa54ce97a7c95cb8396733ca29ed226a7611a567fe761" [label=""];
  "sha256:074c1ab5da7d613a299aa54ce97a7c95cb8396733ca29ed226a7611a567fe761" -> "sha256:6a5a986108827b5891dfb545af6338a9f1de10d9a6ad932e356d023e4b4352be" [label=""];
  "sha256:6a5a986108827b5891dfb545af6338a9f1de10d9a6ad932e356d023e4b4352be" -> "sha256:2486920a887c903c144494acbfba52ba79cb4ff290164c2b129ddfe29948e661" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:2486920a887c903c144494acbfba52ba79cb4ff290164c2b129ddfe29948e661" [label=""];
  "sha256:2486920a887c903c144494acbfba52ba79cb4ff290164c2b129ddfe29948e661" -> "sha256:b4e3d138b09529124c3657ebcc4c8b88f51a0d9178fbdfa6706496974091cbda" [label=""];
  "sha256:b4e3d138b09529124c3657ebcc4c8b88f51a0d9178fbdfa6706496974091cbda" -> "sha256:532df6bd79183f0fa571bd0c5fc4a217fddd45fc3083c34bec4c18464905a2a0" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:532df6bd79183f0fa571bd0c5fc4a217fddd45fc3083c34bec4c18464905a2a0" [label=""];
  "sha256:532df6bd79183f0fa571bd0c5fc4a217fddd45fc3083c34bec4c18464905a2a0" -> "sha256:b7a596d04b7b97b1e6060ef67a0fb015c55824384cc90df4f4f3e23a310f0a0f" [label=""];
  "sha256:b7a596d04b7b97b1e6060ef67a0fb015c55824384cc90df4f4f3e23a310f0a0f" -> "sha256:546ecf2bb393d99ecedbdf7263a144414bfe39db5ce6c15a94511a7100e5c09f" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:546ecf2bb393d99ecedbdf7263a144414bfe39db5ce6c15a94511a7100e5c09f" [label=""];
  "sha256:546ecf2bb393d99ecedbdf7263a144414bfe39db5ce6c15a94511a7100e5c09f" -> "sha256:9abf56878eebb97ca6c318542443bb739f843b2a06eb26defd56f344b4ddfc40" [label=""];
  "sha256:9abf56878eebb97ca6c318542443bb739f843b2a06eb26defd56f344b4ddfc40" -> "sha256:5466007cc388618601bbd64b6af78f5e062685a83000da981149d07d109e44ae" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:5466007cc388618601bbd64b6af78f5e062685a83000da981149d07d109e44ae" [label=""];
  "sha256:5466007cc388618601bbd64b6af78f5e062685a83000da981149d07d109e44ae" -> "sha256:0624dbba82a2ccf7d2b3b426eb8b05a8d4ad58a58ee89d37ee3badbbe80bd8ef" [label=""];
  "sha256:0624dbba82a2ccf7d2b3b426eb8b05a8d4ad58a58ee89d37ee3badbbe80bd8ef" -> "sha256:5055b181c8bba6b2b9df43eb11b0f95af429bb91517536ad53e390b0b21324f7" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:5055b181c8bba6b2b9df43eb11b0f95af429bb91517536ad53e390b0b21324f7" [label=""];
  "sha256:5055b181c8bba6b2b9df43eb11b0f95af429bb91517536ad53e390b0b21324f7" -> "sha256:9075b7eb636c8b3bc5eb812be67e5f08f8f1a6e11108f2eb1b00f36e5bbd84dc" [label=""];
  "sha256:9075b7eb636c8b3bc5eb812be67e5f08f8f1a6e11108f2eb1b00f36e5bbd84dc" -> "sha256:91216cc3ce072d586a40d4608b886f39b51d66c2d1aa289b20e4d13c36da3602" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:91216cc3ce072d586a40d4608b886f39b51d66c2d1aa289b20e4d13c36da3602" [label=""];
  "sha256:91216cc3ce072d586a40d4608b886f39b51d66c2d1aa289b20e4d13c36da3602" -> "sha256:2747b02a26326bb3c32667e744cf2ced64e4b7a0f42bac330918da479daea1d9" [label=""];
  "sha256:2747b02a26326bb3c32667e744cf2ced64e4b7a0f42bac330918da479daea1d9" -> "sha256:3c762414d1bd6e67b1cae6b387822818ae49328bb63251506c575ff7a2ce7104" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:3c762414d1bd6e67b1cae6b387822818ae49328bb63251506c575ff7a2ce7104" [label=""];
  "sha256:3c762414d1bd6e67b1cae6b387822818ae49328bb63251506c575ff7a2ce7104" -> "sha256:a0896301372492b30488d387d4c257adc63020facae405344cc22ca1fbbca363" [label=""];
  "sha256:a0896301372492b30488d387d4c257adc63020facae405344cc22ca1fbbca363" -> "sha256:35200c6f221ae33ed28f6cdcdcea53cb3db5361d7b1b92679479ec5dc0ae96b6" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:35200c6f221ae33ed28f6cdcdcea53cb3db5361d7b1b92679479ec5dc0ae96b6" [label=""];
  "sha256:35200c6f221ae33ed28f6cdcdcea53cb3db5361d7b1b92679479ec5dc0ae96b6" -> "sha256:83a90da64d211846909646280ac97f4e7f3448225b38e5f20c6c7f1ff590b165" [label=""];
  "sha256:83a90da64d211846909646280ac97f4e7f3448225b38e5f20c6c7f1ff590b165" -> "sha256:a8550e313e3a8e25365acce80699f4e0460a626017e1e4344554dfdf6ebaa537" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:a8550e313e3a8e25365acce80699f4e0460a626017e1e4344554dfdf6ebaa537" [label=""];
  "sha256:a8550e313e3a8e25365acce80699f4e0460a626017e1e4344554dfdf6ebaa537" -> "sha256:edf5aff4f3f9f499a19e907b95471fc649a1ca51af12dc3ba0c0ddba5a116a53" [label=""];
  "sha256:edf5aff4f3f9f499a19e907b95471fc649a1ca51af12dc3ba0c0ddba5a116a53" -> "sha256:7d2d676c1e44df537c497e2e184ad1fe37dfbe4e187de2668b501d992689efc4" [label=""];
  "sha256:c03d6434d74d47901f40f34bfa74ec648e48da8060cbe5f431cc1dadf28c701d" -> "sha256:7d2d676c1e44df537c497e2e184ad1fe37dfbe4e187de2668b501d992689efc4" [label=""];
  "sha256:7d2d676c1e44df537c497e2e184ad1fe37dfbe4e187de2668b501d992689efc4" -> "sha256:eae9c9b06d75b6b85ab8bb8ec79d73257a16313aae1d9b3208e704a6de6d6f4a" [label=""];
  "sha256:eae9c9b06d75b6b85ab8bb8ec79d73257a16313aae1d9b3208e704a6de6d6f4a" -> "sha256:b98c28e3814ca5a0fbefa7fad36404329bf94c8b40d4301a8f8a5838715d613e" [label=""];
}

