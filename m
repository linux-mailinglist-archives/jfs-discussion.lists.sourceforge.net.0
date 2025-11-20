Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26410C751EF
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Nov 2025 16:50:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GLWLh2GCwbP+ZJH50Kp1tidWeCUTsSRBneECertZlQE=; b=HkQKaz59C+is6cpcmZbxfEgUF/
	UsxE74jJ2iWEP1LUDOn3oAmbrlzUZsTRfsphkqTI4jHPigK5P+fX0Mjw7pz9meiVwQs7SjeStNgqx
	05Ri+zeRwWgc6w5SF9d756iXVcn8c7ijun54ZRtXuARAJwGSMiwYg0mSzN2YX9fBe66Y=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vM6ps-0007St-Mk;
	Thu, 20 Nov 2025 15:44:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=34190f787f=yun.zhou@windriver.com>)
 id 1vM6pl-0007Si-Pu for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oYqkXRL+PfeExYTXNOBjBI8PgndG/4z4v6At+kPQoxU=; b=hgLADeKvUGnL6If0P99YqMbRu3
 jfT4xPmw+mOKNNHs/GKEhO+ow1V/yoNUOJz9VAF8GzhZwqcMjxXgg4BKGGYIhgeNZ2rEsV+OydjHt
 +2XDwbBfI5iEsyMT08vt+G+RHApvmrcdeVQqF5KHzWeWTquwBPKsxpe5YyAe0ljX1flE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oYqkXRL+PfeExYTXNOBjBI8PgndG/4z4v6At+kPQoxU=; b=E
 3efP9U7iSVsnqlYy/PBDhQRmUDXeY0P7qlNNoNZwYonVlUvat1CtI1IgTcFRbuffowfDApgeMaYQ6
 012nZbUCLFJZAPTTZmHfYV+/paznPrBrMNAvKtLuFbY4m7DUxC294VbVs0ovbeFFFy/orYZICl0MO
 YRKDXAS57QkY7rGI=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vM6pj-0002MJ-UY for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Nov 2025 15:44:33 +0000
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5AKC7S0g2707645; Thu, 20 Nov 2025 15:43:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :message-id:mime-version:subject:to; s=PPS06212021; bh=oYqkXRL+P
 feExYTXNOBjBI8PgndG/4z4v6At+kPQoxU=; b=TE4JX8ilJAax3/PS6sEmQaS2O
 pbPLyKjtsQHUaZUb15LZoJTTgyIOdf6Menjyo6MtkOeM0mxc4nCXTWHqXlHrhNAB
 nD8UfZ0GhK6W9dDFXrEbR4mzMF08RV+RE/LXewmcY7vyizslT+lO/1++1q0GuiDS
 i6EnMN8vpwpunwA3Cq36Ifw8aj88OfPQFpj9PoNogzIpHEENc+NuZ8hopuOVup3f
 JUChrh4yF+Vr3Ji8NJfzngDilx/r8LHK3jtE98X30+8FsZAKpp5wQ+q3bThz7ls5
 9zcrgStFAweDZV0/y78ImQNOJwtqjy+x9VifWLw8iCl5lF94p/4y+wxZIVKhw==
Received: from ala-exchng01.corp.ad.wrs.com ([128.224.246.36])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4ahrs3rsxt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 20 Nov 2025 15:43:43 +0000 (GMT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Thu, 20 Nov 2025 07:43:42 -0800
Received: from pek-lpd-ccm6.wrs.com (10.11.232.110) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Thu, 20 Nov 2025 07:43:39 -0800
To: <shaggy@kernel.org>
Date: Thu, 20 Nov 2025 23:43:39 +0800
Message-ID: <20251120154339.1040921-1-yun.zhou@windriver.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDEwMyBTYWx0ZWRfX3n92KMLA2pO4
 3fVO7XjJ4nFNROVoUAatt6IOO8J3Bf2USvfaj51YbOCH7aUqb8bFCKRwZFAIDASIAgg2htGK98k
 YWp3XtW/MfUAmP7o96nMlVHQxLFDIEHGG5Z+w2FD/eXaZaDflxO+zKznnAaUvaFfoRMWfm1ArMG
 ej5vlp3sUc1YBUrd3RL46KpfXpaqwNx0uix3MIqpnCnCSnXTmKNFyi6e7fHbEgiCivdYe7eFBpu
 o96VMvKcSvxmOT2gaAe+SVaNPgtl7Z6f2XPPTlMq1p1oVDADiXWKXfMUqkbsTSTCGxoT71bZ/Fk
 mhS86yy6Xsw79Yx8F+UBjg4bu8lw3DSy4ZjZ/k+j2zWegz8TOvPAsAMz5b+J8VguObZijtZPYgW
 BI9kAgdAz+q3le5JgGzyn3rk+jBK9Q==
X-Proofpoint-GUID: VE3e9IDeFzSsOBhVKeAHFraJnGmS3XLv
X-Proofpoint-ORIG-GUID: VE3e9IDeFzSsOBhVKeAHFraJnGmS3XLv
X-Authority-Analysis: v=2.4 cv=f61FxeyM c=1 sm=1 tr=0 ts=691f372f cx=c_pps
 a=AbJuCvi4Y3V6hpbCNWx0WA==:117 a=AbJuCvi4Y3V6hpbCNWx0WA==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=hSkVLCK3AAAA:8 a=t7CeM3EgAAAA:8
 a=-lmd2F46pomHXW6Z4rUA:9 a=cQPPKAXgyycSBL8etih5:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_05,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 clxscore=1011 suspectscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200103
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  This patch adds checks to ensure that the line lock index
 (dtlck->index, rdtlck->index,
 etc.) does not exceed the maximum allowed count(maxcnt)
 before accessing the lock's lv array. When the line lock index reaches or
 exceeds maxcnt, direct access to lv[index] would cause an array index overflow.
 To prevent this, we check if the index is out of bounds and, if so, call
 txLinelock( [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.178.238 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vM6pj-0002MJ-UY
Subject: [Jfs-discussion] [PATCH] jfs: add linelock->index boundary check
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
 eadavis@qq.com, linux-kernel@vger.kernel.org, kovalev@altlinux.org,
 contact@arnaud-lcm.com, zheng.yu@northwestern.edu, rand.sec96@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This patch adds checks to ensure that the line lock index (dtlck->index,
rdtlck->index, etc.) does not exceed the maximum allowed count(maxcnt)
before accessing the lock's lv array.

When the line lock index reaches or exceeds maxcnt, direct access to
lv[index] would cause an array index overflow. To prevent this, we check
if the index is out of bounds and, if so, call txLinelock() to extend
the lock structure, ensuring valid access to the lv array.

The checks are added in critical sections where line lock entries are
modified or accessed, including:
 - dtSplitPage() in jfs_dtree.c (both for left and right sibling pages)
 - dtExtendPage() in jfs_dtree.c
 - dtMoveEntry() in jfs_dtree.c (for source and destination locks)
 - diWrite() in jfs_imap.c (for inode inline symlink, extended
   attributes, and base inode data)

This prevents potential out-of-bounds memory accesses and improves the
stability of JFS's transactional line locking mechanism.

This fixes the following Oops reported by syzkaller.

[  261.432595][ T5998] Oops: general protection fault, probably for non-canonical address 0xdffffc0000000005: 0000 [#1] SMP KASAN PTI
[  261.432605][ T5998] KASAN: null-ptr-deref in range [0x0000000000000028-0x000000000000002f]
[  261.432614][ T5998] CPU: 2 UID: 0 PID: 5998 Comm: 9489c9f9f3d4372 Tainted: G            E       6.18.0-rc4-00248-g439fc29dfd3b #113 PREEMPT_{RT,(full)}
[  261.432624][ T5998] Tainted: [E]=UNSIGNED_MODULE
[  261.432626][ T5998] Hardware name: QEMU Ubuntu 25.04 PC (i440FX + PIIX, 1996), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
[  261.432630][ T5998] RIP: 0010:txCommit+0xafb/0x5430 [jfs]
[  261.432715][ T5998] Code: 3c 10 00 74 12 4c 89 f7 e8 92 92 b8 e1 48 ba 00 00 00 00 00 fc ff df 4c 89 74 24 68 4d 8b 36 4d 8d 7e 28 4c 89 f8 48 c1 e8 03 <80> 3c 10 00 74 12 4c 89 ff e8 67 92 b8 e1 48 ba 00 00 00 00c
[  261.432721][ T5998] RSP: 0018:ffffc900047e74e0 EFLAGS: 00010206
[  261.432728][ T5998] RAX: 0000000000000005 RBX: 0000000000000948 RCX: 1ffff92000a3a348
[  261.432732][ T5998] RDX: dffffc0000000000 RSI: 0000000000000000 RDI: 0000000000000000
[  261.432737][ T5998] RBP: ffffc900047e76b0 R08: 0000000000000000 R09: 0000000000000000
[  261.432741][ T5998] R10: dffffc0000000000 R11: fffffbfff1d6ab2f R12: 0000000000000002
[  261.432745][ T5998] R13: ffffc900051cd000 R14: 0000000000000000 R15: 0000000000000028
[  261.432749][ T5998] FS:  00007f569ce8f6c0(0000) GS:ffff888127123000(0000) knlGS:0000000000000000
[  261.432754][ T5998] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  261.432759][ T5998] CR2: 00007f1f3862f000 CR3: 0000000036cdc000 CR4: 00000000000006f0
[  261.432765][ T5998] Call Trace:
[  261.432768][ T5998]  <TASK>
[  261.432774][ T5998]  ? __pfx_txCommit+0x10/0x10 [jfs]
[  261.432855][ T5998]  ? rcu_is_watching+0x15/0xb0
[  261.432873][ T5998]  ? __mark_inode_dirty+0x3d2/0xe10
[  261.432882][ T5998]  jfs_create+0x865/0xa80 [jfs]
[  261.432964][ T5998]  ? __pfx_jfs_create+0x10/0x10 [jfs]
[  261.433044][ T5998]  ? __pfx_jfs_lookup+0x10/0x10 [jfs]
[  261.433127][ T5998]  ? generic_permission+0x2e5/0x690
[  261.433139][ T5998]  ? bpf_lsm_inode_create+0x9/0x20
[  261.433148][ T5998]  ? __pfx_jfs_create+0x10/0x10 [jfs]
[  261.433229][ T5998]  path_openat+0x1500/0x3840
[  261.433240][ T5998]  ? __pfx_path_openat+0x10/0x10
[  261.433249][ T5998]  ? _raw_spin_unlock_irqrestore+0x85/0x110
[  261.433263][ T5998]  ? lockdep_hardirqs_on+0x9c/0x150
[  261.433272][ T5998]  ? _raw_spin_unlock_irqrestore+0xad/0x110
[  261.433282][ T5998]  do_filp_open+0x1fa/0x410
[  261.433289][ T5998]  ? __pfx_do_filp_open+0x10/0x10
[  261.433296][ T5998]  ? rt_mutex_slowunlock+0x493/0x8a0
[  261.433307][ T5998]  ? alloc_fd+0x64f/0x6c0
[  261.433318][ T5998]  do_sys_openat2+0x121/0x1c0
[  261.433325][ T5998]  ? __pfx_do_sys_openat2+0x10/0x10
[  261.433332][ T5998]  ? __pfx___se_sys_futex+0x10/0x10
[  261.433340][ T5998]  __x64_sys_creat+0x8f/0xc0
[  261.433347][ T5998]  do_syscall_64+0xfa/0xfa0
[  261.433356][ T5998]  ? lockdep_hardirqs_on+0x9c/0x150
[  261.433365][ T5998]  ? entry_SYSCALL_64_after_hwframe+0x77/0x7f
[  261.433372][ T5998]  ? exc_page_fault+0xab/0x100
[  261.433380][ T5998]  entry_SYSCALL_64_after_hwframe+0x77/0x7f

Reported-by: syzbot+9489c9f9f3d437221ea2@syzkaller.appspotmail.com
Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
---
 fs/jfs/jfs_dtree.c | 19 +++++++++++++++++++
 fs/jfs/jfs_imap.c  |  9 +++++++++
 2 files changed, 28 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 0ab83bb7bbdf..d9cf2071c41f 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -1440,6 +1440,9 @@ static int dtSplitPage(tid_t tid, struct inode *ip, struct dtsplit * split,
 	 * but it's not. Be my guest.)
 	 */
 	if (nextbn == 0 && split->index == sp->header.nextindex) {
+		/* open new linelock */
+		if (unlikely(rdtlck->index >= rdtlck->maxcnt))
+			rdtlck = txLinelock(rdtlck);
 		/* linelock header + stbl (first slot) of new page */
 		rlv = & rdtlck->lv[rdtlck->index];
 		rlv->offset = 0;
@@ -1483,6 +1486,10 @@ static int dtSplitPage(tid_t tid, struct inode *ip, struct dtsplit * split,
 			tlck, ip, mp);
 		dtlck = (struct dt_lock *) & tlck->lock;
 
+		/* open new linelock */
+		if (unlikely(dtlck->index >= dtlck->maxcnt))
+			dtlck = txLinelock(dtlck);
+
 		/* linelock header of previous right sibling page */
 		lv = & dtlck->lv[dtlck->index];
 		lv->offset = 0;
@@ -1552,6 +1559,9 @@ static int dtSplitPage(tid_t tid, struct inode *ip, struct dtsplit * split,
 	 * split page moved out entries are linelocked;
 	 * new/right page moved in entries are linelocked;
 	 */
+	/* open new linelock */
+	if (unlikely(rdtlck->index >= rdtlck->maxcnt))
+		rdtlck = txLinelock(rdtlck);
 	/* linelock header + stbl of new right page */
 	rlv = & rdtlck->lv[rdtlck->index];
 	rlv->offset = 0;
@@ -1834,6 +1844,9 @@ static int dtExtendPage(tid_t tid,
 	 */
 	tlck = txLock(tid, ip, pmp, tlckDTREE | tlckENTRY);
 	dtlck = (struct dt_lock *) & tlck->lock;
+	/* open new linelock */
+	if (unlikely(dtlck->index >= dtlck->maxcnt))
+		dtlck = txLinelock(dtlck);
 	lv = & dtlck->lv[dtlck->index];
 
 	/* linelock parent entry - 1st slot */
@@ -3809,10 +3822,16 @@ static void dtMoveEntry(dtpage_t * sp, int si, dtpage_t * dp,
 	sfsi = sp->header.freelist;
 
 	/* linelock destination entry slot */
+	/* open new linelock */
+	if (unlikely(ddtlck->index >= ddtlck->maxcnt))
+		ddtlck = txLinelock(ddtlck);
 	dlv = & ddtlck->lv[ddtlck->index];
 	dlv->offset = dsi;
 
 	/* linelock source entry slot */
+	/* open new linelock */
+	if (unlikely(sdtlck->index >= sdtlck->maxcnt))
+		sdtlck = txLinelock(sdtlck);
 	slv = & sdtlck->lv[sdtlck->index];
 	slv->offset = sstbl[si];
 	xssi = slv->offset - 1;
diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index ecb8e05b8b84..194cb05b42b9 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -762,6 +762,9 @@ int diWrite(tid_t tid, struct inode *ip)
 	 * copy inline symlink from in-memory inode to on-disk inode
 	 */
 	if (S_ISLNK(ip->i_mode) && ip->i_size < IDATASIZE) {
+		/* open new linelock */
+		if (unlikely(dilinelock->index >= dilinelock->maxcnt))
+			dilinelock = txLinelock(dilinelock);
 		lv = & dilinelock->lv[dilinelock->index];
 		lv->offset = (dioffset + 2 * 128) >> L2INODESLOTSIZE;
 		lv->length = 2;
@@ -773,6 +776,9 @@ int diWrite(tid_t tid, struct inode *ip)
 	 * 128 byte slot granularity
 	 */
 	if (test_cflag(COMMIT_Inlineea, ip)) {
+		/* open new linelock */
+		if (unlikely(dilinelock->index >= dilinelock->maxcnt))
+			dilinelock = txLinelock(dilinelock);
 		lv = & dilinelock->lv[dilinelock->index];
 		lv->offset = (dioffset + 3 * 128) >> L2INODESLOTSIZE;
 		lv->length = 1;
@@ -785,6 +791,9 @@ int diWrite(tid_t tid, struct inode *ip)
 	/*
 	 *	lock/copy inode base: 128 byte slot granularity
 	 */
+	/* open new linelock */
+	if (unlikely(dilinelock->index >= dilinelock->maxcnt))
+		dilinelock = txLinelock(dilinelock);
 	lv = & dilinelock->lv[dilinelock->index];
 	lv->offset = dioffset >> L2INODESLOTSIZE;
 	copy_to_dinode(dp, ip);
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
