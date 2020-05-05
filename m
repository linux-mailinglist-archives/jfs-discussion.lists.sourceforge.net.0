Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9131C5780
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 15:54:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVy1H-0003ul-H9; Tue, 05 May 2020 13:53:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVy1G-0003ue-2d
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:53:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QJU1rgdyR3dsjV2URMfZxPtiLnMEVx7zziz4YW88wtc=; b=MqT64V1+JJSoR8WcJl/lfCY5Md
 Shl4kQMB0LmudjbIu1IYCko1xpPHkrBlKIkLWcOA2mw/reokjdyMMe7gja3hm4aOTHSG+5PMa+Izd
 0z6giRYSz4gBoMKaETZUPth9+AzFDYF2ZLb5lwOwflbyCdfr8rCmYgW2cSEQ8lCkzTAw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QJU1rgdyR3dsjV2URMfZxPtiLnMEVx7zziz4YW88wtc=; b=b2HlJ7VB0AJvjpVHhSH/EKNSKz
 k9wqxGgMYHdTuuy88Sfe3Wl8322IzkaVRI+AXW3Dc9kas9KpFZ/piYOV9PrKNJ5wkt7Wao6CUHivs
 oK3dL7z305Oj5cdS0NcAHwZ6Z4fuEzyHEdV14lCL25VyefjzPVOLdds7p92FBqiV94/E=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVy1D-00EM2T-VA
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:53:58 +0000
Received: by mail-pf1-f195.google.com with SMTP id w65so891579pfc.12
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 06:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QJU1rgdyR3dsjV2URMfZxPtiLnMEVx7zziz4YW88wtc=;
 b=I9RO3pgjGmr1FZpr0FwTzwdMQZjnnQ/wVjovFIecF1T58ixbSFm2fJTWOqsJQ+QiHg
 OyJFLLZyE5MrODJ7pAmAy3cKW7fO7d9SZOH8/p55bXqM1ySA0LLe6GZ4LP9nHsoIhRBI
 5TqYq3nNSBYoL+U8t/9YNBd2CVnf/oW0AKwN9Aj+dI0UVFEMsiM5iLDXSMIyiSyA0h7+
 C6kWDkjUSP+ebxyGtTmhkRcALPduflyZwo1on3TtMGHfANUKwPXUSFUZt8NoZWV5s45v
 aSCOBUSupfNy1R/dN+O+5R0A4/Uc0YEUHBDJDnAcYaXZGx9D7Qt2Q1Z90tIDjrRTWhAH
 tFcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QJU1rgdyR3dsjV2URMfZxPtiLnMEVx7zziz4YW88wtc=;
 b=T/xXiffIHV2DAIuK63nQhLfnmiKsNROEXqGmcWSq9gcHW766TXZvu39THni4MsRTL3
 tZHiVhwpyL7ieAZsBZJU48j2iq14B4my2hxyLEQpPCqLKxIUlFrNf76sM6GZSZO3mKX1
 5m7gGtqKqKwbSOyndsUVGVMH9IMwciFe2qYr15TP6qrdpeOBlICSGDCa3HSQu/Mmm1wc
 13moMgRQQDkR98+j9DWrNvfhs/ekPZyPzQK9s2VgDWBCqmWTFE1MykLAyGfPtRvYIt8E
 uG4tpl9/kdAEujJarmm67kpsqNiQ5Y8dhK7FKNU5WMUtDdMjtA4er+LkZKdedPkhmn0g
 i/cg==
X-Gm-Message-State: AGi0Pub+JlN0ZZpczcagQC4ftMRxVzOKZnH/1m1qZsSNN9tGVW8r83oa
 UbvoMwCoUHQCjv8JucrmUQY=
X-Google-Smtp-Source: APiQypJTpVbLFJfbC4pTfe+3bRqpJK6v1l7Gl1XmYpllcrZp8mtXHfu530JzQx2s1IZ5/Qt1u+NwBQ==
X-Received: by 2002:a62:e51a:: with SMTP id n26mr3180048pff.301.1588686829155; 
 Tue, 05 May 2020 06:53:49 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id i15sm2061013pfo.195.2020.05.05.06.53.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 06:53:48 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org,
	Markus.Elfring@web.de
Date: Tue,  5 May 2020 21:53:13 +0800
Message-Id: <20200505135313.28793-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVy1D-00EM2T-VA
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

This data race is found by our concurrency fuzzer.

Thus use the spin lock "mp->log->gclock" for the assignment of 
the data structure member "log->cflag" to a local variable 
in this function implementation.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
v2:
* Change the description.
  Thank Markus Elfring for good advice.

---
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
