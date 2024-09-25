Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C549858E6
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Sep 2024 13:48:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stQUx-0004Pd-L1;
	Wed, 25 Sep 2024 11:47:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1stQUw-0004PJ-22
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 11:47:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GBFeuVToOTMhbGuVJ7Eoy01oKLFfnbodxE/b/J0BRlg=; b=EPegjzIQRYohGJSQM4K9QQDkfy
 yUmX/zhTQdRN6BrRff3iY+gUAMZ0aX0Bb1YD+pm34WjKCyODMm28KWkNXhBpLXozKH5s3DTtb2eYy
 Xn/9QNwGs9UJle8wy7hRCnCxHRMOqNySwiaeY2/3tya8Trinvzrp2pAEWmuIJXTMt6Tk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GBFeuVToOTMhbGuVJ7Eoy01oKLFfnbodxE/b/J0BRlg=; b=F0LUrZHRLxDrMFAx66NSolntXB
 CkWn73+8tGDkSvHgvIIL8fMvenqdIoDLjwuiPICsh1zNPgqPNS+aFeuZs9qB3LAv0css8XOEAz+uq
 UbFZx8tuYyTUfm8PkwHtvNAKjZ+7d2K2dh/nioNGMnW1w7Cz30hfa4FeiwxEvDpm+P+Y=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stQUu-00052j-5Y for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Sep 2024 11:47:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id DF6415C5B4C;
 Wed, 25 Sep 2024 11:47:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76D17C4CEC3;
 Wed, 25 Sep 2024 11:47:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727264865;
 bh=5vZZLjv9kkxWgX/JZ7ubMaH6p8tD0cwwEtPPOROlw1g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MecXH/wqhq9ZdJiU63WzQpFnPNgT+q8ZCqzknXOEY3FLqlyiOu/V9ZIW88FZaanEm
 n7rScFzgGKWz7V3Es8szeovjOzQPyS6wrlUKg26DlTonfwk7tYRylRJ+v2Gm4GcOFD
 qE4gAuyqZRDGVxKzo0hIO0OvNrv0p4+fACr0QxGhQMvvC9noE2F0CYy3/R61xWafqk
 W2Lo0ckYcu0OZihqvTzOYut3jUgGoW0askBsrOEsBAGgwkm+oIiPtQCF6mUyinMEoI
 ZS/B8BgwkKo8BZQ3O/vFw3XMX76hzBY/AeqTJ+io4vrf1ykF1kqSs9T7hGS+t1qf8B
 Mm8iCO7D5fHXQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 25 Sep 2024 07:26:25 -0400
Message-ID: <20240925113641.1297102-164-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240925113641.1297102-1-sashal@kernel.org>
References: <20240925113641.1297102-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.11
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Edward Adam Davis <eadavis@qq.com> [ Upstream commit
 d6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234 ] [syzbot reported]
 ==================================================================
 BUG: KASAN: slab-use-after-free in __mutex_lock_common
 kernel/locking/mutex.c:587
 [inline] BUG: KASAN: slab-use-aft [...] 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1stQUu-00052j-5Y
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.11 164/244] jfs: Fix uaf in
 dbFreeBits
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
 jfs-discussion@lists.sourceforge.net,
 syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com,
 Edward Adam Davis <eadavis@qq.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Edward Adam Davis <eadavis@qq.com>

[ Upstream commit d6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234 ]

[syzbot reported]
==================================================================
BUG: KASAN: slab-use-after-free in __mutex_lock_common kernel/locking/mutex.c:587 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
Read of size 8 at addr ffff8880229254b0 by task syz-executor357/5216

CPU: 0 UID: 0 PID: 5216 Comm: syz-executor357 Not tainted 6.11.0-rc3-syzkaller-00156-gd7a5aa4b3c00 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:488
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 __mutex_lock_common kernel/locking/mutex.c:587 [inline]
 __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
 dbFreeBits+0x7ea/0xd90 fs/jfs/jfs_dmap.c:2390
 dbFreeDmap fs/jfs/jfs_dmap.c:2089 [inline]
 dbFree+0x35b/0x680 fs/jfs/jfs_dmap.c:409
 dbDiscardAG+0x8a9/0xa20 fs/jfs/jfs_dmap.c:1650
 jfs_ioc_trim+0x433/0x670 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x2d0/0x3e0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:907 [inline]
 __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:893
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83

Freed by task 5218:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 kasan_save_free_info+0x40/0x50 mm/kasan/generic.c:579
 poison_slab_object+0xe0/0x150 mm/kasan/common.c:240
 __kasan_slab_free+0x37/0x60 mm/kasan/common.c:256
 kasan_slab_free include/linux/kasan.h:184 [inline]
 slab_free_hook mm/slub.c:2252 [inline]
 slab_free mm/slub.c:4473 [inline]
 kfree+0x149/0x360 mm/slub.c:4594
 dbUnmount+0x11d/0x190 fs/jfs/jfs_dmap.c:278
 jfs_mount_rw+0x4ac/0x6a0 fs/jfs/jfs_mount.c:247
 jfs_remount+0x3d1/0x6b0 fs/jfs/super.c:454
 reconfigure_super+0x445/0x880 fs/super.c:1083
 vfs_cmd_reconfigure fs/fsopen.c:263 [inline]
 vfs_fsconfig_locked fs/fsopen.c:292 [inline]
 __do_sys_fsconfig fs/fsopen.c:473 [inline]
 __se_sys_fsconfig+0xb6e/0xf80 fs/fsopen.c:345
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

[Analysis]
There are two paths (dbUnmount and jfs_ioc_trim) that generate race
condition when accessing bmap, which leads to the occurrence of uaf.

Use the lock s_umount to synchronize them, in order to avoid uaf caused
by race condition.

Reported-and-tested-by: syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_discard.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
index 575cb2ba74fc8..5f4b305030ad5 100644
--- a/fs/jfs/jfs_discard.c
+++ b/fs/jfs/jfs_discard.c
@@ -65,7 +65,7 @@ void jfs_issue_discard(struct inode *ip, u64 blkno, u64 nblocks)
 int jfs_ioc_trim(struct inode *ip, struct fstrim_range *range)
 {
 	struct inode *ipbmap = JFS_SBI(ip->i_sb)->ipbmap;
-	struct bmap *bmp = JFS_SBI(ip->i_sb)->bmap;
+	struct bmap *bmp;
 	struct super_block *sb = ipbmap->i_sb;
 	int agno, agno_end;
 	u64 start, end, minlen;
@@ -83,10 +83,15 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range *range)
 	if (minlen == 0)
 		minlen = 1;
 
+	down_read(&sb->s_umount);
+	bmp = JFS_SBI(ip->i_sb)->bmap;
+
 	if (minlen > bmp->db_agsize ||
 	    start >= bmp->db_mapsize ||
-	    range->len < sb->s_blocksize)
+	    range->len < sb->s_blocksize) {
+		up_read(&sb->s_umount);
 		return -EINVAL;
+	}
 
 	if (end >= bmp->db_mapsize)
 		end = bmp->db_mapsize - 1;
@@ -100,6 +105,8 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range *range)
 		trimmed += dbDiscardAG(ip, agno, minlen);
 		agno++;
 	}
+
+	up_read(&sb->s_umount);
 	range->len = trimmed << sb->s_blocksize_bits;
 
 	return 0;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
