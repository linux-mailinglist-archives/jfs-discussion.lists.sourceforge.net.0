Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F031F7A6A33
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Sep 2023 19:52:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qiet6-0004NP-9q;
	Tue, 19 Sep 2023 17:51:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1qiet4-0004NA-OY
 for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Sep 2023 17:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j8TWA9NwqpnmA3Kn9Ld4BG9HU/LUTqdznvv1+Ljy6T8=; b=mDKIqXBPT0kqaMfEZR+7q3Aecf
 NGLnm57ZJAV8uDYsGYOo7qPeNeI77GgSvXHMmXGiiTlsqDM1Hg1h5vNZSnLWSiyLjh26hwM1Gobs6
 YRcJzGXzrl969bumim3Yp+/xQH4Ws0PKap7mckFrvLuiAGIvN7eQMtyhRpSC4pd8ngZ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j8TWA9NwqpnmA3Kn9Ld4BG9HU/LUTqdznvv1+Ljy6T8=; b=d
 oNC1e8/GEOT5ErXBuS4cpSrOMlv1B2Pv602nTaAAQBo96/y5tuj23rfLM6gX+wKHDufWTGS2Stm5z
 JBBTcH0sWXyb2VSaPvzRVrR3PVMFoqT1P17S0pq/ozAdIUwiVy0nJ/iVEHn8xrlwvnrStzPj4nITf
 S9gp8/eCqt9BqJFA=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qiet4-00FALM-4U for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Sep 2023 17:51:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BA3A061626
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 19 Sep 2023 17:51:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D34DC433D9;
 Tue, 19 Sep 2023 17:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695145904;
 bh=sqFsRZ76Xk5kc+/Ls+M9fjYREn0sKVgPDFfl16cIFho=;
 h=From:To:Cc:Subject:Date:From;
 b=Hlz6Rt3vs5K4GAT2u6JG/1jE7bVO4GaSTaWgyexn+MXrvMpZo4didotOQ0lTtX6sx
 vxGetbFSJGYScaY93bIWeYw03w8BJqZg3vEthZHkdG0ZrXM2AepzaTItUAE4Q+eLhd
 jcRFXi9hiYwzu/0YhMlC6j2XZ313y5BPR9SWlb/hN2ICFYMRFQTkze+aGo9ljHpTUu
 mPbDKSIsUZeUBJdafADz2fTMD2b5ObjKuiWfY6lvQOQPLcd3hlNx2BC8XS/ySHyLiL
 u4oL5pT/9XzQJmxeCD6Ai7GTsugyNffkTdjf2jELE2UAPtupq54DYtiZbvTxuYE2zB
 ocJp4daUDG2Ig==
To: stable-commits@vger.kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Tue, 19 Sep 2023 13:51:42 -0400
Message-Id: <20230919175142.876660-1-sashal@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a note to let you know that I've just added the patch
 titled jfs: fix invalid free of JFS_IP(ipimap)->i_imap in diUnmount to the
 5.10-stable tree which can be found at:
 http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;
 a=summary
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qiet4-00FALM-4U
Subject: [Jfs-discussion] Patch "jfs: fix invalid free of
 JFS_IP(ipimap)->i_imap in diUnmount" has been added to the 5.10-stable tree
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
Cc: Dave Kleikamp <shaggy@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This is a note to let you know that I've just added the patch titled

    jfs: fix invalid free of JFS_IP(ipimap)->i_imap in diUnmount

to the 5.10-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     jfs-fix-invalid-free-of-jfs_ip-ipimap-i_imap-in-diun.patch
and it can be found in the queue-5.10 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.



commit bdf4b1ee91c12cf811e1ce7a98ea3c93aa757f6c
Author: Liu Shixin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Date:   Thu Dec 1 20:46:28 2022 +0800

    jfs: fix invalid free of JFS_IP(ipimap)->i_imap in diUnmount
    
    [ Upstream commit 6e2bda2c192d0244b5a78b787ef20aa10cb319b7 ]
    
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
    Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
    Signed-off-by: Sasha Levin <sashal@kernel.org>

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 937ca07b58b1d..67c67604b8c85 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -195,6 +195,7 @@ int diUnmount(struct inode *ipimap, int mounterror)
 	 * free in-memory control structure
 	 */
 	kfree(imap);
+	JFS_IP(ipimap)->i_imap = NULL;
 
 	return (0);
 }


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
