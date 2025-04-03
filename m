Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 86948A7A9F1
	for <lists+jfs-discussion@lfdr.de>; Thu,  3 Apr 2025 21:05:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u0PsC-0005xD-M5;
	Thu, 03 Apr 2025 19:05:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1u0PsC-0005x7-CG
 for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:05:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+0IlvxduX8DTEtfmi+U3dPlguZd8NDYhk71S2nzo5fE=; b=f300nAhk47vyVqoc53piq7XxmU
 v+MywqoBmZ2txjl/eKDS3fJx+XOzdeULcsn9UVsmrbnxJxUMRswI4a0lTFBR8kxvYGDLZWETKhsZT
 A01KJHwfuGK2dwlWCb/bgxp1A3xQ/HMW7IoreGRFUG3ovK8dbBk0B/rzOZsa2hkaUDFw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+0IlvxduX8DTEtfmi+U3dPlguZd8NDYhk71S2nzo5fE=; b=MZRoxeT6tB82yF/9SUy2YvToqo
 w0XhhEJ8OqkihvTig6nbvfybxGl3RfrqBarfhtG9E3WMtkpc3zieBqyLmDsDAAf9yxaNCOEAGAJOx
 ItORfgRdaUvTuTp9FdVi0g5/POLI2y1tW4dy3a024In+lwYhv8RdfVNRWh5DFBhsJgA0=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0Prx-0002pw-57 for jfs-discussion@lists.sourceforge.net;
 Thu, 03 Apr 2025 19:05:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3C2B143832;
 Thu,  3 Apr 2025 19:04:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7806FC4CEE3;
 Thu,  3 Apr 2025 19:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1743707087;
 bh=549qfMrQeuNBpSjztJHEajMHuoWAKsoH8OhuOMqkqwY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TAQh3W2e+5NXAonQjkl8Txiez4nFOcZl2oCEFe7HKx0coOlEY8d576rgOMFP+im1J
 AZpqV3x31fasFw9chT2A6HdmIFkItYXSl0JYFMA9Cyb3PfFIYEVukrHD/l8TphHWYL
 zdssscRuiAX5rKaBhNN5Ssv00xfAtZ9FzZr75ATnDNBzjeSWo8zGxcniO0Bq3jf+Vi
 VhgvVdF4MT3PdSlbba23jO0Z2RZfRp9qz5Zop90j4WInUDeWALoeGF8p2/XMfx8RyG
 Li9J78++4BxZfuM0WiC0CbAVFXg7AMDan6qHbf9MWsqiaekPdTr+MBJQDgMBlPVaAf
 f9dG2urYUAMdw==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu,  3 Apr 2025 15:03:36 -0400
Message-Id: <20250403190408.2676344-17-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250403190408.2676344-1-sashal@kernel.org>
References: <20250403190408.2676344-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.13.9
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Zhongqiu Han <quic_zhonhan@quicinc.com> [ Upstream
 commit
 9629d7d66c621671d9a47afe27ca9336bfc8a9ea ] syzbot reports that
 hex_dump_to_buffer is using uninit-value: 
 Content analysis details:   (-0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [172.234.252.31 listed in bl.score.senderscore.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.6 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1u0Prx-0002pw-57
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.13 17/49] jfs: Fix uninit-value
 access of imap allocated in the diMount() function
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 Zhongqiu Han <quic_zhonhan@quicinc.com>, dmantipov@yandex.ru,
 aha310510@gmail.com, syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com,
 eadavis@qq.com, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Zhongqiu Han <quic_zhonhan@quicinc.com>

[ Upstream commit 9629d7d66c621671d9a47afe27ca9336bfc8a9ea ]

syzbot reports that hex_dump_to_buffer is using uninit-value:

=====================================================
BUG: KMSAN: uninit-value in hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
print_hex_dump+0x13d/0x3e0 lib/hexdump.c:276
diFree+0x5ba/0x4350 fs/jfs/jfs_imap.c:876
jfs_evict_inode+0x510/0x550 fs/jfs/inode.c:156
evict+0x723/0xd10 fs/inode.c:796
iput_final fs/inode.c:1946 [inline]
iput+0x97b/0xdb0 fs/inode.c:1972
txUpdateMap+0xf3e/0x1150 fs/jfs/jfs_txnmgr.c:2367
txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
jfs_lazycommit+0x627/0x11d0 fs/jfs/jfs_txnmgr.c:2733
kthread+0x6b9/0xef0 kernel/kthread.c:464
ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:148
ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

Uninit was created at:
slab_post_alloc_hook mm/slub.c:4121 [inline]
slab_alloc_node mm/slub.c:4164 [inline]
__kmalloc_cache_noprof+0x8e3/0xdf0 mm/slub.c:4320
kmalloc_noprof include/linux/slab.h:901 [inline]
diMount+0x61/0x7f0 fs/jfs/jfs_imap.c:105
jfs_mount+0xa8e/0x11d0 fs/jfs/jfs_mount.c:176
jfs_fill_super+0xa47/0x17c0 fs/jfs/super.c:523
get_tree_bdev_flags+0x6ec/0x910 fs/super.c:1636
get_tree_bdev+0x37/0x50 fs/super.c:1659
jfs_get_tree+0x34/0x40 fs/jfs/super.c:635
vfs_get_tree+0xb1/0x5a0 fs/super.c:1814
do_new_mount+0x71f/0x15e0 fs/namespace.c:3560
path_mount+0x742/0x1f10 fs/namespace.c:3887
do_mount fs/namespace.c:3900 [inline]
__do_sys_mount fs/namespace.c:4111 [inline]
__se_sys_mount+0x71f/0x800 fs/namespace.c:4088
__x64_sys_mount+0xe4/0x150 fs/namespace.c:4088
x64_sys_call+0x39bf/0x3c30 arch/x86/include/generated/asm/syscalls_64.h:166
do_syscall_x64 arch/x86/entry/common.c:52 [inline]
do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
entry_SYSCALL_64_after_hwframe+0x77/0x7f
=====================================================

The reason is that imap is not properly initialized after memory
allocation. It will cause the snprintf() function to write uninitialized
data into linebuf within hex_dump_to_buffer().

Fix this by using kzalloc instead of kmalloc to clear its content at the
beginning in diMount().

Signed-off-by: Zhongqiu Han <quic_zhonhan@quicinc.com>
Reported-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
Closes: https://lore.kernel.org/lkml/67b5d07e.050a0220.14d86d.00e6.GAE@google.com/
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_imap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index a360b24ed320c..cf16655cd26ba 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -102,7 +102,7 @@ int diMount(struct inode *ipimap)
 	 * allocate/initialize the in-memory inode map control structure
 	 */
 	/* allocate the in-memory inode map control structure. */
-	imap = kmalloc(sizeof(struct inomap), GFP_KERNEL);
+	imap = kzalloc(sizeof(struct inomap), GFP_KERNEL);
 	if (imap == NULL)
 		return -ENOMEM;
 
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
