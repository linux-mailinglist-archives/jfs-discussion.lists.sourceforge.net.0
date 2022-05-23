Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 530AB531F25
	for <lists+jfs-discussion@lfdr.de>; Tue, 24 May 2022 01:15:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ntHGO-0000nD-Bt; Mon, 23 May 2022 23:14:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1ntHGM-0000n7-5M
 for jfs-discussion@lists.sourceforge.net; Mon, 23 May 2022 23:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JCk/N2K3hPDegedVHwJ+tyA1JoEPl1x/Djc6o1Y6upg=; b=bl+yf03HfG0CQa6fRphuq0bfEV
 Kg3kYLcag8bSq876evtWzckDPM5s5qBKZHJowigjCF7MyZub5WwlVx1Agsq0qzx7j3y79bUE9nF8B
 ZVeS9Lbj1/Tovx3n2JEl2QbAFreqPP08xtv/1780ESaP/Jx/grYrG2u2IW9swxdbg6Hs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JCk/N2K3hPDegedVHwJ+tyA1JoEPl1x/Djc6o1Y6upg=; b=S
 grvb9Zz4j76L2VZecuuDu6uR+hOavfLmzBs3AoTrryf7pMNy5SEDXYfR4uocU6aunpL79ny8EaFz+
 dytlxoQRCMvVIPMy1eoOTi8leDVh/UmBMmnIESvsAQ+xaxzhTKoyOTqLY9RwKoYW/FLS5PGCPxZo1
 9DAfai0vbdWtzhr4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ntHGF-0007Om-57
 for jfs-discussion@lists.sourceforge.net; Mon, 23 May 2022 23:14:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=JCk/N2K3hPDegedVHwJ+tyA1JoEPl1x/Djc6o1Y6upg=; b=hhGqJ+qQ5S+tHVKjqjctahfpfa
 vAUICTUs62tCx1EKnQWywTkFkL8Qd5cQ+QWgYH2NuZfN4H83Xn4EXeCo4CGzygWgTFUT40A2qQ2xt
 2Dlv7ekAye4iL87Or2pPHlzpuE4+E+OJUqyE0yGhwXrVz8qIkpHGBTXlr0ptOlK14iWD0gc/rLMdO
 e6zCMZgKtGQwNmsx/Z6KdiAZ/cG6U+UNw8Tj4rG7ggUvv5imNSOgPFUe8BPvT/L/giD24DFF7JYGZ
 yPXIF+KihlN0F5B4sDUFeH+BuXRrXd43aoyTnzpyxTckzEdczrZx6/TPmzLmoAViEcH09CDMHyxII
 gou/2m7A==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1ntHG3-00GcX1-7k
 for jfs-discussion@lists.sourceforge.net; Mon, 23 May 2022 23:14:39 +0000
Date: Tue, 24 May 2022 00:14:39 +0100
From: Matthew Wilcox <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net
Message-ID: <YowVX30BKo7gYQB1@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: 00040 generic/019 run fstests generic/019 at 2022-05-23
 20:56:07
 ... 00070 metapage_read_end_io: I/O error (many duplicates snipped) 00080
 metapage_read_end_io: I/O error 00080 [ cut here [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ntHGF-0007Om-57
Subject: [Jfs-discussion] anon_inode_list not empty when running generic/019
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


00040 generic/019       run fstests generic/019 at 2022-05-23 20:56:07
...
00070 metapage_read_end_io: I/O error
(many duplicates snipped)
00080 metapage_read_end_io: I/O error
00080 ------------[ cut here ]------------
00080 kernel BUG at fs/jfs/inode.c:169!
00080 invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
00080 CPU: 0 PID: 23939 Comm: umount Kdump: loaded Not tainted 5.18.0-rc5-00314-g95a605f63a1d #227
00080 Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.15.0-1 04/01/2014
00080 RIP: 0010:jfs_evict_inode+0xf3/0x100
00080 Code: b8 fd ff ff a8 04 75 24 4d 85 e4 74 10 49 83 7c 24 80 00 74 08 48 89 df e8 ba 9e 00 00 48 89 df e8 42 1e f6 ff e9 33 ff ff ff <0f> 0b 48 89 df e8 13 25 00 00 eb d2 90 48 8b 47 28 48 8b 80 68 03
00080 RSP: 0018:ffff888106317d40 EFLAGS: 00010212
00080 RAX: ffff88810dc10078 RBX: ffff88810dc102a0 RCX: 0000000000000000
00080 RDX: ffff88810dc10570 RSI: 0000000000000000 RDI: ffff88810dc102a0
00080 RBP: ffff888106317d50 R08: 0000000000000402 R09: fffffffffffffffe
00080 R10: ffffffffffffffff R11: 0000000000000000 R12: ffff88810dc102a0
00080 R13: ffff88810dc103a0 R14: ffff88810af5d408 R15: ffff88810af5d408
00080 FS:  00007f23522d0c40(0000) GS:ffff888275800000(0000) knlGS:0000000000000000
00080 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
00080 CR2: 000055c22ef5cb38 CR3: 000000010aca8006 CR4: 0000000000770eb0
00080 PKRU: 55555554
00080 Call Trace:
00080  <TASK>
00080  evict+0xd4/0x1e0
00080  dispose_list+0x48/0x60
00080  evict_inodes+0x153/0x180
00080  generic_shutdown_super+0x32/0x110
00080  kill_block_super+0x22/0x50
00080  deactivate_locked_super+0x2b/0x90
00080  deactivate_super+0x3b/0x50
00080  cleanup_mnt+0x134/0x190
00080  __cleanup_mnt+0xd/0x10

That corresponds to:
        BUG_ON(!list_empty(&ji->anon_inode_list));

# FSQA Test No. generic/019
#
# Run fsstress and fio(dio/aio and mmap) and simulate disk failure
# check filesystem consistency at the end.

I don't know whether we should empty the list, even in the presence
of I/O errors, or whether we should soften this BUG_ON to a
WARN_ON_ONCE.

(it'd also be nice to rate-limit the 111,000 lines of
metapage_read_end_io errors)



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
