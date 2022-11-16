Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2CB62B0A0
	for <lists+jfs-discussion@lfdr.de>; Wed, 16 Nov 2022 02:39:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ov7OZ-0006IS-UT;
	Wed, 16 Nov 2022 01:39:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liaochang1@huawei.com>) id 1ov7OY-0006IM-HY
 for jfs-discussion@lists.sourceforge.net;
 Wed, 16 Nov 2022 01:39:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CHEs41920Zj2f7OGB0BW6zlWERMZtfqHtG8zMYlovvg=; b=WEs61Lmogq+5r0Vzb60kFeuU1S
 tXQne19izFVgANafNcuwLrg+Qx2fv3quOGweOdUVAHYIYPeQty3D+M28SUjqWOT0J4qm9RguSEA0p
 ihHu0HMviBSy9Vv500+GrEEUhiR3HatSfMnEZxh8m89T7YaKVpyASj7TyvQg7oD0xTqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CHEs41920Zj2f7OGB0BW6zlWERMZtfqHtG8zMYlovvg=; b=i
 cUua6gy4qe7aVYjN8c7IabrARJ+1JrTz874gdhujSi/kMGmbToR77l8kwXHu2Wxds/flPu3zgaXU+
 oJQai5xIjydjuNVSfJmiMEwOIEl3bFFJjaoJGW43XT2ig5z0SrcmQ+q9vGckiPDe3htV2iRaJ2JXL
 dbN8j4DufjkiZFCw=;
Received: from szxga08-in.huawei.com ([45.249.212.255])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ov7OW-009tE0-8C for jfs-discussion@lists.sourceforge.net;
 Wed, 16 Nov 2022 01:39:18 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.57])
 by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4NBm0k1fvlz15Mgd;
 Wed, 16 Nov 2022 09:38:46 +0800 (CST)
Received: from huawei.com (10.67.174.53) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 16 Nov
 2022 09:39:07 +0800
To: <shaggy@kernel.org>
Date: Wed, 16 Nov 2022 09:36:00 +0800
Message-ID: <20221116013600.77906-1-liaochang1@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.53]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller report issue as follows: UBSAN: shift-out-of-bounds
 in fs/jfs/super.c:140:14 shift exponent -236023038 is negative CPU: 0 PID:
 3985 Comm: syz-executor.4 Not tainted 6.1.0-rc2-syzkaller #0 Hardware name:
 Google Compute Engine, [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.255 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1ov7OW-009tE0-8C
Subject: [Jfs-discussion] [PATCH] jfs: Fix shift-out-of-bounds in jfs_statfs
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
From: Liao Chang via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Liao Chang <liaochang1@huawei.com>
Cc: jfs-discussion@lists.sourceforge.net, liaochang1@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller report issue as follows:

UBSAN: shift-out-of-bounds in fs/jfs/super.c:140:14
shift exponent -236023038 is negative
CPU: 0 PID: 3985 Comm: syz-executor.4 Not tainted 6.1.0-rc2-syzkaller #0
Hardware name: Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 jfs_statfs+0x503/0x510 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66
 vfs_statfs+0x136/0x310 fs/statfs.c:90
 user_statfs fs/statfs.c:105
__ubsan_handle_shift_out_of_bounds __do_sys_statfs fs/statfs.c:195
 __se_sys_statfs fs/statfs.c:192
 __x64_sys_statfs+0x120/0x230 fs/statfs.c:192
 do_syscall_x64 arch/x86/entry/common.c:50
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
 </TASK>

The on-disk inode map control structure contains a number indicates the
log2 number of blocks per inode extent, which will be used as the shift
to calculate the number of free blocks in jfs_statfs, so it needs to
ensure the on-disk log2 number is positive and less than 64 on JFS
mount.

Reported-by: syzbot+3424c9550a49659f1704@syzkaller.appspotmail.com
Signed-off-by: Liao Chang <liaochang1@huawei.com>
---
 fs/jfs/jfs_imap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..1ff632c55acf 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -124,6 +124,12 @@ int diMount(struct inode *ipimap)
 	atomic_set(&imap->im_numfree, le32_to_cpu(dinom_le->in_numfree));
 	imap->im_nbperiext = le32_to_cpu(dinom_le->in_nbperiext);
 	imap->im_l2nbperiext = le32_to_cpu(dinom_le->in_l2nbperiext);
+	if (imap->im_l2nbperiext < 0 ||
+	    imap->im_l2nbperiext >= sizeof(s64) * 8) {
+		kfree(imap);
+		return -EINVAL;
+	}
+
 	for (index = 0; index < MAXAG; index++) {
 		imap->im_agctl[index].inofree =
 		    le32_to_cpu(dinom_le->in_agctl[index].inofree);
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
