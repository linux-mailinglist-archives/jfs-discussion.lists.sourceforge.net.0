Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF01272945
	for <lists+jfs-discussion@lfdr.de>; Mon, 21 Sep 2020 16:59:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kKNH6-0007Ot-PL; Mon, 21 Sep 2020 14:58:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdanton@sina.com>) id 1kKNH5-0007OY-Mb
 for jfs-discussion@lists.sourceforge.net; Mon, 21 Sep 2020 14:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qlco4G9RE4A0pQ3WzXGGad+sVOPjWgDah0IOrh14lQg=; b=H6elb5raoxgLSnMKosB68fzHIU
 QonHxwORZx/c1OlbqorqsgRdjIckjV2LWZog/q8Rle6sSWAT7Mxu3sRBN9xOAIHMAaefHbT1wqTr7
 ABo9Wy4CCvVSK8s7FNSFtG3/g3QTKqMCOEXpLg8IoLY/5iQ5vZV1JzeGlFkD8gvS0Vhs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Qlco4G9RE4A0pQ3WzXGGad+sVOPjWgDah0IOrh14lQg=; b=XWG01GJP+cnnzzL3kRpFldWkIT
 +/dhafjKgIMoyukCqHyZimM3behdFICl6T+/HGULHQfKwkM/WXph/QDYKOj/SqGDDbHJrZBnn6ysG
 cZvav4j5hy/zKX3uWher2WTVt0Xm/WbX7qNUffwdzdeizI4AEIVAcCYQLqteZ3VYxQbk=;
Received: from r3-25.sinamail.sina.com.cn ([202.108.3.25])
 by sfi-mx-3.v28.lw.sourceforge.com with smtp (Exim 4.92.2)
 id 1kKNGq-000Ku0-OX
 for jfs-discussion@lists.sourceforge.net; Mon, 21 Sep 2020 14:58:39 +0000
Received: from unknown (HELO localhost.localdomain)([222.131.67.153])
 by sina.com with ESMTP
 id 5F68BF7C00021BB3; Mon, 21 Sep 2020 22:58:06 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 62117354919638
From: Hillf Danton <hdanton@sina.com>
To: syzbot <syzbot+5d2008bd1f1b722ba94e@syzkaller.appspotmail.com>
Date: Mon, 21 Sep 2020 22:57:54 +0800
Message-Id: <20200921145754.9316-1-hdanton@sina.com>
In-Reply-To: <0000000000005b805d05afcf6ab8@google.com>
References: <0000000000005b805d05afcf6ab8@google.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hdanton[at]sina.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.108.3.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1kKNGq-000Ku0-OX
Subject: Re: [Jfs-discussion] KASAN: use-after-free Read in lbmIODone
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 Hillf Danton <hdanton@sina.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


On Mon, 21 Sep 2020 02:24:21 -0700
> syzbot found the following issue on:
> 
> HEAD commit:    ba4f184e Linux 5.9-rc6
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=173946c5900000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=5f4c828c9e3cef97
> dashboard link: https://syzkaller.appspot.com/bug?extid=5d2008bd1f1b722ba94e
> compiler:       gcc (GCC) 10.1.0-syz 20200507
> 
> Unfortunately, I don't have any reproducer for this issue yet.
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+5d2008bd1f1b722ba94e@syzkaller.appspotmail.com
> 
> ==================================================================
> BUG: KASAN: use-after-free in lbmIODone+0xcd4/0xf60 fs/jfs/jfs_logmgr.c:2193
> Read of size 4 at addr ffff88808b37ab08 by task ksoftirqd/1/16
> 
> CPU: 1 PID: 16 Comm: ksoftirqd/1 Not tainted 5.9.0-rc6-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x198/0x1fd lib/dump_stack.c:118
>  print_address_description.constprop.0.cold+0xae/0x497 mm/kasan/report.c:383
>  __kasan_report mm/kasan/report.c:513 [inline]
>  kasan_report.cold+0x1f/0x37 mm/kasan/report.c:530
>  lbmIODone+0xcd4/0xf60 fs/jfs/jfs_logmgr.c:2193
>  bio_endio+0x3cf/0x7f0 block/bio.c:1449
>  req_bio_endio block/blk-core.c:259 [inline]
>  blk_update_request+0x68f/0x1500 block/blk-core.c:1577
>  blk_mq_end_request+0x4c/0x510 block/blk-mq.c:562
>  lo_complete_rq+0x20d/0x2d0 drivers/block/loop.c:500
>  blk_done_softirq+0x33c/0x4d0 block/blk-mq.c:586
>  __do_softirq+0x1f8/0xb23 kernel/softirq.c:298
>  run_ksoftirqd kernel/softirq.c:652 [inline]
>  run_ksoftirqd+0xcf/0x170 kernel/softirq.c:644
>  smpboot_thread_fn+0x655/0x9e0 kernel/smpboot.c:165
>  kthread+0x3b5/0x4a0 kernel/kthread.c:292
>  ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:294
> 
> Allocated by task 29777:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:48
>  kasan_set_track mm/kasan/common.c:56 [inline]
>  __kasan_kmalloc.constprop.0+0xbf/0xd0 mm/kasan/common.c:461
>  kmem_cache_alloc_trace+0x174/0x300 mm/slab.c:3550
>  kmalloc include/linux/slab.h:554 [inline]
>  lbmLogInit fs/jfs/jfs_logmgr.c:1829 [inline]
>  lmLogInit+0x30b/0x1400 fs/jfs/jfs_logmgr.c:1278
>  open_inline_log fs/jfs/jfs_logmgr.c:1183 [inline]
>  lmLogOpen+0x726/0x11f0 fs/jfs/jfs_logmgr.c:1077
>  jfs_mount_rw+0x286/0x4b0 fs/jfs/jfs_mount.c:259
>  jfs_fill_super+0x860/0xbc0 fs/jfs/super.c:571
>  mount_bdev+0x32e/0x3f0 fs/super.c:1417
>  legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>  vfs_get_tree+0x89/0x2f0 fs/super.c:1547
>  do_new_mount fs/namespace.c:2875 [inline]
>  path_mount+0x1387/0x20a0 fs/namespace.c:3192
>  do_mount fs/namespace.c:3205 [inline]
>  __do_sys_mount fs/namespace.c:3413 [inline]
>  __se_sys_mount fs/namespace.c:3390 [inline]
>  __x64_sys_mount+0x27f/0x300 fs/namespace.c:3390
>  do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> Freed by task 6891:
>  kasan_save_stack+0x1b/0x40 mm/kasan/common.c:48
>  kasan_set_track+0x1c/0x30 mm/kasan/common.c:56
>  kasan_set_free_info+0x1b/0x30 mm/kasan/generic.c:355
>  __kasan_slab_free+0xd8/0x120 mm/kasan/common.c:422
>  __cache_free mm/slab.c:3418 [inline]
>  kfree+0x10e/0x2b0 mm/slab.c:3756
>  lbmLogShutdown fs/jfs/jfs_logmgr.c:1872 [inline]
>  lmLogShutdown+0x2c6/0x580 fs/jfs/jfs_logmgr.c:1691
>  lmLogClose+0x4ae/0x620 fs/jfs/jfs_logmgr.c:1467
>  jfs_umount+0x26f/0x320 fs/jfs/jfs_umount.c:116
>  jfs_put_super+0x61/0x140 fs/jfs/super.c:194
>  generic_shutdown_super+0x144/0x370 fs/super.c:464
>  kill_block_super+0x97/0xf0 fs/super.c:1444
>  deactivate_locked_super+0x94/0x160 fs/super.c:335
>  deactivate_super+0xad/0xd0 fs/super.c:366
>  cleanup_mnt+0x3a3/0x530 fs/namespace.c:1118
>  task_work_run+0xdd/0x190 kernel/task_work.c:141
>  tracehook_notify_resume include/linux/tracehook.h:188 [inline]
>  exit_to_user_mode_loop kernel/entry/common.c:165 [inline]
>  exit_to_user_mode_prepare+0x1e1/0x200 kernel/entry/common.c:192
>  syscall_exit_to_user_mode+0x7e/0x2e0 kernel/entry/common.c:267
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> The buggy address belongs to the object at ffff88808b37ab00
>  which belongs to the cache kmalloc-192 of size 192
> The buggy address is located 8 bytes inside of
>  192-byte region [ffff88808b37ab00, ffff88808b37abc0)
> The buggy address belongs to the page:
> page:00000000dc0ca20a refcount:1 mapcount:0 mapping:0000000000000000 index:0xffff88808b37ac00 pfn:0x8b37a
> flags: 0xfffe0000000200(slab)
> raw: 00fffe0000000200 ffffea0002a56b48 ffffea00025a3088 ffff8880aa040000
> raw: ffff88808b37ac00 ffff88808b37a000 000000010000000a 0000000000000000
> page dumped because: kasan: bad access detected
> 
> Memory state around the buggy address:
>  ffff88808b37aa00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>  ffff88808b37aa80: 00 00 00 fc fc fc fc fc fc fc fc fc fc fc fc fc
> >ffff88808b37ab00: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>                       ^
>  ffff88808b37ab80: fb fb fb fb fb fb fb fb fc fc fc fc fc fc fc fc
>  ffff88808b37ac00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> ==================================================================


Fix uaf by waiting for IO to complete. To that end, add counter of
IO submitted in struct jfs_log, and wait queue as well.

--- a/fs/jfs/jfs_logmgr.h
+++ b/fs/jfs/jfs_logmgr.h
@@ -400,6 +400,8 @@ struct jfs_log {
 	uuid_t uuid;		/* 16: 128-bit uuid of log device */
 
 	int no_integrity;	/* 3: flag to disable journaling to disk */
+	atomic_t  io_inflight;
+	wait_queue_head_t  io_waitq;
 };
 
 /*
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1101,6 +1101,7 @@ int lmLogOpen(struct super_block *sb)
 	}
 	INIT_LIST_HEAD(&log->sb_list);
 	init_waitqueue_head(&log->syncwait);
+	init_waitqueue_head(&log->io_waitq);
 
 	/*
 	 *	external log as separate logical volume
@@ -1864,6 +1865,7 @@ static void lbmLogShutdown(struct jfs_lo
 	struct lbuf *lbuf;
 
 	jfs_info("lbmLogShutdown: log:0x%p", log);
+	wait_event(log->io_waitq, !atomic_read(&log->io_inflight));
 
 	lbuf = log->lbuf_free;
 	while (lbuf) {
@@ -1990,6 +1992,8 @@ static int lbmRead(struct jfs_log * log,
 	bio->bi_end_io = lbmIODone;
 	bio->bi_private = bp;
 	bio->bi_opf = REQ_OP_READ;
+
+	atomic_inc(&log->io_inflight);
 	/*check if journaling to disk has been disabled*/
 	if (log->no_integrity) {
 		bio->bi_iter.bi_size = 0;
@@ -2135,6 +2139,7 @@ static void lbmStartIO(struct lbuf * bp)
 	bio->bi_private = bp;
 	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;
 
+	atomic_inc(&log->io_inflight);
 	/* check if journaling to disk has been disabled */
 	if (log->no_integrity) {
 		bio->bi_iter.bi_size = 0;
@@ -2199,6 +2204,7 @@ static void lbmIODone(struct bio *bio)
 	}
 
 	bio_put(bio);
+	log = bp->l_log;
 
 	/*
 	 *	pagein completion
@@ -2210,8 +2216,7 @@ static void lbmIODone(struct bio *bio)
 
 		/* wakeup I/O initiator */
 		LCACHE_WAKEUP(&bp->l_ioevent);
-
-		return;
+		goto out;
 	}
 
 	/*
@@ -2230,13 +2235,12 @@ static void lbmIODone(struct bio *bio)
 	INCREMENT(lmStat.pagedone);
 
 	/* update committed lsn */
-	log = bp->l_log;
 	log->clsn = (bp->l_pn << L2LOGPSIZE) + bp->l_ceor;
 
 	if (bp->l_flag & lbmDIRECT) {
 		LCACHE_WAKEUP(&bp->l_ioevent);
 		LCACHE_UNLOCK(flags);
-		return;
+		goto out;
 	}
 
 	tail = log->wqueue;
@@ -2315,6 +2319,9 @@ static void lbmIODone(struct bio *bio)
 
 		LCACHE_UNLOCK(flags);	/* unlock+enable */
 	}
+out:
+	if (atomic_dec_and_test(&log->io_inflight))
+		wake_up(&log->io_waitq);
 }
 
 int jfsIOWait(void *arg)



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
