Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7837F82C402
	for <lists+jfs-discussion@lfdr.de>; Fri, 12 Jan 2024 17:52:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rOKli-0004uf-5Y;
	Fri, 12 Jan 2024 16:52:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mish.uxin2012@yandex.ru>) id 1rOKk5-0004lL-F7
 for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 16:50:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rVVwhkAzgNNIjBnRMvtTLSOGJVz0cJRV+tdzW1zfGkg=; b=bHVK1cPr1cFu7KdnUCJ35OVKpK
 WLlZvIh4Ce1XrZPVGlTeTC296skprVTUgRLmoUDdq17yx/Wmx+nxPKJzUHEpDyOJO4ofulV64Qz0B
 AKIKg9VltaQS9S0ZRHkxN/s8AlO9rCYYvM2yj/Ptxt3zUZG5yUyfrFoVWQuC+FsI8ZAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rVVwhkAzgNNIjBnRMvtTLSOGJVz0cJRV+tdzW1zfGkg=; b=W
 47k9e6VjOYyxhhBZZ5vTj3RCE3O1Gw2Y9mupe51iIsVkiq6blhm1pG/6WCRneV9SeEQI0OPAecitQ
 cnsZhNjBe87myn858RzBM5Pw/LmuFPCh0lLN0YuMv9bSlSFJQ/Xa0ouWtiRALa3mIUIfS5ZAsf3YQ
 PpKvb1yBPgamWDTc=;
Received: from forward101a.mail.yandex.net ([178.154.239.84])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rOKk1-0007Ml-I7 for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Jan 2024 16:50:49 +0000
Received: from mail-nwsmtp-smtp-production-main-52.vla.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-52.vla.yp-c.yandex.net
 [IPv6:2a02:6b8:c1f:5408:0:640:72fa:0])
 by forward101a.mail.yandex.net (Yandex) with ESMTP id 99742608F4;
 Fri, 12 Jan 2024 19:50:33 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-52.vla.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id JonQVQ0tDiE0-IWp8t1EP; 
 Fri, 12 Jan 2024 19:50:32 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1705078232; bh=rVVwhkAzgNNIjBnRMvtTLSOGJVz0cJRV+tdzW1zfGkg=;
 h=Message-Id:Date:Cc:Subject:To:From;
 b=cRjBV0eglXmwE22B1dB+3kFCg6WSmP/CvWnfVgvwSWy6A9rLFrJ/6QklGA7VrhxiF
 zWrm7Wts5nypD2W3tyHH3mVUkjvbzB1v6GM113GqiVgKvkn5rOTUU3NG8hY8CMX6nD
 p2gY5FwY3gLOmih6HLZR7eJtDi+AJd5UlWFe9OYQ=
Authentication-Results: mail-nwsmtp-smtp-production-main-52.vla.yp-c.yandex.net;
 dkim=pass header.i=@yandex.ru
To: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Jan Kara <jack@suse.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri, 12 Jan 2024 19:50:07 +0300
Message-Id: <20240112165007.4764-1-mish.uxin2012@yandex.ru>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Fuzzing of 5.10 stable branch shows NULL pointer dereference
 happens in lbmStartIO() on log->bdev pointer. The reason for bdev being NULL
 is the JFS_NOINTEGRITY flag is set on mount of this fs. When t [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [178.154.239.84 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.154.239.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mish.uxin2012[at]yandex.ru]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mish.uxin2012[at]yandex.ru]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rOKk1-0007Ml-I7
X-Mailman-Approved-At: Fri, 12 Jan 2024 16:52:28 +0000
Subject: [Jfs-discussion] [PATCH 5.10/5.15] jfs: add check if log->bdev is
 NULL in lbmStartIO()
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
From: Mikhail Ukhin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Mikhail Ukhin <mish.uxin2012@yandex.ru>
Cc: jfs-discussion@lists.sourceforge.net, lvc-project@linuxtesting.org,
 Pavel Koshutin <koshutin.pavel@yandex.ru>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Artem Sadovnikov <ancowi69@gmail.com>,
 Mikhail Ukhin <mish.uxin2012@yandex.ru>, Mikhail Ivanov <iwanov-23@bk.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Fuzzing of 5.10 stable branch shows NULL pointer dereference happens in 
lbmStartIO() on log->bdev pointer. The reason for bdev being NULL is the 
JFS_NOINTEGRITY flag is set on mount of this fs. When this flag is enabled,
it results in the open_dummy_log function being called, which initializes a
new dummy_log, but does not assign a value to bdev.

The error is fixed in 5.18 by commit
07888c665b405b1cd3577ddebfeb74f4717a84c4.
Backport of this commit is too intrusive, so it is more reasonable to apply
a small patch to fix this issue.

Found by Linux Verification Center (linuxtesting.org) with syzkaller.

Signed-off-by: Mikhail Ukhin <mish.uxin2012@yandex.ru>
Signed-off-by: Mikhail Ivanov <iwanov-23@bk.ru>
Signed-off-by: Pavel Koshutin <koshutin.pavel@yandex.ru>
Signed-off-by: Artem Sadovnikov <ancowi69@gmail.com>
---
 fs/jfs/jfs_logmgr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 78fd136ac13b..d6f0fea96ba1 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1983,7 +1983,8 @@ static int lbmRead(struct jfs_log * log, int pn, struct lbuf ** bpp)
 	bio = bio_alloc(GFP_NOFS, 1);
 
 	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
-	bio_set_dev(bio, log->bdev);
+	if (log->bdev != NULL)
+		bio_set_dev(bio, log->bdev);
 
 	bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
@@ -2127,7 +2128,8 @@ static void lbmStartIO(struct lbuf * bp)
 
 	bio = bio_alloc(GFP_NOFS, 1);
 	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
-	bio_set_dev(bio, log->bdev);
+	if (log->bdev != NULL)
+		bio_set_dev(bio, log->bdev);
 
 	bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
