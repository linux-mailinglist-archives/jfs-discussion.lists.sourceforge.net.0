Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 705551C5A09
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 16:50:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVytm-0006Nb-M2; Tue, 05 May 2020 14:50:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVytl-0006NS-5J
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:50:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FHjXPsU26H0OF2JRAex/ddIqer39oiBwJgvFSKTEKIY=; b=ge1yOIKdrcGpZ1qykUsc53u6IW
 w1Tj6Rhna8mWSy2Hvl9Je/9KnDr1it6g3P4t50N3hLMxdjWhPNPvZmlIVQ8hjMYFNvZfOowH52mY6
 w9gaQSO2H0UZ+hdNg6SlAocSysO1UFC7JcEL5/pvz0dG+dZ5HN6vM7vShcCmwERuSFl0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FHjXPsU26H0OF2JRAex/ddIqer39oiBwJgvFSKTEKIY=; b=EFMWEgrRSQIKBPJ6Nn5KUVy7eZ
 u1Hb69mTlnzzEkpPTxIHXrnl6WJa4qJoiP3yoBQgt/nb5mdVfXB+9AjQgiubCbe/2QktPIj6SHGj3
 siS9QYt4byo2ofm1GC02BQJehwnh+2KuP5JvJjUYWqdA7XZ/vGEllphbPBLB3PQeRfms=;
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVytj-00EPn4-TC
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:50:17 +0000
Received: by mail-pj1-f67.google.com with SMTP id t40so1188398pjb.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 07:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FHjXPsU26H0OF2JRAex/ddIqer39oiBwJgvFSKTEKIY=;
 b=loAfKpvrXy8JZk/co9QVvVYUvjTD5FZP/X51udmNZb9CVrPWUPLJjgkVeX4yzMNuos
 i4s9co+v9pPLXg7fiTwT8CjSc7DvVUck2Pw5Il4WWHdId9tQN417sNnw+0dnKWo/srlQ
 tCcXviaPvUcA2ReZgq+YemUOsAIppGo9k+H+EGZmfugrabUOZD8RZDeKTvWEKHTvciss
 OXYim4bYgvD2sSoUH99mEJ4Rr0zPYRIbmMTpXm7a2M2P/s3ukqKIgrE3KS2mDbf06dt3
 IJQYwsmGwUj1njTjH9KNy5V9q+ZVw39HViCX6XuXZ20ONqc4h3HKcCv2FfRS+Xpc0TNr
 GcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FHjXPsU26H0OF2JRAex/ddIqer39oiBwJgvFSKTEKIY=;
 b=OXm3QKQSLHOwGr9jf4WhtsgaTuOBdvB+p4Zm+yMx34wvW4OWLThWp8Gkla923EUwTH
 yk1ZO6DcWEgpUCnaclOY+6PVdJkYSmC5lJ5p0gfh4LWHeCGICK7lj27VQr7VIA3KeCfV
 XGGw316GgQ1XLO2cAuujffTl3Z7hN2votIrGdCHfLbOJhfOzubJ3nrGgL1HvX3Msdn8F
 Cwdd3knHXHmCP3KDFiRUUE8BzJgaERfAPoeSq4GPn5jJhgbHQDWQQCq3cGGsCXs79GRK
 kG9bRAIB+62S30otNdqjcVvNUH7sqy9BkvkjbhvgK7+ArfsRN4hMQfyt3IthDo8YrJT2
 zsFQ==
X-Gm-Message-State: AGi0PuYeArfgeGiZxBnE0+sL+0mjh6cl56AeWSAI9KRWhw6/Y94+ouaF
 4O4cpdPRqLIKaarI54ctLx4=
X-Google-Smtp-Source: APiQypIQMNjcbl+8Wcw3aymz/pGlaLzA8y3jtrAd6BgNWxq7pxYsvDuca1/u9Gn2cd0YEexhcSq+bg==
X-Received: by 2002:a17:90a:2645:: with SMTP id
 l63mr3610638pje.54.1588690202879; 
 Tue, 05 May 2020 07:50:02 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id c84sm2288400pfb.153.2020.05.05.07.49.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:50:02 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org,
	Markus.Elfring@web.de
Date: Tue,  5 May 2020 22:49:30 +0800
Message-Id: <20200505144930.7990-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVytj-00EPn4-TC
Subject: [Jfs-discussion] [PATCH v2] fs: jfs: fix a possible data race in
 metapage_writepage()
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
Cc: jfs-discussion@lists.sourceforge.net, Jia-Ju Bai <baijiaju1990@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The functions metapage_writepage() and lmPostGC() can be concurrently 
executed in the following call contexts:

Thread1:
  metapage_writepage()

Thread2:
  lbmIODone()
    lmPostGC()

In metapage_writepage():
  if (mp->log && !(mp->log->cflag & logGC_PAGEOUT))

In lmPostGC():
  spin_lock_irqsave(&log->gclock, flags);
  ...
  log->cflag &= ~logGC_PAGEOUT
  ...
  spin_unlock_irqrestore(&log->gclock, flags);

The memory addresses of mp->log->cflag and log->cflag can be identical,
and thus a data race can occur.
This data race was found by our concurrency fuzzer.

Thus use the spin lock "mp->log->gclock" for the assignment of 
the data structure member "log->cflag" to a local variable 
in this function implementation.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
v2:
* Change the description.
  Thank Markus Elfring for good advice.

 fs/jfs/jfs_metapage.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index a2f5338a5ea1..026c11b2572d 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -351,6 +351,7 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 	unsigned long bio_offset = 0;
 	int offset;
 	int bad_blocks = 0;
+	uint cflag;
 
 	page_start = (sector_t)page->index <<
 		     (PAGE_SHIFT - inode->i_blkbits);
@@ -370,8 +371,14 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 			 * Make sure this page isn't blocked indefinitely.
 			 * If the journal isn't undergoing I/O, push it
 			 */
-			if (mp->log && !(mp->log->cflag & logGC_PAGEOUT))
-				jfs_flush_journal(mp->log, 0);
+
+			if (mp->log) {
+				spin_lock_irq(&mp->log->gclock);
+				cflag = mp->log->cflag;
+				spin_unlock_irq(&mp->log->gclock);
+				if (!(cflag & logGC_PAGEOUT))
+					jfs_flush_journal(mp->log, 0);
+			}
 			continue;
 		}
 
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
