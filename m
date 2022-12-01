Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A359D63F00F
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Dec 2022 13:00:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p0iEB-00053h-T2;
	Thu, 01 Dec 2022 11:59:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liushixin2@huawei.com>) id 1p0iEA-00053U-HN
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Dec 2022 11:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Czct4PkIVDymE/Vbje8zNfdVjzThSA0bn1oTaROsp3U=; b=AD/twqUm9+8MOQ/f+nXTDxdqYx
 Wi3eV4gCc1kMiVtQLEI4t2cITSNYnSyzBruYXGWzxf8rb4onzm3EfS0F4xJ9SLo5StwpZiGX2b8yW
 IzhDYq8nKBqKdTyOBDc+FVmzUHtdrGYdyVp8EIePcUshPT0fGu02ImcY1kCWIGw6lvrQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Czct4PkIVDymE/Vbje8zNfdVjzThSA0bn1oTaROsp3U=; b=a
 /pRUVUvtduD7zcgIzXvGrA8mdH5AcnPvhGOg+dkHhTuvOzsS0wb5AY7elF9rZZoVU/vCL11188d6t
 AjYjW2x2GXNmmGUBvptr3sUwLbeMGVeiG3+IENEIP1IC5tZHGhM+FMEtth/z4w75PX4M6sfAcC8A3
 IDuI8W6kMBRn/SK4=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p0iE6-0007kO-Gg for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Dec 2022 11:59:42 +0000
Received: from dggpemm100009.china.huawei.com (unknown [172.30.72.54])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NNF3B1FYzzmVxm;
 Thu,  1 Dec 2022 19:58:46 +0800 (CST)
Received: from huawei.com (10.175.113.32) by dggpemm100009.china.huawei.com
 (7.185.36.113) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 1 Dec
 2022 19:59:28 +0800
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu, 1 Dec 2022 20:46:28 +0800
Message-ID: <20221201124628.603505-1-liushixin2@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.32]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 dggpemm100009.china.huawei.com (7.185.36.113)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot found an invalid-free in diUnmount: BUG: KASAN:
 double-free
 in slab_free mm/slub.c:3661 [inline] BUG: KASAN: double-free in
 __kmem_cache_free+0x71/0x110
 mm/slub.c:3674 Free of addr ffff88806f410000 by task syz-executor131/3632
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p0iE6-0007kO-Gg
Subject: [Jfs-discussion] [PATCH] jfs: fix invalid free of
 JFS_IP(ipimap)->i_imap in diUnmount
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
From: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Liu Shixin <liushixin2@huawei.com>
Cc: Liu Shixin <liushixin2@huawei.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot found an invalid-free in diUnmount:

BUG: KASAN: double-free in slab_free mm/slub.c:3661 [inline]
BUG: KASAN: double-free in __kmem_cache_free+0x71/0x110 mm/slub.c:3674
Free of addr ffff88806f410000 by task syz-executor131/3632

 CPU: 0 PID: 3632 Comm: syz-executor131 Not tainted 6.1.0-rc7-syzkaller-00012-gca57f02295f1 #0
 Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
 Call Trace:
  <TASK>
  __dump_stack lib/dump_stack.c:88 [inline]
  dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
  print_address_description+0x74/0x340 mm/kasan/report.c:284
  print_report+0x107/0x1f0 mm/kasan/report.c:395
  kasan_report_invalid_free+0xac/0xd0 mm/kasan/report.c:460
  ____kasan_slab_free+0xfb/0x120
  kasan_slab_free include/linux/kasan.h:177 [inline]
  slab_free_hook mm/slub.c:1724 [inline]
  slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1750
  slab_free mm/slub.c:3661 [inline]
  __kmem_cache_free+0x71/0x110 mm/slub.c:3674
  diUnmount+0xef/0x100 fs/jfs/jfs_imap.c:195
  jfs_umount+0x108/0x370 fs/jfs/jfs_umount.c:63
  jfs_put_super+0x86/0x190 fs/jfs/super.c:194
  generic_shutdown_super+0x130/0x310 fs/super.c:492
  kill_block_super+0x79/0xd0 fs/super.c:1428
  deactivate_locked_super+0xa7/0xf0 fs/super.c:332
  cleanup_mnt+0x494/0x520 fs/namespace.c:1186
  task_work_run+0x243/0x300 kernel/task_work.c:179
  exit_task_work include/linux/task_work.h:38 [inline]
  do_exit+0x664/0x2070 kernel/exit.c:820
  do_group_exit+0x1fd/0x2b0 kernel/exit.c:950
  __do_sys_exit_group kernel/exit.c:961 [inline]
  __se_sys_exit_group kernel/exit.c:959 [inline]
  __x64_sys_exit_group+0x3b/0x40 kernel/exit.c:959
  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
  do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[...]

JFS_IP(ipimap)->i_imap is not setting to NULL after free in diUnmount.
If jfs_remount() free JFS_IP(ipimap)->i_imap but then failed at diMount().
JFS_IP(ipimap)->i_imap will be freed once again.
Fix this problem by setting JFS_IP(ipimap)->i_imap to NULL after free.

Reported-by: syzbot+90a11e6b1e810785c6ff@syzkaller.appspotmail.com
Signed-off-by: Liu Shixin <liushixin2@huawei.com>
---
 fs/jfs/jfs_imap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..4899663996d8 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -193,6 +193,7 @@ int diUnmount(struct inode *ipimap, int mounterror)
 	 * free in-memory control structure
 	 */
 	kfree(imap);
+	JFS_IP(ipimap)->i_imap = NULL;
 
 	return (0);
 }
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
