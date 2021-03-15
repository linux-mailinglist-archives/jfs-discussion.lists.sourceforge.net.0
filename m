Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C313E33C7FA
	for <lists+jfs-discussion@lfdr.de>; Mon, 15 Mar 2021 21:47:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lLu7J-0008UN-K6; Mon, 15 Mar 2021 20:47:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mail@anirudhrb.com>) id 1lLsoA-0001sj-0T
 for jfs-discussion@lists.sourceforge.net; Mon, 15 Mar 2021 19:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=; b=XAkEQoDC+eKWfYtp+E5C7FRrWI
 5Wix6Wkv4LIJvP6Q9BGaynTRjGTe8xI7MCKYkn5rPmCBnXtTwKkf8qHh08x4M4xiXrfCx1UOehiV+
 RDmwORyyVBFJB7uKzeCGW4CtrIf8H/Qo37eH4jJDcyUI9OQa/SxDYzjzMfUjm9LPyMlw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=; b=aJEN8AHn9jzNgyIClBICoXychD
 JsgXGyI+TozX27zzGbNklGirSM/rRbStFFctaSZTvf86iO9iJgFtjJu9oCTqb3YuqRsdmdXL1OECs
 /6O3YBn/eiP1UVRDdESvqYk4m26PxtNFgpXA/qeIj309xVZJUEpRuPno5onoK0nJXvh0=;
Received: from sender4-of-o53.zoho.com ([136.143.188.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lLso0-0001mD-Jb
 for jfs-discussion@lists.sourceforge.net; Mon, 15 Mar 2021 19:23:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1615835255; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=HAkH51heumbQwdNzsjPdBupsUuBZUhiZBqEOPY9qjCTw0h+jT6qDKTSl5cPPyG9mfzGKEzm9envje0R/hXnWr2zeNVOt2kIT/H1IMfEJqYOEO8Eycu9QZ4RypLZo/y+5iRbyP/B+RBoqe3atbwH2efqHbaHNfxw8QRBcpO5QtD4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1615835255;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=; 
 b=VskweQsyJ0O92QukL95je+EvRd84ESYR5M1oeDmMdFr0gYywAJP2jep1VQ5xQnqsLVMu0JQ7mI/uGRCv+x99rt/94FsmQeTZ7uqlg74pDPWGwFiteH0H8+M5AvrdXfUAVnvIOWIGYTj7rA8MrDhhe3b3vCzjHlSNSRY5I/oR6oY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1615835255; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=;
 b=ZePJWn+dogfxbUGEc8UgaRZdlIKn2mO6hobca/LZYecW6nM2vzotDxQpe/9Gxf//
 d+WJ4E2nPmcAwjDeFyTu3QRo+fEx+sW6euZHBvKeRP3lAtIo5rQH42gLxzBABZAJ2iq
 QfE+YdK30/JEhdcD20QzMMI3pX2fJXz2QNFH8+pk=
Received: from localhost.localdomain (106.51.111.227 [106.51.111.227]) by
 mx.zohomail.com with SMTPS id 1615835252947113.0549001989333;
 Mon, 15 Mar 2021 12:07:32 -0700 (PDT)
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: shaggy@kernel.org
Message-ID: <20210315190727.21576-1-mail@anirudhrb.com>
Date: Tue, 16 Mar 2021 00:37:27 +0530
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [136.143.188.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [136.143.188.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lLso0-0001mD-Jb
X-Mailman-Approved-At: Mon, 15 Mar 2021 20:47:09 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix use-after-free in lbmIODone
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
 syzbot+5d2008bd1f1b722ba94e@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, hdanton@sina.com,
 Anirudh Rayabharam <mail@anirudhrb.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Fix use-after-free by waiting for ongoing IO to complete before freeing
lbufs in lbmLogShutdown. Add a counter in struct jfs_log to keep track
of the number of in-flight IO operations and a wait queue to wait on for
the IO operations to complete.

Reported-by: syzbot+5d2008bd1f1b722ba94e@syzkaller.appspotmail.com
Suggested-by: Hillf Danton <hdanton@sina.com>
Signed-off-by: Anirudh Rayabharam <mail@anirudhrb.com>
---
 fs/jfs/jfs_logmgr.c | 17 ++++++++++++++---
 fs/jfs/jfs_logmgr.h |  2 ++
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 9330eff210e0..82d20c4687aa 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1815,6 +1815,8 @@ static int lbmLogInit(struct jfs_log * log)
 	 */
 	init_waitqueue_head(&log->free_wait);
 
+	init_waitqueue_head(&log->io_waitq);
+
 	log->lbuf_free = NULL;
 
 	for (i = 0; i < LOGPAGES;) {
@@ -1864,6 +1866,7 @@ static void lbmLogShutdown(struct jfs_log * log)
 	struct lbuf *lbuf;
 
 	jfs_info("lbmLogShutdown: log:0x%p", log);
+	wait_event(log->io_waitq, !atomic_read(&log->io_inflight));
 
 	lbuf = log->lbuf_free;
 	while (lbuf) {
@@ -1990,6 +1993,8 @@ static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
 	bio->bi_end_io = lbmIODone;
 	bio->bi_private = bp;
 	bio->bi_opf = REQ_OP_READ;
+
+	atomic_inc(&log->io_inflight);
 	/*check if journaling to disk has been disabled*/
 	if (log->no_integrity) {
 		bio->bi_iter.bi_size = 0;
@@ -2135,6 +2140,7 @@ static void lbmStartIO(struct lbuf * bp)
 	bio->bi_private = bp;
 	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;
 
+	atomic_inc(&log->io_inflight);
 	/* check if journaling to disk has been disabled */
 	if (log->no_integrity) {
 		bio->bi_iter.bi_size = 0;
@@ -2200,6 +2206,8 @@ static void lbmIODone(struct bio *bio)
 
 	bio_put(bio);
 
+	log = bp->l_log;
+
 	/*
 	 *	pagein completion
 	 */
@@ -2211,7 +2219,7 @@ static void lbmIODone(struct bio *bio)
 		/* wakeup I/O initiator */
 		LCACHE_WAKEUP(&bp->l_ioevent);
 
-		return;
+		goto out;
 	}
 
 	/*
@@ -2230,13 +2238,12 @@ static void lbmIODone(struct bio *bio)
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
@@ -2315,6 +2322,10 @@ static void lbmIODone(struct bio *bio)
 
 		LCACHE_UNLOCK(flags);	/* unlock+enable */
 	}
+
+out:
+	if (atomic_dec_and_test(&log->io_inflight))
+		wake_up(&log->io_waitq);
 }
 
 int jfsIOWait(void *arg)
diff --git a/fs/jfs/jfs_logmgr.h b/fs/jfs/jfs_logmgr.h
index 805877ce5020..3e92fe251f28 100644
--- a/fs/jfs/jfs_logmgr.h
+++ b/fs/jfs/jfs_logmgr.h
@@ -400,6 +400,8 @@ struct jfs_log {
 	uuid_t uuid;		/* 16: 128-bit uuid of log device */
 
 	int no_integrity;	/* 3: flag to disable journaling to disk */
+	atomic_t io_inflight;
+	wait_queue_head_t io_waitq;
 };
 
 /*
-- 
2.26.2




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
