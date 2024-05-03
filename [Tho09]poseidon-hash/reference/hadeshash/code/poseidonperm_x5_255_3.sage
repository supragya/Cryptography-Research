# M = 128
N = 765
t = 3
n = int(N / t)
R_F = 8
R_P = 57
prime = 0x73eda753299d7d483339d80809a1d80553bda402fffe5bfeffffffff00000001
F = GF(prime)

round_constants = ['0x6c4ffa723eaf1a7bf74905cc7dae4ca9ff4a2c3bc81d42e09540d1f250910880', '0x54dd837eccf180c92c2f53a3476e45a156ab69a403b6b9fdfd8dd970fddcdd9a', '0x64f56d735286c35f0e7d0a29680d49d54fb924adccf8962eeee225bf9423a85e', '0x670d5b6efe620f987d967fb13d2045ee3ac8e9cbf7d30e8594e733c7497910dc', '0x2ef5299e2077b2392ca874b015120d7e7530f277e06f78ee0b28f33550c68937', '0x0c0981889405b59c384e7dfa49cd4236e2f45ed024488f67c73f51c7c22d8095', '0x0d88548e6296171b26c61ea458288e5a0d048e2fdf5659de62cfca43f1649c82', '0x3371c00f3715d44abce4140202abaaa44995f6f1df12384222f61123faa6b638', '0x4ce428fec6d178d10348f4857f0006a652911085c8d86baa706f6d7975b0fe1b', '0x1a3c26d755bf65326b03521c94582d91a3ae2c0d8dfb2a345847aece52070ab0', '0x02dbb4709583838c35a118742bf482d257ed4dfb212014c083a6b059adda82b5', '0x41f2dd64b9a0dcea721b0035259f45f2a9066690de8f13b9a48ead411d8ff5a7', '0x5f154892782617b26993eea6431580c0a82c0a4dd0efdb24688726b4108c46a8', '0x0db98520f9b97cbcdb557872f4b7f81567a1be374f60fc4281a6e04079e00c0c', '0x71564ed66b41e872ca76aaf9b2fa0ca0695f2162705ca6a1f7ef043fd957f12d', '0x69191b1fe6acbf888d0c723f754c89e8bd29cb34b1e43ab27be105ea6b38d8b8', '0x04e9919eb06ff327152cfed30028c5edc667809ce1512e5963329c7040d29350', '0x573bc78e3ed162e5edd38595feead65481c991b856178f6182a0c7090ff71288', '0x102800af87fd92eb1dec942469e076602695a1996a4db968bb7f38ddd455db0b', '0x593d1894c17e5b626f8779acc32d8f188d619c02902ef775ebe81ef1c0fb7a8f', '0x66850b1b1d5d4e07b03bac49c9feadd051e374908196a806bd296957fa2fe2b7', '0x46aaa1206232ceb480d6aa16cc03465d8e96a807b28c1e494a81c43e0faffc57', '0x2102aab97ce5bd94ffd5db908bf28b7f8c36671191d4ee9ac1c5f2fae4780579', '0x14387b24d1c0c712bbe720164c4093185fcb546a2a7d481abc94e5b8fb5178b7', '0x5f2179b3a7845836cfced83e64e206f6a6cef2cf737f020b5cfd713c9550fe9f', '0x1787986ab56e1b56b5443334562b0bc3657d27323b87e3a8485e68ab96d57188', '0x39ef4b00deefe7e7451adda44428aa22074c496de2c9ed67dcf4861da65f543a', '0x7271d384cf5c90fd0c48af190c5c765937c7468088b081a99337e6eae53bb20c', '0x6669e58d04248ca86024fbc196e5f306e522423aa71f84225435328b37a1dd3d', '0x0c1f1b492b27539d754cba5e46edc1f1ac1c5696da8eb19416b07420bb321c65', '0x1c4d41a133b97dc467f1f184cf191f331dfc38e79e7e53516c39848c9bd44692', '0x369ea8e699181b1cf88be9205ab840180c9288e67a359dc0dda4ac74cf9768e2', '0x4cfa7d72afed332bf0b8a2a719123f7ebfa714b9e3100eaa533dbde6fb985043', '0x4e592fcde9f3c360e54c6f34d7a8bd41889942e9fe23d9fd4a9e5b3bfbbb3e45', '0x032b5885586212fb235570996d3a4c40f54ff91598a948ec2722ed865b8438a5', '0x03f3178956cfd3e2e6614fb134597d3b3cff0d8a33f3523d825982990c068940', '0x3126e84dfd67a22bf0ce0d9273d8ad40e6109af5bb2bd78d0ac08a16c6248f74', '0x3527888062f1e2738d7b928e9af244f0a39011390c2dbbcf56d8e087f4087b6f', '0x64635758efc701dbbe2eb423bf7b5bf6c3d34c6ff92494f3421182a8b187ecf7', '0x4d7f71960f03db8a2a428cbf77ddc1916a5f4243dbeb2ddaef7b5b5f9d74546e', '0x37832ba2da93de3643243eba3b9765d75359310617f3fc06d74ac12db57b29c5', '0x4dce55879ffd9398f96c9e6556a3bb4fc93147965252cb1d6c94b3282ba3fae6', '0x4ba85e4d2537972c0fd5a4727a58c3d85d98563697a34c0af845bfecd6dc4b40', '0x582dc453b4cbf6b1d19734b0f337d3423b503703979689f384d0eb96ff5b02ce', '0x0e6f127f479ee6113540d69b25420a2682f07b23e799566b091a1c891fa224ba', '0x39c815508d2995bb8ae5035472944706e900b2fb16d5a779fdfff82306f37dbb', '0x6591aba215bcf96d8aa03220372179a4c5060cfd7f95724ab300d9459f709051', '0x221807cb4909d549c546a734ad2cd7f60a69e816ace98fad830452a44a343188', '0x2766a1e33038004da58bce78722380b22b13b0aecb87f38659f3035e1336b53f', '0x11b5e993e6a9cdc3b5d2f5336dc9bad5074b661537ff890b1babd7f53cada9e3', '0x29576176f9a5a10e3d0a2c59af26b51f4c5fc86ec59c0f2492deb60ad49eddcd', '0x51e72c44f9de491c747d8a6d333fb2b3e16ee7571f1340a9a5f6f72363991e98', '0x2fb360d959be4aa871e071764a5e41eb264d04f0289f098723b69bab09f4d1a6', '0x03f46b4c3c77957cb595ed61fe13f9e8739a5009311142b69c1e8c07ae250f47', '0x4683311e382a99927e0ff672cd0543aaebfc0c33ba96ad937818cec979b57b5e', '0x7117cc69bf566b1b0ba5486b0f1f9bd60f2f945e3cbf33a2ed17076f4caa0dd6', '0x3bd670c3ce88ea43f254d61c2a9b56d6a4dff19ab5c4d28989d271f3dd6bee25', '0x2fd2ed0ba1135575995d15061ddb487f2c5c6005feed28d8a01b9d7bee361a1b', '0x6a66704e22a81e6b7ad8e2f28edd8c9c9a10abf17e053f4d89665810332600ec', '0x5cbc378be1db3840b32d8d2ebfe2695f810f932a206aacece707ca693f4f933e', '0x35b716410b3c9374d42e7d39eaca316b6568f0a14cb14d519967aa3ff9970aac', '0x231c6db056e47a01c192db40e586ededc929b564667377a10bd1465f3852811f', '0x4904d5de1f512eb14b0f856acb016c7a43079b2f702303752962f336558b0f32', '0x56d6bc63f429bb7fec7bdd133581f2abc74406a57607c2ba3302481eddba4074', '0x519d0daccadfbb0167fa79d1afdf36b25f28b9f74f1e65d21d28ce1022579735', '0x0576cf2418d6bd88f352bb26da1066637575f85688cdb981c7787f8094e5a71a', '0x16672be70221dfa20aa110bdce12e1e66ab171db4eadd9935baa0e3aa49e437a', '0x1e51c73bc2aeb9e877d9c2c18f17b03ea3dfcc04adfc649780ce4bcbc43b0b69', '0x1271c830507a211c8e2ebdfb372f79c8a42a9e84e4fdb0dcb35d55e4d155e169', '0x67077397c2b01db4de4b78adf97e0ebceb20cb91647db49a7bc06a5ce1b25544', '0x2e5454b258106b63f0ab01924767b4aecce371202abc28a260adc45f35570b9d', '0x440f72769f137a8078f05063cfa4e2b73b2381b72b68e97b1c1e9cd18df36f82', '0x6ae1478fc162c50032fef2ef79c93ca7ee25b16358704f434f6cddcce2fc9c40', '0x0c0f3630409a2242a39ebb33c5c7cf18965b8932621aab4ca2c315d4441b6987', '0x0d1bd84a786a990adf88b51f253bd9032cb50ce4682bafe103893af36d5e75dc', '0x30ce425059810dd94aae2f255666b0fe8bc52ff701c385c43a998926539dd401', '0x395a1e753153b56d1a9ec2ca73099425e446dfa668dc73da2ea311abe5e3d96d', '0x57f09d89e827d00392fdc0c3d21b1a5bae2d689894ced82f58e256a03d20ef91', '0x1065b71b135e4feb8b3cba3c252daa084cb5624b0ba76f48f6a03854bfdbcacc', '0x3d5f53bd162f053f045547952a06bc83bc413e17957977e359d9bd4c8883203d', '0x05f467a5081bd3479d6b49f697b0a75d264b42b95b2bed475cd58ffd05322d85', '0x6f5ad8e3ed272494c36a5a52a7d034e04b633460c16a512d0d8002f8fa0e3484', '0x23c293275e282bf15cdbffae1f00a2712e76aa6d62820542159e9d6f115df3b8', '0x3757e7009ca9bec8bba29308b9922354eeeff3beb4113174bf8cde584722d31b', '0x406f25e72d0264ed50473ec95a7ec53ebe114898f84deb06e53715ae24725342', '0x046dcfa2d6d655c7c551f7440772b056e7d3f2c65ac52e4496c4fc753130ad45', '0x49c2e954d649ee1c4e72ce8c1833c33796ab29dbb0486fe53b04687b2063259f', '0x2caa8aae247ef83e63dbe8e5efc89d7d28ffd8bf7a5331e245af8aebc872a759', '0x5efa9f8f32d9ec1d3a3d8cea806e068909b3d3562fdc3f91f2d899f8109bc717', '0x0df424bdf3b0c60395cd7380029a633692b933250b79371e09122c8c39aa1301', '0x2d012e3e811cf4b88aed6f38d5cc8c3456dbae1741f501574321906efb474930', '0x709c043fc648c48a5bfb5ea25d5f0557d03aadff9d6ec1afaf2032f3aadb9dba', '0x1bb9b23d6805ed1179a1dad95740513dcea114185a8ed34e17dc8077dc830916', '0x0fab922a838c55af1e2349b1e50b56d0690c200d0f2318aad4b7bd8a38a47f61', '0x4d58799d4501ee8e89c73db7a4ff48d9f5e80fd5984afc67f3054f59d3dc74d1', '0x4f130b733cb78f3940da337d187934e48765956ad2ca7b75b7bf8e293b46a758', '0x03e7812afd6c480faef03c3beadfb882923a743a4e60e58a259e7ed4598cca97', '0x739ea276a5ef7008fffc02a3c853f4d56eaeee7df395cbee8bbe6b502b81ca1a', '0x0ae97e00a91a4e761815fde0e9506629373ef7ce765ecb1bc7ba0ca2decd7d01', '0x6d6c41e1315436781a774555668cc3d41c99c78dc107f443ba0ae60cdb287c16', '0x18d683776871c1918c2b5c632cb1854dff865c4b1b8bd66e46d2fa2a8d515c34', '0x3597acab641c21dc5475eb8b04b0e2ae91700acad1b543e8c7e69d574eb5a15a', '0x63df64938297594b4e8bf2ddd6bcaee6f2b9703e5814ddeca44d341b9e7d24a2', '0x009ab455f6b4c7755da22615073e9839cd12a88d1f9b583d7ad61bde4009b873', '0x09e21d43c56b0abfc26d0fb7a3ebfd3a7743bbeea99ac2b8f61cc23d1c673a12', '0x4db404b9eae6a9f39417be43c93a9f6d136a0784b73789d590ada0a60df0d16c', '0x0c6f0ecaf32a3d60aaebeaf3f8ccb00a10ee19def3836b78fc905bfeaf2b80a9', '0x3518d688407ca0e548165b9796a4279d038720408a3c822dc44ce8974ea8ad8d', '0x27ba9d4584a23881e23aa0340dc266b32b56455c30e6da78b37741de7ac5b185', '0x63d33e44fda7868d50858e482fbff7c29143d60fe00817cf32e0efab4c3ad6eb', '0x561a72b93fecdbd83d67a5022d9a221cf21b22cff2d79c114bf01c71f2641ae9', '0x48a1625a9ee1102971aa28bc07a5ba88ac6424801502ff4fcb6994824c2e5e36', '0x46a003c184ecf0e00fa8ef7dbb356366be4d63a3847634b46a18ecd47667d1bc', '0x37d6efb2876f3cba63a60821e50853d0997947b96f633607bb36ded243ded838', '0x14f96acdb291ed2bf98a5bed063f6911598bdff1f6c0219bbefa447ab1918163', '0x573d156263dc8edf24efced0c465587cbdd1a2c792cbadd58abf95e037d3c668', '0x46839e7d70370149b35b3a07d8406acbaff07615747d2101bbad18abb9891f95', '0x3b74a3420d1b988408fe8d8fcb51a81f16f8d17d082da9ba61fbc8031d8ff59b', '0x059f3301178a22026798b07a8578611d7c56c16bfbbe6a058f4e44016aaa172d', '0x467d9ff3508feb318b07acf9184537462e987c58b7ef486873e1de428eaa3f32', '0x716cac6b0fc8f63d406d38d6b82c8ed4e5665e449f07b572b83f43c9f9ba2004', '0x7121fa9ca506687b3c49dc2060731c85ae48596be138148d8ea365333b8f03a6', '0x10000c75e6e03366bba4f59c68f312becb7ae0c30d4aa141940a7531105ef7e0', '0x375487214c07542fa5b6a5736344466a06c2cb4c1838c9966925cd8c5888c3ca', '0x2361aaf969f732be06b159772a097f3518ed9485449edcfd367e289f0964c486', '0x2ddba8679308f327c27023a893c0458d1e73dcd64a39b22b130fd9e4f283f906', '0x6303e21755b1de4d65495bae9685e05162245106f53d7407ec0883e39695b15c', '0x5aa3dddf8da369722b2e1c8f2aacf0625d08264f8a0ed320df110ab42f5b0c1f', '0x3525eb41c2db9cf9cd08652d815d7c91f3294defeee702efedb5f777284cd1fd', '0x0079ae4df49f78b97cb0e3c3f4b225538d4a0c4827e333d27a29398c17c26c9e', '0x533c8c1b05e2dd7e7e19ea4b027cc8bd559c2e2a622207b0c13bc7afdd7bc3b7', '0x4989a01e4fe4b1bd544e5cd4288895068897cba899ddb01779f6e2b08024d3ab', '0x1c7f5858eabb1e2b8c3104808dc68ae3de05381fc74704a2afbd2fcc42cdd3c8', '0x55faf16bbea2ee0f35413b9808c135fb1e4729c90b4cce4c345238c6dc557639', '0x156a82f8e5aea455d9c8c436f89c6f9ecbce0ecaafdd13b93f255e075c72ebd0', '0x37c7047032df0027d7bc128e9a107582f25ba0b7387230a05864aee420724703', '0x40ab847795176c24af06d5000ceedb82d87492cbde5c1c262a83a9b6b6f4b264', '0x5a73bece689545bd2de9ef263d5036152f36e2250c76711e8bc9ed9bda7af685', '0x1c4a903be5dff4440b4f38e56f988cddacc57371aeebb06cb64ab5d21d9562f5', '0x5bba81a692e87b51c7c176730fd05cfd100b0bd86d69b4b4f367277a2302b2f8', '0x2f875bdd6669a8ff920c3d7bedd74c101541d4b184b7e1bc0b90ddb26902319d', '0x5e89035bbe943f9e6024db13c58bbc748d3f1654050c7ffe084b763efceff3bd', '0x728cff754d7a76a7f8b00656412ad8874e7bab9827706ca6d6d13c72a0c6812e', '0x6dcfa6338bfe3569524a968abc95c706801fcc695ee3f5854a79e4689625481c', '0x24ce56469aeaa4243053bb62c07100002b8f74c4ac74c350beff0c0be47e5a51', '0x6a72f954f591825caa43c3ba7ccfea7aa1a00de5a681e52de6148252062f8363', '0x59922ae3f06524d2028e9aa00a136613d4306fd5f4247ad0a6a587be0fb0081c', '0x50d8b98688f4980b1a0c2b5313f8ac9660b1e9199b5f59ed3709e0f1d9185552', '0x3184262ef10e9b0ab57cfc898fb68342cb86ed6e25e536fa94caa605b4a3caf1', '0x69980a1f4b883cac1039fc47dba993503d4ae5ad40ed112a5a5070090006f73e', '0x1d5a91b930b89934745ba00bd9094b67f95e41e3778fe0420880e80bbf8078e1', '0x0ddebce4b6ca45d69b2f70c8b54e425615c1aadadccda74e0882eb79c445778f', '0x68c8362e93a371d7c9551edf3e3f3b14c54c729c1fab0fa6eebae7da09855826', '0x3dcc6a17e074d0350ffc0e5426e1bb6894e6c958f96f3d7d9c4240b948cde438', '0x03b8aba0ee959a4e51cb5cfc458b0f4ad3a9b59797394c3d3c9eb57adeca2308', '0x0f24cc57f3b2fbf25375c71d71bbb97b2d193fc1a203ccc514c074d461001ec4', '0x71e9bfa7f66afbafbf139a70baedfb1b202a2e51e6b6c420e28dd342a5eb0cd6', '0x3ac9c11890e96a2dcda6405a6c52a47e803d6674e65117f1a8adf701d68cd02a', '0x45c00146e1b89ad5ccb8a02202482023751b88997d8fba1af5c0e7a68dadb63c', '0x1f98bdb8dc318e3e2e28cc3d8b85e334f74b57e15b02e1637ae035b04bda3b5c', '0x2ec077dbbc7bf2affe7ddd8b8a7f900f3019cddc8ce55cf9782004f65f51257b', '0x32c377fc988f600a2c2ef5d5376e2e31faf1c2d1a618db011fbfec1ff337568d', '0x0a820d131da844383bdfc1a053d8aceec7f2eb345ab6c21d38e829db8d05861e', '0x5bd95df8a933f7b7e263e013f45a92c0e786dba563e210b77d5a40f961092e60', '0x264cf7b75095fb96b420fb3f31c064299e78e796e8b3735bd0a186cd3817708d', '0x27d3e47b2f11ada6a9a5d329e00a128c9836be92ee92429ab891e71d11dc29f2', '0x64354b412c8cfa1319e4afd891e619a8fbbde04d85bef4ad0548689295d2bce2', '0x0db0f967487ee52e0836fb7135bce37fbd32887e911de52d0b855a5afac1f770', '0x1c9a155911b36c896475995417197faad870737a9ce5d9d3a5000f5396978e9d', '0x65ae557151ae9ec7f870fa2804bfb88e669dc0f8865b140f964f1f93180ac531', '0x52c6f6242517362c066020764fef4a5574749106a6dad534d136e7fe885fcb40', '0x6e44c5bcd5dc6591e2f84290a313b71a04da8da398dd10135d22bb23df41e883', '0x2146d3e371040feba8595049a285944bd45a458dccb059c785c2adf032c8b710', '0x16db9ceb3074a795499a37c20ffc9eaca9b07a5a25824aa6adcdb19fabdff0b9', '0x5903725fd86fec14c9cf2a273017eb01d3a1785039397060650c4e228a6e6571', '0x54c75952f908e3f99e05718bd1f59bb6c414bc2aebacd81c47189885cbbc566a', '0x0dba4abc7f188e33e7f309317b7b9f5c22870ca90bcee7b576dd0b52619a39f6', '0x3950231611808399ad3ba5b78cad4c6bed6f364b9346541dfffa4d16366d257e', '0x1a6d8230bb9e8d1af552b9bab8babfe505931dd87e200fc7b3c57160a5bc4ae2', '0x6b3dd35220ecd616eea4309ac9a8118e9dc65a3f7c1ef52dde7a3d33578c43a0', '0x6da00240c3505b214c8d8ce3f48914247adb9f0ecf239d7baeada5183d31ba54', '0x37c3720b132d3a719424e29c37acb7dfbd709ec9497a3162175424bf063c6e18', '0x500f85a3d06a0b5a05c5e93ae70084802fd499c7e6ed1ee6e26b4bf8fd6838fb', '0x2b37f70d73366d32d575186d0787fc8ce539b73f83c6e7eaab27be85f4faaaf4', '0x1d8efd6e52d4f936415e5c4814f3366804e2386857a4befa2a53aab21ddb68de', '0x33303b8a8f2d811be65a977907d17d133f3a64c59fe2a9c5c2d4517e3eb390e3', '0x2c1ba860f51e0c2eaf4a9a6bf095c65fab3ee15c145f404fbb0272b5ca14a449', '0x0b0849c7a3adea03a89d101081c9c9f4f66ef917d09c7957584db9a75aec2378', '0x41e7e30c77579da7809c3e757821c869b53f103fcb752ac82f8a734d4abdc792', '0x182e66be60686c8c5e6518430845f98924fe8d7d43e628bf75ff52a716371b9c', '0x373b2508c2fca1a288fa4f54a6edf02f2661e664dcf4ff2a74f3d06b1a00ddc4', '0x1735b442b3acaad0bbe630f308e03f1aa6f56bdb029e50c1393533cee1a45c30', '0x22abe8ea470a0372911bcef1367e10aa220491d76caeaa5959feb5d75f4a1f9f', '0x5caab387eb997f774f64151ed21abfa5364a83c6f065d92bd9c92f2719b8e80b', '0x57b33094aeff828377897b56e1c432978d07c668ef25a36bc5e2e835aaeff725']

MDS_matrix = [['0x3d955d6c02fe4d7cb500e12f2b55eff668a7b4386bd27413766713c93f2acfcd', '0x3798866f4e6058035dcf8addb2cf1771fac234bcc8fc05d6676e77e797f224bf', '0x2c51456a7bf2467eac813649f3f25ea896eac27c5da020dae54a6e640278fda2'],['0x20088ca07bbcd7490a0218ebc0ecb31d0ea34840e2dc2d33a1a5adfecff83b43', '0x1d04ba0915e7807c968ea4b1cb2d610c7f9a16b4033f02ebacbb948c86a988c3', '0x5387ccd5729d7acbd09d96714d1d18bbd0eeaefb2ddee3d2ef573c9c7f953307'],['0x1e208f585a72558534281562cad89659b428ec61433293a8d7f0f0e38a6726ac', '0x0455ebf862f0b60f69698e97d36e8aafd4d107cae2b61be1858b23a3363642e0', '0x569e2c206119e89455852059f707370e2c1fc9721f6c50991cedbbf782daef54']]

MDS_matrix_field = matrix(F, t, t)
for i in range(0, t):
    for j in range(0, t):
        MDS_matrix_field[i, j] = F(int(MDS_matrix[i][j], 16))
round_constants_field = []
for i in range(0, (R_F + R_P) * t):
    round_constants_field.append(F(int(round_constants[i], 16)))

#MDS_matrix_field = MDS_matrix_field.transpose() # QUICK FIX TO CHANGE MATRIX MUL ORDER (BOTH M AND M^T ARE SECURE HERE!)

def print_words_to_hex(words):
    hex_length = int(ceil(float(n) / 4)) + 2 # +2 for "0x"
    print(["{0:#0{1}x}".format(int(entry), hex_length) for entry in words])

def print_concat_words_to_large(words):
    hex_length = int(ceil(float(n) / 4))
    nums = ["{0:0{1}x}".format(int(entry), hex_length) for entry in words]
    final_string = "0x" + ''.join(nums)
    print(final_string)

def perm(input_words):

    R_f = int(R_F / 2)

    round_constants_counter = 0

    state_words = list(input_words)

    # First full rounds
    for r in range(0, R_f):
        # Round constants, nonlinear layer, matrix multiplication
        for i in range(0, t):
            state_words[i] = state_words[i] + round_constants_field[round_constants_counter]
            round_constants_counter += 1
        for i in range(0, t):
            state_words[i] = (state_words[i])^5
        state_words = list(MDS_matrix_field * vector(state_words))

    # Middle partial rounds
    for r in range(0, R_P):
        # Round constants, nonlinear layer, matrix multiplication
        for i in range(0, t):
            state_words[i] = state_words[i] + round_constants_field[round_constants_counter]
            round_constants_counter += 1
        state_words[0] = (state_words[0])^5
        state_words = list(MDS_matrix_field * vector(state_words))

    # Last full rounds
    for r in range(0, R_f):
        # Round constants, nonlinear layer, matrix multiplication
        for i in range(0, t):
            state_words[i] = state_words[i] + round_constants_field[round_constants_counter]
            round_constants_counter += 1
        for i in range(0, t):
            state_words[i] = (state_words[i])^5
        state_words = list(MDS_matrix_field * vector(state_words))
    
    return state_words

input_words = []
for i in range(0, t):
    input_words.append(F(i))

output_words = perm(input_words)

print("Input:")
print_words_to_hex(input_words)
print("Output:")
print_words_to_hex(output_words)

print("Input (concat):")
print_concat_words_to_large(input_words)
print("Output (concat):")
print_concat_words_to_large(output_words)
