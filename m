Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0515896BF6B
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Sep 2024 16:00:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1slqYJ-0004lX-CV;
	Wed, 04 Sep 2024 14:00:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhaomengmeng@kylinos.cn>) id 1slelR-0008W0-64
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Sep 2024 01:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GwBbVvk9+73MPVPpKVcxzu3terFgT2Hk1AQUfHYebyY=; b=e14AHspvKi9EV5D8dMkFV+fViQ
 jU1Vx1cSpmM46GUe6rt/oVW9auUNJJdBJPv/euEpRlpJq8B+xspBFliMWGpCcg9EBzSUjUEOUh+mm
 DRpG6D/LMFvLLxjrqAA8EF9Vh8oKBaEV7kxPxsE55GTHip8zgx9vf7AWr3W/poI7wvLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GwBbVvk9+73MPVPpKVcxzu3terFgT2Hk1AQUfHYebyY=; b=a
 KXRj6ONoXhbFyownuVC44Ta1gcV+8VYWusQZeG2QXvDch/qFB3O+KyZ0t8m/c3VtpqV6/nnxMkQUq
 Usc1Gq+1gnKWhZnP4NQ7Wg5+5192mz/hbg8nmu3rCSosjVSE4iJr2D/giqlAsyT7lzcHOCGV4mTVK
 piQ/1jiHEb7V1+z8=;
Received: from mailgw.kylinos.cn ([124.126.103.232])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1slelM-0008Nn-1s for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Sep 2024 01:24:53 +0000
X-UUID: 47d5483a6a5a11efa216b1d71e6e1362-20240904
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CC_NO_NAME,
 HR_CTE_8B
 HR_CTT_MISS, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_NAME
 HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER, HR_SJ_NOR_SYM
 HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT, HR_TO_DOMAIN_COUNT
 HR_TO_NO_NAME, IP_UNTRUSTED, SRC_UNTRUSTED, IP_LOWREP, SRC_LOWREP
 DN_TRUSTED, SRC_TRUSTED, SA_TRUSTED, SA_EXISTED, SN_TRUSTED
 SN_EXISTED, SPF_NOPASS, DKIM_NOPASS, DMARC_NOPASS
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.38, REQID:d19f6a11-f667-4bdd-a1f4-0f23e319b6ca, IP:20,
 URL:0,TC:0,Content:0,EDM:25,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:40
X-CID-INFO: VERSION:1.1.38, REQID:d19f6a11-f667-4bdd-a1f4-0f23e319b6ca, IP:20,
 UR
 L:0,TC:0,Content:0,EDM:25,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION
 :release,TS:40
X-CID-META: VersionHash:82c5f88, CLOUDID:d4ec845ca57735033c0957d942d54948,
 BulkI
 D:240903193249H4YE0B0C,BulkQuantity:1,Recheck:0,SF:19|43|74|66|38|25|17|10
 2,TC:nil,Content:1,EDM:5,IP:-2,URL:1,File:nil,RT:nil,Bulk:40,QS:nil,BEC:ni
 l,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR, TF_CID_SPAM_FAS, TF_CID_SPAM_FSD,
 TF_CID_SPAM_FSI, TF_CID_SPAM_ULS
X-UUID: 47d5483a6a5a11efa216b1d71e6e1362-20240904
X-User: zhaomengmeng@kylinos.cn
Received: from localhost.localdomain [(123.53.36.118)] by mailgw.kylinos.cn
 (envelope-from <zhaomengmeng@kylinos.cn>)
 (Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
 with ESMTP id 1312852117; Wed, 04 Sep 2024 09:09:05 +0800
From: Zhao Mengmeng <zhaomengmeng@kylinos.cn>
To: shaggy@kernel.org, walmeida@microsoft.com, llfamsec@gmail.com,
 brauner@kernel.org, gregkh@linuxfoundation.org, zhaomzhao@126.com
Date: Wed,  4 Sep 2024 09:07:58 +0800
Message-ID: <20240904010758.733750-1-zhaomengmeng@kylinos.cn>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reports that lzo1x_1_do_compress is using
 uninit-value:
 ===================================================== BUG: KMSAN: uninit-value
 in lzo1x_1_do_compress+0x19f9/0x2510 lib/lzo/lzo1x_compress.c:178
 lzo1x_1_do_compress+0x19f9/0x2510 lib/lzo/lzo1x_compres [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1slelM-0008Nn-1s
X-Mailman-Approved-At: Wed, 04 Sep 2024 14:00:05 +0000
Subject: [Jfs-discussion] [PATCH v1] jfs: Fix uninit-value access of new_ea
 in ea_buffer
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
Cc: jfs-discussion@lists.sourceforge.net,
 syzbot+02341e0daa42a15ce130@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Zhao Mengmeng <zhaomengmeng@kylinos.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot reports that lzo1x_1_do_compress is using uninit-value:

=====================================================
BUG: KMSAN: uninit-value in lzo1x_1_do_compress+0x19f9/0x2510 lib/lzo/lzo1x_compress.c:178
 lzo1x_1_do_compress+0x19f9/0x2510 lib/lzo/lzo1x_compress.c:178
 lzogeneric1x_1_compress+0x26a/0x11b0 lib/lzo/lzo1x_compress.c:333
 lzo1x_1_compress+0x47/0x80 lib/lzo/lzo1x_compress.c:383
 __lzo_compress crypto/lzo.c:58 [inline]
 lzo_scompress+0x98/0x180 crypto/lzo.c:79
 scomp_acomp_comp_decomp+0x7c6/0xb90
 scomp_acomp_compress+0x32/0x40 crypto/scompress.c:187
 crypto_acomp_compress include/crypto/acompress.h:251 [inline]
 zswap_compress+0x368/0xad0 mm/zswap.c:927
 zswap_store+0x1af3/0x2dd0 mm/zswap.c:1459
 swap_writepage+0x11f/0x470 mm/page_io.c:198
 shmem_writepage+0x1a75/0x1f70 mm/shmem.c:1536
 pageout mm/vmscan.c:680 [inline]
 shrink_folio_list+0x577f/0x7cb0 mm/vmscan.c:1360
 evict_folios+0x9bce/0xbc80 mm/vmscan.c:4580
 try_to_shrink_lruvec+0x13a3/0x1750 mm/vmscan.c:4775
 shrink_one+0x646/0xd20 mm/vmscan.c:4813
 shrink_many mm/vmscan.c:4876 [inline]
 lru_gen_shrink_node mm/vmscan.c:4954 [inline]
 shrink_node+0x451a/0x50f0 mm/vmscan.c:5934
 kswapd_shrink_node mm/vmscan.c:6762 [inline]
 balance_pgdat mm/vmscan.c:6954 [inline]
 kswapd+0x257e/0x4290 mm/vmscan.c:7223
 kthread+0x3dd/0x540 kernel/kthread.c:389
 ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

Uninit was stored to memory at:
 memcpy_from_iter lib/iov_iter.c:73 [inline]
 iterate_bvec include/linux/iov_iter.h:122 [inline]
 iterate_and_advance2 include/linux/iov_iter.h:249 [inline]
 iterate_and_advance include/linux/iov_iter.h:271 [inline]
 __copy_from_iter lib/iov_iter.c:249 [inline]
 copy_page_from_iter_atomic+0x12bb/0x2ae0 lib/iov_iter.c:481
 copy_folio_from_iter_atomic include/linux/uio.h:186 [inline]
 generic_perform_write+0x896/0x12e0 mm/filemap.c:4032
 shmem_file_write_iter+0x2bd/0x2f0 mm/shmem.c:3074
 do_iter_readv_writev+0x8a1/0xa40
 vfs_iter_write+0x459/0xd50 fs/read_write.c:895
 lo_write_bvec drivers/block/loop.c:243 [inline]
 lo_write_simple drivers/block/loop.c:264 [inline]
 do_req_filebacked drivers/block/loop.c:511 [inline]
 loop_handle_cmd drivers/block/loop.c:1910 [inline]
 loop_process_work+0x15ec/0x3750 drivers/block/loop.c:1945
 loop_rootcg_workfn+0x2b/0x40 drivers/block/loop.c:1976
 process_one_work kernel/workqueue.c:3231 [inline]
 process_scheduled_works+0xae0/0x1c40 kernel/workqueue.c:3312
 worker_thread+0xea7/0x14d0 kernel/workqueue.c:3389
 kthread+0x3dd/0x540 kernel/kthread.c:389
 ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

Uninit was stored to memory at:
 copy_to_dinode+0x881/0xb30 fs/jfs/jfs_imap.c:3158
 diWrite+0x1bf5/0x1f00 fs/jfs/jfs_imap.c:790
 txCommit+0xdb8/0x8cd0 fs/jfs/jfs_txnmgr.c:1255
 __jfs_xattr_set+0x1b7/0x1f0 fs/jfs/xattr.c:936
 jfs_xattr_set+0x79/0x90 fs/jfs/xattr.c:958
 __vfs_setxattr+0x844/0x8b0 fs/xattr.c:200
 __vfs_setxattr_noperm+0x22f/0xb00 fs/xattr.c:234
 __vfs_setxattr_locked+0x441/0x480 fs/xattr.c:295
 vfs_setxattr+0x294/0x650 fs/xattr.c:321
 do_setxattr fs/xattr.c:629 [inline]
 __do_sys_fsetxattr fs/xattr.c:710 [inline]
 __se_sys_fsetxattr+0x7f0/0x980 fs/xattr.c:686
 __x64_sys_fsetxattr+0xe4/0x150 fs/xattr.c:686
 x64_sys_call+0x19c3/0x3ba0 arch/x86/include/generated/asm/syscalls_64.h:191
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Uninit was stored to memory at:
 ea_put fs/jfs/xattr.c:639 [inline]
 __jfs_setxattr+0x185f/0x1ae0 fs/jfs/xattr.c:785
 __jfs_xattr_set+0xe6/0x1f0 fs/jfs/xattr.c:934
 jfs_xattr_set+0x79/0x90 fs/jfs/xattr.c:958
 __vfs_setxattr+0x844/0x8b0 fs/xattr.c:200
 __vfs_setxattr_noperm+0x22f/0xb00 fs/xattr.c:234
 __vfs_setxattr_locked+0x441/0x480 fs/xattr.c:295
 vfs_setxattr+0x294/0x650 fs/xattr.c:321
 do_setxattr fs/xattr.c:629 [inline]
 __do_sys_fsetxattr fs/xattr.c:710 [inline]
 __se_sys_fsetxattr+0x7f0/0x980 fs/xattr.c:686
 __x64_sys_fsetxattr+0xe4/0x150 fs/xattr.c:686
 x64_sys_call+0x19c3/0x3ba0 arch/x86/include/generated/asm/syscalls_64.h:191
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Local variable ea_buf created at:
 __jfs_setxattr+0x5d/0x1ae0 fs/jfs/xattr.c:662
 __jfs_xattr_set+0xe6/0x1f0 fs/jfs/xattr.c:934

CPU: 0 UID: 0 PID: 81 Comm: kswapd0 Tainted: G        W          6.11.0-rc5-syzkaller #0
Tainted: [W]=WARN
=====================================================

The reason is ea_buf->new_ea is not initialized properly.

Fix this by using memset to empty its content at the beginning
in ea_get().

Reported-by: syzbot+02341e0daa42a15ce130@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=02341e0daa42a15ce130
Signed-off-by: Zhao Mengmeng <zhaomengmeng@kylinos.cn>
---
 fs/jfs/xattr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index 2999ed5d83f5..0fb05e314edf 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -434,6 +434,8 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
 	int rc;
 	int quota_allocation = 0;
 
+	memset(&ea_buf->new_ea, 0, sizeof(ea_buf->new_ea));
+
 	/* When fsck.jfs clears a bad ea, it doesn't clear the size */
 	if (ji->ea.flag == 0)
 		ea_size = 0;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
