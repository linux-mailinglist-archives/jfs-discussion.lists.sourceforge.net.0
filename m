Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1990C40888
	for <lists+jfs-discussion@lfdr.de>; Fri, 07 Nov 2025 16:08:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I4+QCCicr7lZaGbqrnSt3o6OolB1INHrl7u21hVx4Xs=; b=inSgRQFcXMKUfeRc/+adB8sbTv
	+NMphcw8xmC9etEckbinI+gecluMqFScGIrRE+AvcB3U694PoyDz36ljGe5znkjXOM+MmAQPUg31U
	jgbTLi4NjR617H1b85wgqkceuZfGHSsUS68y9LJ9eZ90uD5saWV403OXUM3Bfx0BLZPA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHO3y-000269-PW;
	Fri, 07 Nov 2025 15:07:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=34069cb5d0=yun.zhou@windriver.com>)
 id 1vHJLl-0003a0-KP for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 10:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z53Dcit96A4Vx/iJkKtUsMc6Gj9F/f+ZomBiULdfmRw=; b=A7GvkJCrIJdh3DcvMwhl88qaBV
 H4mLbrg0fI2CLOjVc3o/NEtWfjMLUWU5a70DXXYZw+JRf1zPmJ1QGwE2bAbNCsfvQdCQnc20iMGyY
 fGu2qcLI0Fg+PsO01fxrLhHxLFc+jHRJ3xneWzMbFARDqXAbXLJWCdQuY4oz9MNBgIoc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=z53Dcit96A4Vx/iJkKtUsMc6Gj9F/f+ZomBiULdfmRw=; b=d
 ZUROXAeQ8nohyThdiTyYsmhJNt2OAEFelhDsrrbAFnkUJRvlBefeyHiV21pUDmmwvHU5rS164wb4P
 DSLRDCfzIKc66gGd9MrMaQqOQL/x3VrfdGlaZs70EwTnfVKlmHrMoe5Uyi/cTHuMcW+KZunGNkE5m
 abw9NqRHQYbGrgaI=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vHJLi-0004RT-Cw for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 10:05:45 +0000
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 5A77ur8R3483764; Fri, 7 Nov 2025 09:45:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=cc:content-transfer-encoding:content-type:date:from
 :message-id:mime-version:subject:to; s=PPS06212021; bh=z53Dcit96
 A4Vx/iJkKtUsMc6Gj9F/f+ZomBiULdfmRw=; b=U0qDTJatXYho51y0tm7EhOdW/
 xoljD1sudiAmKSJfRfRj5Vyc0auaWOPOQNB9xKYUe2ynwnAVQ1Vd/2GkKZeOD498
 xu2/zKb6YZxAkjRjWe5vG8l6jaCflyomvjjUYPfWgq7GLPNNyo1IoUCmrAW010sO
 cmy16W/wGrKdjjf6H12pMtDuPKZqpEk2Hj6Yq/V4QAmGmTqM4d0zITMu01OxL/1m
 x7+vjlynqPbBdZXz3IfCRnrf+RqT4mO5xQt345VbU+EFieI8C6e/YTA/v78/Enc2
 FwIB9KpCAbUfI9+RYpGYxzwbHPtQmFmhhAZVxOt106oTEOJRD9nCHmWynH5Lg==
Received: from ala-exchng02.corp.ad.wrs.com ([128.224.246.37])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4a96wb8ch4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 07 Nov 2025 09:45:54 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (10.11.224.121) by
 ALA-EXCHNG02.corp.ad.wrs.com (10.11.224.122) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.61; Fri, 7 Nov 2025 01:45:53 -0800
Received: from pek-lpd-ccm3.wrs.com (10.11.232.110) by
 ala-exchng01.corp.ad.wrs.com (10.11.224.121) with Microsoft SMTP Server id
 15.1.2507.61 via Frontend Transport; Fri, 7 Nov 2025 01:45:51 -0800
To: <shaggy@kernel.org>, <jfs-discussion@lists.sourceforge.net>
Date: Fri, 7 Nov 2025 17:45:50 +0800
Message-ID: <20251107094550.1070975-1-yun.zhou@windriver.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-GUID: DxxSmSriOz-NQFz77hBoBD1s1LXjumy7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA3OCBTYWx0ZWRfX5Vs8+ry9quGS
 3rXAyb6QaGQ1AkOLiSsqqqOe2GdWCp0rJYZNo7JhC9dtdhYqfIcp4rlvKKuXK4TvIM5YB1nN36K
 /1Z/CjUh7lxKDRAPRZu5rK/3ySZBt1/2nwrwvPsoasrkJy2tQ/KfQq10PzNNopEr90NW0lOgjmt
 87iDWx5y2QC+74rsa75sOYVR8aSJSxh8E9qz9crrPWMRUmopaBo40l9fGjWq27JaV3OzNLZ3czT
 gCDcEqJVJfgOZEyonPjXhDyJDycS6T2LWhEmaWQam86pkJNU1n2zQINnU/Gx5S8d3mFS4nUgQHk
 dRXP50NzRE3fJkJ4UU0TMabsX1c0RRpg1LctoqKoCa+TQo8I6iYCFwUwxuhlpm7KDlQZD5ZekXG
 nrAGGIDizIKZWUM+cIMmjKdOGiGUZQ==
X-Proofpoint-ORIG-GUID: DxxSmSriOz-NQFz77hBoBD1s1LXjumy7
X-Authority-Analysis: v=2.4 cv=bLAb4f+Z c=1 sm=1 tr=0 ts=690dbfd2 cx=c_pps
 a=Lg6ja3A245NiLSnFpY5YKQ==:117 a=Lg6ja3A245NiLSnFpY5YKQ==:17
 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=edf1wS77AAAA:8 a=hSkVLCK3AAAA:8
 a=t7CeM3EgAAAA:8 a=HWOROlQ_xHIrUlYk3fIA:9 a=DcSpbTIhAlouE1Uv7lRv:22
 a=cQPPKAXgyycSBL8etih5:22 a=FdTzh2GWekK77mhwV6Dw:22 a=cPQSjfK2_nFv0Q5t_7PE:22
 a=poXaRoVlC6wW9_mwW8W4:22 a=Z5ABNNGmrOfJ6cZ5bIyy:22 a=SsAZrZ5W_gNWK9tOzrEV:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 suspectscore=0 adultscore=0 clxscore=1011 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070078
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  list_add corruption. next is NULL. [ cut here ] kernel BUG
 at lib/list_debug.c:28! Oops: invalid opcode: 0000 [#1] SMP KASAN PTI CPU:
 1 UID: 0 PID: 122 Comm: jfsCommit Not tain [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.178.238 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vHJLi-0004RT-Cw
X-Mailman-Approved-At: Fri, 07 Nov 2025 15:07:42 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix corrupted list in dbUpdatePMap
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
Cc: shivankg@amd.com, yun.zhou@windriver.com, david@redhat.com,
 linux-kernel@vger.kernel.org, ssrane_b23@ee.vjti.ac.in, dsterba@suse.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

list_add corruption. next is NULL.
------------[ cut here ]------------
kernel BUG at lib/list_debug.c:28!
Oops: invalid opcode: 0000 [#1] SMP KASAN PTI
CPU: 1 UID: 0 PID: 122 Comm: jfsCommit Not tainted syzkaller #0
PREEMPT_{RT,(full)}
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
Google 10/02/2025
RIP: 0010:__list_add_valid_or_report+0xc3/0x130 lib/list_debug.c:27
Code: 4c 89 f2 48 89 d9 e8 0c 88 a4 fc 90 0f 0b 48 c7 c7 20 de 3d 8b e8
fd 87 a4 fc 90 0f 0b 48 c7 c7 c0 de 3d 8b e8 ee 87 a4 fc 90 <0f> 0b 48
89 df e8 13 c3 7d fd 42 80 7c 2d 00 00 74 08 4c 89 e7 e8
RSP: 0018:ffffc9000395fa20 EFLAGS: 00010246
RAX: 0000000000000022 RBX: 0000000000000000 RCX: 270c5dfadb559700
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 00000000000f0000 R08: 0000000000000000 R09: 0000000000000000
R10: dffffc0000000000 R11: fffff5200072bee9 R12: 0000000000000000
R13: dffffc0000000000 R14: 0000000000000004 R15: 1ffff92000632266
FS:  0000000000000000(0000) GS:ffff888126ef9000(0000)
knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000056341fdb86c0 CR3: 0000000040a18000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 __list_add_valid include/linux/list.h:96 [inline]
 __list_add include/linux/list.h:158 [inline]
 list_add include/linux/list.h:177 [inline]
 dbUpdatePMap+0x7e4/0xeb0 fs/jfs/jfs_dmap.c:577
 txAllocPMap+0x57d/0x6b0 fs/jfs/jfs_txnmgr.c:2426
 txUpdateMap+0x81e/0x9c0 fs/jfs/jfs_txnmgr.c:2364
 txLazyCommit fs/jfs/jfs_txnmgr.c:2665 [inline]
 jfs_lazycommit+0x3f1/0xa10 fs/jfs/jfs_txnmgr.c:2734
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x4bc/0x870 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:245
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---

Reported-by: syzbot+4d0a0feb49c5138cac46@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4d0a0feb49c5138cac46
Signed-off-by: Yun Zhou <yun.zhou@windriver.com>
---
 fs/jfs/jfs_metapage.c | 3 ++-
 fs/jfs/jfs_txnmgr.c   | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 871cf4fb3636..0d6c40e7e551 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -270,6 +270,7 @@ static inline struct metapage *alloc_metapage(gfp_t gfp_mask)
 		mp->clsn = 0;
 		mp->log = NULL;
 		init_waitqueue_head(&mp->wait);
+		INIT_LIST_HEAD(&mp->synclist);
 	}
 	return mp;
 }
@@ -379,7 +380,7 @@ static void remove_from_logsync(struct metapage *mp)
 		mp->lsn = 0;
 		mp->clsn = 0;
 		log->count--;
-		list_del(&mp->synclist);
+		list_del_init(&mp->synclist);
 	}
 	LOGSYNC_UNLOCK(log, flags);
 }
diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index 7840a03e5bcb..a5a5bc0a266d 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -275,6 +275,7 @@ int txInit(void)
 	for (k = 0; k < nTxBlock; k++) {
 		init_waitqueue_head(&TxBlock[k].gcwait);
 		init_waitqueue_head(&TxBlock[k].waitor);
+		INIT_LIST_HEAD(&TxBlock[k].synclist);
 	}
 
 	for (k = 1; k < nTxBlock - 1; k++) {
@@ -974,7 +975,7 @@ static void txUnlock(struct tblock * tblk)
 	if (tblk->lsn) {
 		LOGSYNC_LOCK(log, flags);
 		log->count--;
-		list_del(&tblk->synclist);
+		list_del_init(&tblk->synclist);
 		LOGSYNC_UNLOCK(log, flags);
 	}
 }
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
