Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8439DEB26
	for <lists+jfs-discussion@lfdr.de>; Fri, 29 Nov 2024 17:37:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tH3zF-0002IY-9L;
	Fri, 29 Nov 2024 16:36:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=2063358e96=lizhi.xu@windriver.com>)
 id 1tGyzM-0000Tx-29 for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Nov 2024 11:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vqLeD8iIPdODnpk7eUIUJbakx4AAQEZouXfr6cA2Dlg=; b=Yg5m9lM6GyGVfbVxXtBLExDo8J
 ogdE8EaHxjC47Rl5n+bSoQ4ektRvha0NnKUjErk6fuYBL+/vNCrdeun1iCYNxyKg/h61rum9j5QPR
 R/4RGapD61faCxNDbX2uIUH2M7s7ndAwUiXN02CnSQnhJ+cdv1fUX1rVWRRvoAhy3mi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vqLeD8iIPdODnpk7eUIUJbakx4AAQEZouXfr6cA2Dlg=; b=MQebFBfIatub5Iub2uW0myzbki
 leIeTo94dnEdzRqgvzXL1GDDwdopqGcLyUDX/0qxx527f+bO6fZ5M2NwzyDuUcp7hr2rWHiwiD7Dt
 19MBXT2tTHDrwMQ3LUrEdr0Mk7OuKsh9SpzFmhvyIJllMaHp8/k8ER1JECsOO/0eaOL8=;
Received: from mx0b-0064b401.pphosted.com ([205.220.178.238])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tGyzK-0005vx-9S for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Nov 2024 11:16:43 +0000
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT64xrE029754;
 Fri, 29 Nov 2024 11:16:33 GMT
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com
 [147.11.82.252])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 43671at1sg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 29 Nov 2024 11:16:32 +0000 (GMT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.43; Fri, 29 Nov 2024 03:16:31 -0800
Received: from pek-lpd-ccm6.wrs.com (147.11.136.210) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server id
 15.1.2507.43 via Frontend Transport; Fri, 29 Nov 2024 03:16:30 -0800
To: <syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com>
Date: Fri, 29 Nov 2024 19:16:29 +0800
Message-ID: <20241129111629.91992-1-lizhi.xu@windriver.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <6748fb32.050a0220.253251.0098.GAE@google.com>
References: <6748fb32.050a0220.253251.0098.GAE@google.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: X_Is-F3dEeyAYzk0nFqROqXNvzz0EUOc
X-Authority-Analysis: v=2.4 cv=TIS/S0la c=1 sm=1 tr=0 ts=6749a290 cx=c_pps
 a=/ZJR302f846pc/tyiSlYyQ==:117 a=/ZJR302f846pc/tyiSlYyQ==:17
 a=VlfZXiiP6vEA:10 a=edf1wS77AAAA:8 a=hSkVLCK3AAAA:8 a=t7CeM3EgAAAA:8
 a=EcIOMTnjEzzh_necsvcA:9 a=DcSpbTIhAlouE1Uv7lRv:22
 a=cQPPKAXgyycSBL8etih5:22 a=FdTzh2GWekK77mhwV6Dw:22
X-Proofpoint-GUID: X_Is-F3dEeyAYzk0nFqROqXNvzz0EUOc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_10,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=477 adultscore=0 clxscore=1011
 priorityscore=1501 bulkscore=0 impostorscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.21.0-2411120000 definitions=main-2411290092
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot report a array-index-out-of-bounds in dtSplitRoot.
 [1] The second index value of the parent inode of the symbolic link is
 4294967168.
 When it is assigned to the stbl of type s8, an overflow value of -128 occurs, 
 which triggers oob. 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.178.238 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.178.238 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.220.178.238 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.178.238 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tGyzK-0005vx-9S
X-Mailman-Approved-At: Fri, 29 Nov 2024 16:36:54 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix a oob in dtSplitRoot
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
From: Lizhi Xu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Lizhi Xu <lizhi.xu@windriver.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot report a array-index-out-of-bounds in dtSplitRoot. [1]

The second index value of the parent inode of the symbolic link is 4294967168.
When it is assigned to the stbl of type s8, an overflow value of -128 occurs,
which triggers oob.

To avoid this issue, add a check for the index of the slot before using it.

[1]
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1997:37
index -128 is out of range for type 'struct dtslot[128]'
CPU: 1 UID: 0 PID: 5842 Comm: syz-executor268 Not tainted 6.12.0-syzkaller-09073-g9f16d5e6f220 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtSplitRoot+0xc9c/0x1930 fs/jfs/jfs_dtree.c:1997
 dtSplitUp fs/jfs/jfs_dtree.c:992 [inline]
 dtInsert+0x12cd/0x6c10 fs/jfs/jfs_dtree.c:870
 jfs_symlink+0x827/0x10f0 fs/jfs/namei.c:1020
 vfs_symlink+0x137/0x2e0 fs/namei.c:4669
 do_symlinkat+0x222/0x3a0 fs/namei.c:4695
 __do_sys_symlink fs/namei.c:4716 [inline]
 __se_sys_symlink fs/namei.c:4714 [inline]
 __x64_sys_symlink+0x7a/0x90 fs/namei.c:4714
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Reported-and-tested-by: syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=99491d74a9931659cf48
Signed-off-by: Lizhi Xu <lizhi.xu@windriver.com>
---
 fs/jfs/jfs_dtree.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 8f85177f284b..71463ad751c2 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -1994,6 +1994,9 @@ static int dtSplitRoot(tid_t tid,
 
 		stbl = DT_GETSTBL(rp);
 		for (n = 0; n < rp->header.nextindex; n++) {
+			if (stbl[n] >= ARRAY_SIZE(rp->slot))
+				continue;
+
 			ldtentry = (struct ldtentry *) & rp->slot[stbl[n]];
 			modify_index(tid, ip, le32_to_cpu(ldtentry->index),
 				     rbn, n, &mp, &lblock);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
