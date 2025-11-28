Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 178C1C927BE
	for <lists+jfs-discussion@lfdr.de>; Fri, 28 Nov 2025 16:53:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=edfaBU43iFrN7gsLBxM2/1sTSWHszFe/KPx3oTkcPyc=; b=IMyjyj/ICIR53lT/VNLLN6VfqU
	p1BQLhgohCMtY/JHye3dFxhdLu4Q9UY2x/ViQIgCNNFfQKSZ1ySYBnY37BJzZF+IK5qGcop0BQYd2
	jbp/s2jxEMxCVccCz20DJNTnV7Us/AmBTOlLZ8C1BXDzLqb+moyY5nB3KNFczgxKE1Wk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vP0mS-0003Dw-6r;
	Fri, 28 Nov 2025 15:53:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=442756d65e=yun.zhou@windriver.com>)
 id 1vP0mP-0003Dm-72 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Nov 2025 15:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FonsJWLc+Z9vgYScMr5gzm/H1tWIKcTpJv+zdq/u9+U=; b=fum6nV+IKE4S1T5wxb3z4t7Cxg
 mo1n3lMJ5I9qvlwpfS+HVbNtAawpYHTmq1bG/B0hdZveMPRy93M+5mXhQL3ARwGCS0QAsvT5hMCDP
 AtSfShKwcgUKomu6ah+pYMoR1RfCcGL5RV7o1lpw9kX77n+FsIvvLkQzMv913suVJ/c4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FonsJWLc+Z9vgYScMr5gzm/H1tWIKcTpJv+zdq/u9+U=; b=i
 L94EhQFs5KRwulTcEBsyyK/EP1IhNRP4CjZ/tGYFU3wj00kOXV/BFhzPFlijA/zIiX9de0LOCKu2Q
 aGFSwAQzAkj+41H6jVDfZWLw/e4ZIret5U5RIHlf2QK66z2Oq8bCRyXIM0ixnWXJWy9FnCm7HWnE0
 81yyITG5QFgUNd/k=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vP0mO-0004vH-98 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Nov 2025 15:53:05 +0000
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5ASEsRX8146095; Fri, 28 Nov 2025 15:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :message-id:mime-version:subject:to; s=PPS06212021; bh=FonsJWLc+
 Z9vgYScMr5gzm/H1tWIKcTpJv+zdq/u9+U=; b=RjG5Bs8uw/akG56se0Ibx5iM5
 Gpm6Ft7j06c1ZyMk7x1Sn9qkFpxf+Rye6ns1881mwlyQDMjRg5hD9hBWD2MHVxZp
 8IMbz94f28dIVN6U4dw643eMB3DvGyl7egdrWfIuiZeu1/Hi70gMstWaC7wgx3Bc
 KAkPjmhk2diHDS2OqL6iCrLMxQuW2WC3GCJuZOsiL+PM00J5ezoM3T11Gc+lZw2Z
 aWhX7iYhFcbX/qTocHyUajd2fCYNBaivsjh/1BxVe0A+DcSIkgWkJPJ2/SRc7NLp
 sBytHOFc3PoAbd0AcReiLmJ7cU2FAZPxmFSncjKNFdYaArcYa3gjUN8wV4IOQ==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4ak455q1wc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 28 Nov 2025 15:51:54 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (10.11.224.121) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Fri, 28 Nov 2025 07:51:53 -0800
Received: from c38b02c5ee49.wrs.com (10.11.232.110) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Fri, 28 Nov 2025 07:51:51 -0800
To: <lilingfeng3@huawei.com>, <shaggy@kernel.org>
Date: Fri, 28 Nov 2025 23:51:50 +0800
Message-ID: <20251128155150.1493986-1-yun.zhou@windriver.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: AHTAK1qYFOUMihEKZnmK87Zs4g48wJdP
X-Proofpoint-GUID: AHTAK1qYFOUMihEKZnmK87Zs4g48wJdP
X-Authority-Analysis: v=2.4 cv=T6eBjvKQ c=1 sm=1 tr=0 ts=6929c51a cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=hSkVLCK3AAAA:8 a=t7CeM3EgAAAA:8
 a=3JtE_UQzxUXlF2KlCTMA:9 a=cQPPKAXgyycSBL8etih5:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDExNiBTYWx0ZWRfX5PVtfQVE/wzf
 uYgbOb79qucVK5Nfe9hSoj6JnRD5D5+l1XxiMaVqSb0XHkdqNAy5rMvudhyUQnoBCfKKUJObUIO
 RZtpxwKhizUL6fewkRk3eOQLLpjBHWTRhzVWWPppeahdlGLldq79E7BfJbYHePT/dDWOiJnsfjX
 7bWq+/Af5eUfcGx7WOu/A99m4+bpDwsaHpKmmj73EX723WeOMcssZOYiJyGI5hO4ggec+WNnXQe
 cTLZPBEF35H3KJqbDoSpgII7rBVr8UjsROqm9UG7WB+Y81buD9coMxzR0ZE9D0p9hjKdnHTwjqh
 SQWW6gP4d63lpo1e1jy02P875Kj+LUXznTLAsoCjxgmtxjM6641wfjb+m9+X+HiHdDLc1Vk2XM/
 GIiwnQc28bd1+FFWcP29HrtPeYCZDA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280116
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add check_dmapctl() to validate dmapctl structure integrity, 
 focusing on preventing invalid operations caused by on-disk corruption. Key
 checks: - nleafs bounded by [0, LPERCTL] (maximum leaf nodes per dmapctl).
 - l2nleafs bounded by [0, L2LPERCTL] and consistent with nleafs (nleafs must
 be 2^l2nleafs). - leafidx must be exactly CT [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.178.238 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vP0mO-0004vH-98
Subject: [Jfs-discussion] [PATCH v2] jfs: add dmapctl integrity check to
 prevent invalid operations
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
From: Yun Zhou via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Yun Zhou <yun.zhou@windriver.com>
Cc: jfs-discussion@lists.sourceforge.net, yun.zhou@windriver.com,
 linux-kernel@vger.kernel.org, kovalev@altlinux.org, contact@arnaud-lcm.com,
 zheng.yu@northwestern.edu, rand.sec96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Add check_dmapctl() to validate dmapctl structure integrity, focusing on
preventing invalid operations caused by on-disk corruption.

Key checks:
 - nleafs bounded by [0, LPERCTL] (maximum leaf nodes per dmapctl).
 - l2nleafs bounded by [0, L2LPERCTL] and consistent with nleafs
   (nleafs must be 2^l2nleafs).
 - leafidx must be exactly CTLLEAFIND (expected leaf index position).
 - height bounded by [0, L2LPERCTL >> 1] (valid tree height range).
 - budmin validity: NOFREE only if nleafs=0; otherwise >= BUDMIN.
 - Leaf nodes fit within stree array (leafidx + nleafs <= CTLTREESIZE).
 - Leaf node values are either non-negative or NOFREE.

Invoked in dbAllocAG(), dbFindCtl(), dbAdjCtl() and dbExtendFS() when
accessing dmapctl pages, catching corruption early before dmap operations
trigger invalid memory access or logic errors.

This fixes the following UBSAN warning.

[58245.668090][T14017] ------------[ cut here ]------------
[58245.668103][T14017] UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:2641:11
[58245.668119][T14017] shift exponent 110 is too large for 32-bit type 'int'
[58245.668137][T14017] CPU: 0 UID: 0 PID: 14017 Comm: 4c1966e88c28fa9 Tainted: G            E       6.18.0-rc4-00253-g21ce5d4ba045-dirty #124 PREEMPT_{RT,(full)}
[58245.668174][T14017] Tainted: [E]=UNSIGNED_MODULE
[58245.668176][T14017] Hardware name: QEMU Ubuntu 25.04 PC (i440FX + PIIX, 1996), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
[58245.668184][T14017] Call Trace:
[58245.668200][T14017]  <TASK>
[58245.668208][T14017]  dump_stack_lvl+0x189/0x250
[58245.668288][T14017]  ? __pfx_dump_stack_lvl+0x10/0x10
[58245.668301][T14017]  ? __pfx__printk+0x10/0x10
[58245.668315][T14017]  ? lock_metapage+0x303/0x400 [jfs]
[58245.668406][T14017]  ubsan_epilogue+0xa/0x40
[58245.668422][T14017]  __ubsan_handle_shift_out_of_bounds+0x386/0x410
[58245.668462][T14017]  dbSplit+0x1f8/0x200 [jfs]
[58245.668543][T14017]  dbAdjCtl+0x34c/0xa20 [jfs]
[58245.668628][T14017]  dbAllocNear+0x2ee/0x3d0 [jfs]
[58245.668710][T14017]  dbAlloc+0x933/0xba0 [jfs]
[58245.668797][T14017]  ea_write+0x374/0xdd0 [jfs]
[58245.668888][T14017]  ? __pfx_ea_write+0x10/0x10 [jfs]
[58245.668966][T14017]  ? __jfs_setxattr+0x76e/0x1120 [jfs]
[58245.669046][T14017]  __jfs_setxattr+0xa01/0x1120 [jfs]
[58245.669135][T14017]  ? __pfx___jfs_setxattr+0x10/0x10 [jfs]
[58245.669216][T14017]  ? mutex_lock_nested+0x154/0x1d0
[58245.669252][T14017]  ? __jfs_xattr_set+0xb9/0x170 [jfs]
[58245.669333][T14017]  __jfs_xattr_set+0xda/0x170 [jfs]
[58245.669430][T14017]  ? __pfx___jfs_xattr_set+0x10/0x10 [jfs]
[58245.669509][T14017]  ? xattr_full_name+0x6f/0x90
[58245.669546][T14017]  ? jfs_xattr_set+0x33/0x60 [jfs]
[58245.669636][T14017]  ? __pfx_jfs_xattr_set+0x10/0x10 [jfs]
[58245.669726][T14017]  __vfs_setxattr+0x43c/0x480
[58245.669743][T14017]  __vfs_setxattr_noperm+0x12d/0x660
[58245.669756][T14017]  vfs_setxattr+0x16b/0x2f0
[58245.669768][T14017]  ? __pfx_vfs_setxattr+0x10/0x10
[58245.669782][T14017]  filename_setxattr+0x274/0x600
[58245.669795][T14017]  ? __pfx_filename_setxattr+0x10/0x10
[58245.669806][T14017]  ? getname_flags+0x1e5/0x540
[58245.669829][T14017]  path_setxattrat+0x364/0x3a0
[58245.669840][T14017]  ? __pfx_path_setxattrat+0x10/0x10
[58245.669859][T14017]  ? __se_sys_chdir+0x1b9/0x280
[58245.669876][T14017]  __x64_sys_lsetxattr+0xbf/0xe0
[58245.669888][T14017]  do_syscall_64+0xfa/0xfa0
[58245.669901][T14017]  ? lockdep_hardirqs_on+0x9c/0x150
[58245.669913][T14017]  ? entry_SYSCALL_64_after_hwframe+0x77/0x7f
[58245.669927][T14017]  ? exc_page_fault+0xab/0x100
[58245.669937][T14017]  entry_SYSCALL_64_after_hwframe+0x77/0x7f

Reported-by: syzbot+4c1966e88c28fa96e053@syzkaller.appspotmail.com
Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
---
 fs/jfs/jfs_dmap.c | 113 ++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 110 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cdfa699cd7c8..3f1ed82baa3d 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -133,6 +133,92 @@ static const s8 budtab[256] = {
 	2, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, -1
 };
 
+/*
+ * check_dmapctl - Validate integrity of a dmapctl structure
+ * @dcp: Pointer to the dmapctl structure to check
+ *
+ * Return: true if valid, false if corrupted
+ */
+static bool check_dmapctl(struct dmapctl *dcp)
+{
+	s8 budmin = dcp->budmin;
+	u32 nleafs, l2nleafs, leafidx, height;
+	int i;
+
+	nleafs = le32_to_cpu(dcp->nleafs);
+	/* Check basic field ranges */
+	if (unlikely(nleafs > LPERCTL)) {
+		jfs_err("dmapctl: invalid nleafs %u (max %u)",
+			nleafs, LPERCTL);
+		return false;
+	}
+
+	l2nleafs = le32_to_cpu(dcp->l2nleafs);
+	if (unlikely(l2nleafs > L2LPERCTL)) {
+		jfs_err("dmapctl: invalid l2nleafs %u (max %u)",
+			l2nleafs, L2LPERCTL);
+		return false;
+	}
+
+	/* Verify nleafs matches l2nleafs (must be power of two) */
+	if (unlikely((1U << l2nleafs) != nleafs)) {
+		jfs_err("dmapctl: nleafs %u != 2^%u",
+			nleafs, l2nleafs);
+		return false;
+	}
+
+	leafidx = le32_to_cpu(dcp->leafidx);
+	/* Check leaf index matches expected position */
+	if (unlikely(leafidx != CTLLEAFIND)) {
+		jfs_err("dmapctl: invalid leafidx %u (expected %u)",
+			leafidx, CTLLEAFIND);
+		return false;
+	}
+
+	height = le32_to_cpu(dcp->height);
+	/* Check tree height is within valid range */
+	if (unlikely(height > (L2LPERCTL >> 1))) {
+		jfs_err("dmapctl: invalid height %u (max %u)",
+			height, L2LPERCTL >> 1);
+		return false;
+	}
+
+	/* Check budmin is valid (cannot be NOFREE for non-empty tree) */
+	if (budmin == NOFREE) {
+		if (unlikely(nleafs > 0)) {
+			jfs_err("dmapctl: budmin is NOFREE but nleafs %u",
+				nleafs);
+			return false;
+		}
+	} else if (unlikely(budmin < BUDMIN)) {
+		jfs_err("dmapctl: invalid budmin %d (min %d)",
+			budmin, BUDMIN);
+		return false;
+	}
+
+	/* Check leaf nodes fit within stree array */
+	if (unlikely(leafidx + nleafs > CTLTREESIZE)) {
+		jfs_err("dmapctl: leaf range exceeds stree size (end %u > %u)",
+			leafidx + nleafs, CTLTREESIZE);
+		return false;
+	}
+
+	/* Check leaf nodes have valid values */
+	for (i = leafidx; i < leafidx + nleafs; i++) {
+		s8 val = dcp->stree[i];
+		if (unlikely(val < NOFREE)) {
+			jfs_err("dmapctl: invalid leaf value %d at index %d",
+					val, i);
+			return false;
+		} else if (unlikely(val > 31)) {
+			jfs_err("dmapctl: leaf value %d too large at index %d", val, i);
+			return false;
+		}
+	}
+
+	return true;
+}
+
 /*
  * NAME:	dbMount()
  *
@@ -1372,7 +1458,7 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
 	dcp = (struct dmapctl *) mp->data;
 	budmin = dcp->budmin;
 
-	if (dcp->leafidx != cpu_to_le32(CTLLEAFIND)) {
+	if (unlikely(!check_dmapctl(dcp))) {
 		jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page\n");
 		release_metapage(mp);
 		return -EIO;
@@ -1702,7 +1788,7 @@ static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno)
 		dcp = (struct dmapctl *) mp->data;
 		budmin = dcp->budmin;
 
-		if (dcp->leafidx != cpu_to_le32(CTLLEAFIND)) {
+		if (unlikely(!check_dmapctl(dcp))) {
 			jfs_error(bmp->db_ipbmap->i_sb,
 				  "Corrupt dmapctl page\n");
 			release_metapage(mp);
@@ -2485,7 +2571,7 @@ dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
 		return -EIO;
 	dcp = (struct dmapctl *) mp->data;
 
-	if (dcp->leafidx != cpu_to_le32(CTLLEAFIND)) {
+	if (unlikely(!check_dmapctl(dcp))) {
 		jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page\n");
 		release_metapage(mp);
 		return -EIO;
@@ -3454,6 +3540,11 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
 		return -EIO;
 	}
 	l2dcp = (struct dmapctl *) l2mp->data;
+	if (unlikely(!check_dmapctl(l2dcp))) {
+		jfs_error(ipbmap->i_sb, "Corrupt dmapctl page\n");
+		release_metapage(l2mp);
+		return -EIO;
+	}
 
 	/* compute start L1 */
 	k = blkno >> L2MAXL1SIZE;
@@ -3471,6 +3562,10 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
 			if (l1mp == NULL)
 				goto errout;
 			l1dcp = (struct dmapctl *) l1mp->data;
+			if (unlikely(!check_dmapctl(l1dcp))) {
+				jfs_error(ipbmap->i_sb, "Corrupt dmapctl page\n");
+				goto errout;
+			}
 
 			/* compute start L0 */
 			j = (blkno & (MAXL1SIZE - 1)) >> L2MAXL0SIZE;
@@ -3484,6 +3579,10 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
 				goto errout;
 
 			l1dcp = (struct dmapctl *) l1mp->data;
+			if (unlikely(!check_dmapctl(l1dcp))) {
+				jfs_error(ipbmap->i_sb, "Corrupt dmapctl page\n");
+				goto errout;
+			}
 
 			/* compute start L0 */
 			j = 0;
@@ -3503,6 +3602,10 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
 				if (l0mp == NULL)
 					goto errout;
 				l0dcp = (struct dmapctl *) l0mp->data;
+				if (unlikely(!check_dmapctl(l0dcp))) {
+					jfs_error(ipbmap->i_sb, "Corrupt dmapctl page\n");
+					goto errout;
+				}
 
 				/* compute start dmap */
 				i = (blkno & (MAXL0SIZE - 1)) >>
@@ -3518,6 +3621,10 @@ int dbExtendFS(struct inode *ipbmap, s64 blkno,	s64 nblocks)
 					goto errout;
 
 				l0dcp = (struct dmapctl *) l0mp->data;
+				if (unlikely(!check_dmapctl(l0dcp))) {
+					jfs_error(ipbmap->i_sb, "Corrupt dmapctl page\n");
+					goto errout;
+				}
 
 				/* compute start dmap */
 				i = 0;
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
