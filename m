Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8FB344BF3
	for <lists+jfs-discussion@lfdr.de>; Mon, 22 Mar 2021 17:42:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lONdD-0001Jr-7h; Mon, 22 Mar 2021 16:42:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <mail@anirudhrb.com>) id 1lONAT-0008FN-TA
 for jfs-discussion@lists.sourceforge.net; Mon, 22 Mar 2021 16:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Date:Subject:Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=; b=kqBRyYif4kz1GznLLN1iwsuHfO
 RQtzxkWAu87sAMCDDI9gEE8RLx3Fv53bE8w9iKS2z5oL1ws3V9owadHqS5dpFXO9vRq8wPhzLcymR
 a5OlSal/3LGXtocJ6ENSQO/79mbuvAiTG/t87D/80NwAbzrl6FieORmLfs61lV96Rrk4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Date:Subject:
 Message-ID:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=; b=M9um+xYkVqCSLtNEc4jkKPrhVC
 tV+PATCY9g+BEz2ck+eHFSd9VOp0aCaG6zZLXhfChgTI2/vMc8Hp2ThveBEQy8QfOTwqwdxWSm98W
 +wjye1Z4D0wQi8W2FnksEb4obzX6PusSRqFBye7ZZz7ZqceDk4/qt0adLaE1KgkIjghU=;
Received: from sender4-of-o53.zoho.com ([136.143.188.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lONAO-0000Te-Oq
 for jfs-discussion@lists.sourceforge.net; Mon, 22 Mar 2021 16:12:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1616429537; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=PRMysHNprZ3jf2UHc7wrhs76Alxf8YivXUfHuFraT286M73IEtLOyz6Nu5MWKEdsW8LSPK47eltnDwIxiCLi7EUP4nIO+/9hI+MyDUj7IXM0dZ5v3+4jX9snrH1BRme1Xikfdnhl40kNaPMZxGTMLIpBmpbiO+wYWepjemTMY3A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1616429537;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:MIME-Version:Message-ID:Subject:To;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=; 
 b=A93zRYLFYdWAi01ZZwv796KSoJ9FrLQBJ9uBA125ndMv2d+GzRNf/lwjijEmoERSucguGnuCrF/lTIJioy8+nCV5g5oNnU5v0LqDbok+mORG9r0kBv9QaGGelWMI8RsjdVgMEZOWK9YDI0FRoUUO4NAbGa5/WXJ4Vj6R4OTbMQ0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=anirudhrb.com;
 spf=pass  smtp.mailfrom=mail@anirudhrb.com;
 dmarc=pass header.from=<mail@anirudhrb.com> header.from=<mail@anirudhrb.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1616429537; 
 s=zoho; d=anirudhrb.com; i=mail@anirudhrb.com;
 h=From:To:Cc:Message-ID:Subject:Date:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=qXkPKXLIdi3YS2QxskiB00F5rS0qkdSxQYzMcJTjnMo=;
 b=T5hPkdOkdyoV+EvrAwp/VH/mTozUZyL2Yn4mutF7Yh+y/3xv8gyogTlrnjd3C5QE
 H0xJ+aHMO3k2qqsUkD5DjSWKFA5znZL7wRRuIRr/jCRVU2PFnVVV0OwhHuzaiVZGBKM
 B7NQ1ucBFxS2BB15+l0YyarIzS+8whu204hoX8ww=
Received: from localhost.localdomain (106.51.105.21 [106.51.105.21]) by
 mx.zohomail.com with SMTPS id 1616429533738896.0472127781908;
 Mon, 22 Mar 2021 09:12:13 -0700 (PDT)
From: Anirudh Rayabharam <mail@anirudhrb.com>
To: shaggy@kernel.org
Message-ID: <20210322161147.5593-1-mail@anirudhrb.com>
Date: Mon, 22 Mar 2021 21:41:47 +0530
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-ZohoMailClient: External
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [136.143.188.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lONAO-0000Te-Oq
X-Mailman-Approved-At: Mon, 22 Mar 2021 16:42:17 +0000
Subject: [Jfs-discussion] [PATCH resend] jfs: fix use-after-free in lbmIODone
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
Cc: jfs-discussion@lists.sourceforge.net, gregkh@linuxfoundation.org,
 syzbot+5d2008bd1f1b722ba94e@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org, Hillf Danton <hdanton@sina.com>,
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
