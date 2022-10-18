Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F85602FF7
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Oct 2022 17:46:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1okon0-0007qI-V8;
	Tue, 18 Oct 2022 15:45:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1okomz-0007q3-GC
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 15:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mXpK4cBm9T7+BELOYKBGhPKOih4czA659gzOzJ0NT2o=; b=nO1Qj02WzE1dK5kU0WD3F1Hu7y
 kcawl48BcxXiYRcKpBq1C6S63JgSe3+9h19bf6jvAij5fOgEMrvqOmWU4jZiD9oIFNMv/EVmGug2o
 JmvwfSk6n+B9BSDMMxVoppPZO8Cl4aRp901T8wQFBXMT1EeApVOAYYu+Z8BW36edav0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc
 :To:From:Date:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mXpK4cBm9T7+BELOYKBGhPKOih4czA659gzOzJ0NT2o=; b=Y
 lpLHMf5+DUu7mWr4jmIp2owBrX6Jbe/QJD/YdjK0/0esw8boEWGOlnQFNt4oSxEEbk/Wnas10V3oC
 Et66SVk7IfH5OB+IXi7oDA4lHnd6pKlIx/lv+iX/zDpN3igANh57aMcsxaaHhqtV4f11zcxhTwrzO
 qoRC3a1KhBIV3mZo=;
Received: from mga17.intel.com ([192.55.52.151])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1okomx-008XHg-MS for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 15:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666107955; x=1697643955;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=iq2JOZtkV3u8G3g6ABUM7qsZi+b2OOZm7VlREo7/cOE=;
 b=Ua1N6Fj3BNITHP5x71hnhUJg/6r97ILGpJCr71ty7e6c4Unc/kzkmjwB
 mft7IJQGojKE9mTjbWztngF/9WPRCb/m6Z+Rfjbuw5Xpzp0NUkPUGJTlT
 PolMD+rXT6Mq6RUyJaxJrkl2/oc6qCPxDTekM5jaxU0cvXL+dylATkz1y
 TcOgqdodO/DAf+f2GI7DkNr3oFFSXmnhPwcwKdIW83lOA6Ke9Vq8/UcEo
 J10/z2kXHSqF0jFW+3yzB66CC6WTxcD3swp1npnDs+e1jXynPxhIp7RBK
 2ktyN7V8+6J1HInzS5BpzCpJFv3Qm0RGt5woIJDX3Zxdq1DHn5wa3TJ0N Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="286537481"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="286537481"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 08:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="661961960"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="661961960"
Received: from lkp-server01.sh.intel.com (HELO 8381f64adc98) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 18 Oct 2022 08:45:45 -0700
Received: from kbuild by 8381f64adc98 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1okomm-0001nE-16;
 Tue, 18 Oct 2022 15:45:44 +0000
Date: Tue, 18 Oct 2022 23:45:39 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <634eca23.ML3KLI/hjp2jt28w%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree/branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 master branch HEAD: 4ca786ae6681b90b0ec3f4c55c89d12f835f8944 Add linux-next
 specific files for 20221018 Error/Warning reports: 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 01.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1okomx-008XHg-MS
Subject: [Jfs-discussion] [linux-next:master] BUILD REGRESSION
 4ca786ae6681b90b0ec3f4c55c89d12f835f8944
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Linux Memory Management List <linux-mm@kvack.org>,
 linux-ext4@vger.kernel.org, ntfs3@lists.linux.dev,
 jfs-discussion@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 4ca786ae6681b90b0ec3f4c55c89d12f835f8944  Add linux-next specific files for 20221018

Error/Warning reports:

https://lore.kernel.org/linux-doc/202210070057.NpbaMyxB-lkp@intel.com
https://lore.kernel.org/linux-mm/202210090954.pTR6m6rj-lkp@intel.com
https://lore.kernel.org/linux-mm/202210110857.9s0tXVNn-lkp@intel.com
https://lore.kernel.org/linux-mm/202210111318.mbUfyhps-lkp@intel.com
https://lore.kernel.org/llvm/202210181318.WUNV3QRv-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

ERROR: modpost: "devm_ioremap_resource" [drivers/dma/idma64.ko] undefined!
ERROR: modpost: "devm_ioremap_resource" [drivers/dma/qcom/hdma.ko] undefined!
Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/mtd/amlogic,meson-nand.txt
arch/arm64/kernel/alternative.c:199:6: warning: no previous prototype for 'apply_alternatives_vdso' [-Wmissing-prototypes]
arch/arm64/kernel/alternative.c:295:14: warning: no previous prototype for 'alt_cb_patch_nops' [-Wmissing-prototypes]
fs/ext4/super.c:1744:19: warning: 'deprecated_msg' defined but not used [-Wunused-const-variable=]
grep: smatch_trinity_*: No such file or directory
mm/mmap.c:802 __vma_adjust() error: uninitialized symbol 'next_next'.

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm64-alldefconfig
|   |-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-alt_cb_patch_nops
|   `-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-apply_alternatives_vdso
|-- arm64-allyesconfig
|   |-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-alt_cb_patch_nops
|   `-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-apply_alternatives_vdso
|-- arm64-randconfig-c034-20221018
|   |-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-alt_cb_patch_nops
|   `-- arch-arm64-kernel-alternative.c:warning:no-previous-prototype-for-apply_alternatives_vdso
|-- i386-allyesconfig
|   `-- fs-ext4-super.c:warning:deprecated_msg-defined-but-not-used
|-- i386-defconfig
|   `-- fs-ext4-super.c:warning:deprecated_msg-defined-but-not-used
|-- i386-randconfig-a003-20221017
|   `-- fs-ext4-super.c:warning:deprecated_msg-defined-but-not-used
|-- loongarch-randconfig-s053-20221018
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-int-priv1-got-restricted-__le16-addressable-usertype-fc_len
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-int-tag-got-restricted-__le16-addressable-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-unsigned-short-usertype-tag-got-restricted-__le16-addressable-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-assignment-(different-base-types)-expected-restricted-__le16-usertype-fc_len-got-unsigned-short-usertype
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-assignment-(different-base-types)-expected-restricted-__le16-usertype-fc_tag-got-unsigned-short-usertype
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-initializer-(different-base-types)-expected-int-tag-got-restricted-__le16-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:restricted-__le16-degrades-to-integer
|   |-- fs-ntfs3-index.c:sparse:sparse:restricted-__le32-degrades-to-integer
|   |-- fs-ntfs3-namei.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-restricted-__le16-const-usertype-s1-got-unsigned-short
|   `-- fs-ntfs3-namei.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-restricted-__le16-const-usertype-s2-got-unsigned-short
|-- microblaze-randconfig-s031-20221018
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-int-priv1-got-restricted-__le16-addressable-usertype-fc_len
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-int-tag-got-restricted-__le16-addressable-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-unsigned-short-usertype-tag-got-restricted-__le16-addressable-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-assignment-(different-base-types)-expected-restricted-__le16-usertype-fc_len-got-unsigned-short-usertype
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-assignment-(different-base-types)-expected-restricted-__le16-usertype-fc_tag-got-unsigned-short-usertype
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-initializer-(different-base-types)-expected-int-tag-got-restricted-__le16-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:restricted-__le16-degrades-to-integer
|   |-- fs-ntfs3-index.c:sparse:sparse:restricted-__le32-degrades-to-integer
|   |-- fs-ntfs3-namei.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-restricted-__le16-const-usertype-s1-got-unsigned-short
|   `-- fs-ntfs3-namei.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-restricted-__le16-const-usertype-s2-got-unsigned-short
|-- nios2-randconfig-m041-20221018
|   |-- grep:smatch_trinity_:No-such-file-or-directory
|   `-- mm-mmap.c-__vma_adjust()-error:uninitialized-symbol-next_next-.
|-- nios2-randconfig-s051-20221018
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-int-priv1-got-restricted-__le16-addressable-usertype-fc_len
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-int-tag-got-restricted-__le16-addressable-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-unsigned-short-usertype-tag-got-restricted-__le16-addressable-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-assignment-(different-base-types)-expected-restricted-__le16-usertype-fc_len-got-unsigned-short-usertype
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-assignment-(different-base-types)-expected-restricted-__le16-usertype-fc_tag-got-unsigned-short-usertype
|   |-- fs-ext4-fast_commit.c:sparse:sparse:incorrect-type-in-initializer-(different-base-types)-expected-int-tag-got-restricted-__le16-usertype-fc_tag
|   |-- fs-ext4-fast_commit.c:sparse:sparse:restricted-__le16-degrades-to-integer
|   |-- fs-ntfs3-index.c:sparse:sparse:restricted-__le32-degrades-to-integer
|   |-- fs-ntfs3-namei.c:sparse:sparse:incorrect-type-in-argument-(different-base-types)-expected-restricted-__le16-const-usertype-s1-got-unsigned-short
clang_recent_errors
|-- arm64-randconfig-r011-20221017
|   `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|-- arm64-randconfig-r024-20221017
|   `-- fs-ntfs3-namei.c:warning:variable-uni1-is-used-uninitialized-whenever-if-condition-is-true
|-- hexagon-randconfig-r023-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   `-- fs-ntfs3-namei.c:warning:variable-uni1-is-used-uninitialized-whenever-if-condition-is-true
|-- hexagon-randconfig-r041-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   |-- fs-jfs-jfs_dmap.c:warning:result-of-comparison-of-constant-with-expression-of-type-int-is-always-false
|   `-- fs-ntfs3-namei.c:warning:variable-uni1-is-used-uninitialized-whenever-if-condition-is-true
|-- i386-randconfig-a013-20221017
|   `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|-- i386-randconfig-a014-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   |-- fs-jfs-jfs_dmap.c:warning:result-of-comparison-of-constant-with-expression-of-type-int-is-always-false
|   `-- fs-ntfs3-namei.c:warning:variable-uni1-is-used-uninitialized-whenever-if-condition-is-true
|-- i386-randconfig-a016-20221017
|   `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|-- mips-randconfig-r005-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   |-- fs-jfs-jfs_dmap.c:warning:result-of-comparison-of-constant-with-expression-of-type-int-is-always-false
|   `-- fs-ntfs3-namei.c:warning:variable-uni1-is-used-uninitialized-whenever-if-condition-is-true
|-- powerpc-akebono_defconfig
|   `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|-- powerpc-powernv_defconfig
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   `-- fs-jfs-jfs_dmap.c:warning:result-of-comparison-of-constant-with-expression-of-type-int-is-always-false
|-- powerpc-randconfig-r015-20221017
|   `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|-- riscv-randconfig-r042-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   `-- fs-jfs-jfs_dmap.c:warning:result-of-comparison-of-constant-with-expression-of-type-int-is-always-false
|-- riscv-rv32_defconfig
|   `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|-- s390-randconfig-r044-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   `-- fs-ntfs3-namei.c:warning:variable-uni1-is-used-uninitialized-whenever-if-condition-is-true
|-- x86_64-randconfig-a011-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   `-- fs-jfs-jfs_dmap.c:warning:result-of-comparison-of-constant-with-expression-of-type-int-is-always-false
|-- x86_64-randconfig-a012-20221017
|   `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|-- x86_64-randconfig-a016-20221017
|   |-- fs-ext4-super.c:warning:unused-variable-deprecated_msg
|   `-- fs-ntfs3-namei.c:warning:variable-uni1-is-used-uninitialized-whenever-if-condition-is-true
`-- x86_64-rhel-8.3-rust
    `-- fs-ext4-super.c:warning:unused-variable-deprecated_msg

elapsed time: 727m

configs tested: 78
configs skipped: 3

gcc tested configs:
um                             i386_defconfig
i386                                defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
arm                                 defconfig
i386                             allyesconfig
x86_64               randconfig-a002-20221017
x86_64                           allyesconfig
x86_64               randconfig-a003-20221017
i386                 randconfig-a004-20221017
x86_64               randconfig-a004-20221017
x86_64                          rhel-8.3-func
arm64                            allyesconfig
x86_64               randconfig-a001-20221017
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a001-20221017
x86_64               randconfig-a006-20221017
arc                                 defconfig
x86_64               randconfig-a005-20221017
powerpc                           allnoconfig
i386                 randconfig-a006-20221017
s390                             allmodconfig
i386                 randconfig-a002-20221017
alpha                               defconfig
arc                  randconfig-r043-20221017
i386                 randconfig-a003-20221017
x86_64                           rhel-8.3-syz
s390                                defconfig
i386                 randconfig-a005-20221017
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
sh                               allmodconfig
s390                             allyesconfig
x86_64                           rhel-8.3-kvm
mips                             allyesconfig
arc                              allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
ia64                             allmodconfig
arm                            pleb_defconfig
microblaze                          defconfig
arm                          exynos_defconfig
arm                        clps711x_defconfig
arm                           sama5_defconfig
arc                        nsim_700_defconfig
arm64                            alldefconfig
mips                           jazz_defconfig
mips                  maltasmvp_eva_defconfig
arc                        nsimosci_defconfig
arm                         lpc18xx_defconfig
sh                          rsk7264_defconfig
powerpc                     asp8347_defconfig
sh                             shx3_defconfig

clang tested configs:
hexagon              randconfig-r045-20221017
hexagon              randconfig-r041-20221017
x86_64               randconfig-a013-20221017
x86_64               randconfig-a014-20221017
i386                 randconfig-a011-20221017
x86_64               randconfig-a012-20221017
i386                 randconfig-a013-20221017
riscv                randconfig-r042-20221017
x86_64               randconfig-a015-20221017
i386                 randconfig-a012-20221017
x86_64               randconfig-a016-20221017
i386                 randconfig-a014-20221017
s390                 randconfig-r044-20221017
x86_64               randconfig-a011-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a015-20221017
x86_64                          rhel-8.3-rust
hexagon                          alldefconfig
powerpc                  mpc885_ads_defconfig
powerpc                     akebono_defconfig
powerpc                     powernv_defconfig
riscv                          rv32_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
