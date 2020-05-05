Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5491C5A0E
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 16:51:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVyud-0006Rd-Pe; Tue, 05 May 2020 14:51:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVyuZ-0006R5-94
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:51:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gqMtkzsSoPZBMMdRPapCy9u7s4SBqp2jU6yXsz651xs=; b=hfeH/y6GiEW8fUoHfkDKsFq7SF
 jSOROssV9FG4elsVszYL9OmVCCowRwEMUP6jSdS9zStSEziPmwNRUj82iRmHea0rXpXLguQp3Znjr
 eox6eW51tWsDhLgm5l83LYrJNrqMyH8TCSarnraT0LFjaAM3IlI2LHR8uHv2iXmEAtZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gqMtkzsSoPZBMMdRPapCy9u7s4SBqp2jU6yXsz651xs=; b=XLqINcm17DfkAaSZb6kAdt5yUc
 Pkgyhm3Ayspda8wU3USKffXTLL3F7QAWNq+hPNY540w/B5d5SzOWNzjlgDAizMqDpoVL93am7W3pu
 3c6gE8SzKlDtHXbGfszwRa2h0Do6yFOcxRlpk17PQywdn6qZBukglnsfTa4Da0e9kc8Y=;
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVyuX-00EPq6-C9
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 14:51:07 +0000
Received: by mail-pl1-f195.google.com with SMTP id t7so922482plr.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 07:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gqMtkzsSoPZBMMdRPapCy9u7s4SBqp2jU6yXsz651xs=;
 b=sBavfMWdGoIANOSSLVXfXxC83qThaa0PpqS7Gu0n+50OKtn9f0tzizOmIqG2aTxtZ2
 xp3HubkEHyBYGfLwk9sdggL6flPiZUZvKKQwy8GsCM8yTZ7LaNtDSwpxZpNzwSNfv6u0
 H1Pio9FUQcYG/lkYk30Ywst5VEoF6G/Zt5DsgQxlGCZJevYunPeUUrixpsa1Sf8j6TQB
 H2ruHWKzH0i8PhmCWp67lXb1UO+erKSBQAj5FlgOew7zF2kHf5BvBQzv0TmlWGewcqFq
 Js+WWOGfBGVCGQTcfvhaZoqleU+outnnSDhigFJ1WXwhQCEvUdpPv4rpIH/3QZzcOH2G
 IcBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gqMtkzsSoPZBMMdRPapCy9u7s4SBqp2jU6yXsz651xs=;
 b=RhYfgT8SR7n8JCD9jrzG14NbCcaSxCP570kK1Z+7TG10ofTl/C1VAVV6/c5apm4Jc8
 jlb1i/o3SCFKGad/RDnSOupbZc6T7wT2AEARk+18fY6Yvt6M1RwJKbJ2xjoNH+qZj54K
 AP22vZvU981DlSEyIF1YXGIBC3N56gTyeuxfeR861VglGr7SiFW2XMKqvYPQtpYb7yE/
 D2/FrK78UJ9SAHWSJIgK0X76khJuWKchp12kKXGrof1Dmq/ZINh7GyAO+uM+2hXMrom0
 SGHpwZBkjLiPZMuEJE951DLRELhnVez24bifduvOpDe1ugFbddmqJPRnbJlDlUmtfumY
 vBvQ==
X-Gm-Message-State: AGi0PuZhiU3TbN9BlIWIUFypzWHpiJdDgdAuHrkaLFBvvjQhg2zCecJo
 LAjXNTxTz39OR0o3Bg9uB77Or+vXuyarXQ==
X-Google-Smtp-Source: APiQypLFBmQScYPm9uhGYX3oNnygObD/e41/YA0FYVhWFChPNj/bANXZeqfILu/X9kZs1suM8o1NIQ==
X-Received: by 2002:a17:90b:93:: with SMTP id
 bb19mr3545245pjb.134.1588690259719; 
 Tue, 05 May 2020 07:50:59 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id l16sm1727711pgh.35.2020.05.05.07.50.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:50:58 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org,
	Markus.Elfring@web.de
Date: Tue,  5 May 2020 22:50:13 +0800
Message-Id: <20200505145013.8040-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
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
X-Headers-End: 1jVyuX-00EPq6-C9
Subject: [Jfs-discussion] [PATCH v2] fs: jfs: fix a possible data race in
 txBegin()
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

The functions txBegin() and txLazyCommit() can be concurrently executed
in the following call contexts:

Thread1:
  jfs_write_inode()
    jfs_commit_inode()
      txBegin()

Thread2:
  jfs_lazycommit()
    txLazyCommit()

In txBegin():
  tblk->next = tblk->last = tblk->xflag = tblk->flag = tblk->lsn = 0;

In txLazyCommit():
  spin_lock_irq(&log->gclock);
  ...
  tblk->flag |= tblkGC_COMMITTED;
  ...
  spin_unlock_irq(&log->gclock);

A data race can occur for the data structure member "flag". 
This data race was found by our concurrency fuzzer.

Thus use the spin lock "gclock" for the resetting of five 
data structure members in this function implementation.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
v2:
* Change the description.
  Thank Markus Elfring for good advice.

 fs/jfs/jfs_txnmgr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index c8ce7f1bc594..a1f124aad2e0 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -415,7 +415,9 @@ tid_t txBegin(struct super_block *sb, int flag)
 	 *
 	 * memset(tblk, 0, sizeof(struct tblock));
 	 */
+	spin_lock_irq(&log->gclock);
 	tblk->next = tblk->last = tblk->xflag = tblk->flag = tblk->lsn = 0;
+	spin_unlock_irq(&log->gclock);
 
 	tblk->sb = sb;
 	++log->logtid;
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
