[app/sources/465478793.Dockerfile]
digraph {
  "sha256:bdc98b5606f97f5aca2acfad6ad86136826ef033e35c28ed014fa7cd36a0e3db" [label="docker-image://docker.io/elementaryrobotics/element-realsense:latest" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:aadeedf5c60777f60ab9efe8bc50be4a9abdf949faf709be8c26d2cf0a2ab9d0" [label="/bin/sh -c apt-get update && apt-get install -y build-essential ruby-full zlib1g-dev nodejs" shape="box"];
  "sha256:db44f2468d14ffab73717df1681d5192d5779c2169b879e42ae113174684ca8a" [label="/bin/sh -c gem update --system" shape="box"];
  "sha256:760eba05822d26fc8f918cfcdf654f03480a946d3773dca194d1cf3430a8bb79" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:57fce005cf13ef51258f910a6325fb5eed93628addb65d78d9a3ee7114e5a974" [label="local://context" shape="ellipse"];
  "sha256:4b20bfc35c5d5431bcaaddb0cce56fbbcda01beb86259291eec8a86d0f589e99" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:c33a2150dca4c4c454f5e6ebb7f5ac50c82dd003f75ab97ea0ecb563471c9af6" [label="mkdir{path=/code}" shape="note"];
  "sha256:57fcb7afbbbcc8dea9cbff57a6606e63534de595d24cdf05d1aa246a3b769f67" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:bb729b94baefe0534678717c6e0d629764969f87a4b580239e40ad9fde6b78ca" [label="/bin/sh -c mkdir /elements_docs" shape="box"];
  "sha256:78173ea94ff4adfc0c4355f3602d181f126a251faab183bf9ac40ce6172e8082" [label="docker-image://docker.io/elementaryrobotics/element-record:latest" shape="ellipse"];
  "sha256:ee1e58f6ccb5633d1734fc616bdad4692b3491193b2acdb9a84c72bc073577ff" [label="copy{src=/code/README.md, dest=/elements_docs/record.md}" shape="note"];
  "sha256:c05551d58bab4af6633662240180c99afa3987222bda4a395074a15784c7c61a" [label="copy{src=/code/README.md, dest=/elements_docs/realsense.md}" shape="note"];
  "sha256:9891e60e0bb37c110566511f4d3c701569ebbf9d8ac82a22791c5a8683ecbed9" [label="docker-image://docker.io/elementaryrobotics/element-stream-viewer:latest" shape="ellipse"];
  "sha256:fce51d5ae7a45757f7bf11afb25043309f96796445f58af262fd0779e4e8da2e" [label="copy{src=/code/README.md, dest=/elements_docs/stream-viewer.md}" shape="note"];
  "sha256:778247bd6e14c524ba72163988c4cfdbd00f96ada08f34b2d64bacda30b85c71" [label="docker-image://docker.io/elementaryrobotics/element-voice:latest" shape="ellipse"];
  "sha256:6d2044971e0dea90901adbdb286a591162c1a4c05d2ff7c39a4d23cae70ab4b7" [label="copy{src=/code/README.md, dest=/elements_docs/voice.md}" shape="note"];
  "sha256:7d065c1c9c243837a9c40816f65284f7681b117775bb78a17bfa5eecfcd0347b" [label="docker-image://docker.io/elementaryrobotics/element-instance-segmentation:latest" shape="ellipse"];
  "sha256:a72dfcc142ca70bd1068d39a89e662a4976c679c4ec67fd6e562187dd5f8f950" [label="copy{src=/code/README.md, dest=/elements_docs/instance-segmentation.md}" shape="note"];
  "sha256:9d1aec34ef82f2480f7c5efb4828a40b8851b2fb9d146184c7c853b43b4a6cd3" [label="/bin/sh -c ./build_docs.sh" shape="box"];
  "sha256:5f2bd11bb04d7268d170b37e24f40cfc4c8fe6952ba46c8322232c50bac22163" [label="sha256:5f2bd11bb04d7268d170b37e24f40cfc4c8fe6952ba46c8322232c50bac22163" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:aadeedf5c60777f60ab9efe8bc50be4a9abdf949faf709be8c26d2cf0a2ab9d0" [label=""];
  "sha256:aadeedf5c60777f60ab9efe8bc50be4a9abdf949faf709be8c26d2cf0a2ab9d0" -> "sha256:db44f2468d14ffab73717df1681d5192d5779c2169b879e42ae113174684ca8a" [label=""];
  "sha256:db44f2468d14ffab73717df1681d5192d5779c2169b879e42ae113174684ca8a" -> "sha256:760eba05822d26fc8f918cfcdf654f03480a946d3773dca194d1cf3430a8bb79" [label=""];
  "sha256:760eba05822d26fc8f918cfcdf654f03480a946d3773dca194d1cf3430a8bb79" -> "sha256:4b20bfc35c5d5431bcaaddb0cce56fbbcda01beb86259291eec8a86d0f589e99" [label=""];
  "sha256:57fce005cf13ef51258f910a6325fb5eed93628addb65d78d9a3ee7114e5a974" -> "sha256:4b20bfc35c5d5431bcaaddb0cce56fbbcda01beb86259291eec8a86d0f589e99" [label=""];
  "sha256:4b20bfc35c5d5431bcaaddb0cce56fbbcda01beb86259291eec8a86d0f589e99" -> "sha256:c33a2150dca4c4c454f5e6ebb7f5ac50c82dd003f75ab97ea0ecb563471c9af6" [label=""];
  "sha256:c33a2150dca4c4c454f5e6ebb7f5ac50c82dd003f75ab97ea0ecb563471c9af6" -> "sha256:57fcb7afbbbcc8dea9cbff57a6606e63534de595d24cdf05d1aa246a3b769f67" [label=""];
  "sha256:57fcb7afbbbcc8dea9cbff57a6606e63534de595d24cdf05d1aa246a3b769f67" -> "sha256:bb729b94baefe0534678717c6e0d629764969f87a4b580239e40ad9fde6b78ca" [label=""];
  "sha256:bb729b94baefe0534678717c6e0d629764969f87a4b580239e40ad9fde6b78ca" -> "sha256:ee1e58f6ccb5633d1734fc616bdad4692b3491193b2acdb9a84c72bc073577ff" [label=""];
  "sha256:78173ea94ff4adfc0c4355f3602d181f126a251faab183bf9ac40ce6172e8082" -> "sha256:ee1e58f6ccb5633d1734fc616bdad4692b3491193b2acdb9a84c72bc073577ff" [label=""];
  "sha256:ee1e58f6ccb5633d1734fc616bdad4692b3491193b2acdb9a84c72bc073577ff" -> "sha256:c05551d58bab4af6633662240180c99afa3987222bda4a395074a15784c7c61a" [label=""];
  "sha256:bdc98b5606f97f5aca2acfad6ad86136826ef033e35c28ed014fa7cd36a0e3db" -> "sha256:c05551d58bab4af6633662240180c99afa3987222bda4a395074a15784c7c61a" [label=""];
  "sha256:c05551d58bab4af6633662240180c99afa3987222bda4a395074a15784c7c61a" -> "sha256:fce51d5ae7a45757f7bf11afb25043309f96796445f58af262fd0779e4e8da2e" [label=""];
  "sha256:9891e60e0bb37c110566511f4d3c701569ebbf9d8ac82a22791c5a8683ecbed9" -> "sha256:fce51d5ae7a45757f7bf11afb25043309f96796445f58af262fd0779e4e8da2e" [label=""];
  "sha256:fce51d5ae7a45757f7bf11afb25043309f96796445f58af262fd0779e4e8da2e" -> "sha256:6d2044971e0dea90901adbdb286a591162c1a4c05d2ff7c39a4d23cae70ab4b7" [label=""];
  "sha256:778247bd6e14c524ba72163988c4cfdbd00f96ada08f34b2d64bacda30b85c71" -> "sha256:6d2044971e0dea90901adbdb286a591162c1a4c05d2ff7c39a4d23cae70ab4b7" [label=""];
  "sha256:6d2044971e0dea90901adbdb286a591162c1a4c05d2ff7c39a4d23cae70ab4b7" -> "sha256:a72dfcc142ca70bd1068d39a89e662a4976c679c4ec67fd6e562187dd5f8f950" [label=""];
  "sha256:7d065c1c9c243837a9c40816f65284f7681b117775bb78a17bfa5eecfcd0347b" -> "sha256:a72dfcc142ca70bd1068d39a89e662a4976c679c4ec67fd6e562187dd5f8f950" [label=""];
  "sha256:a72dfcc142ca70bd1068d39a89e662a4976c679c4ec67fd6e562187dd5f8f950" -> "sha256:9d1aec34ef82f2480f7c5efb4828a40b8851b2fb9d146184c7c853b43b4a6cd3" [label=""];
  "sha256:9d1aec34ef82f2480f7c5efb4828a40b8851b2fb9d146184c7c853b43b4a6cd3" -> "sha256:5f2bd11bb04d7268d170b37e24f40cfc4c8fe6952ba46c8322232c50bac22163" [label=""];
}

