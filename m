Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0A31C3E8A
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 May 2020 17:32:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVd4r-00067A-Nm; Mon, 04 May 2020 15:32:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVd4q-000671-VE
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 15:32:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6x/gkPpdUu5ZmCBu+qA+TYPM/TczyqfC7nUcr3D0L1k=; b=UK7Ii3J+NgZC5t2C0tUIiMdB0T
 JoPbuWKXZzHP2p2UbwzXDL9tsu6ERe40TemQt7Igsgs+6PsQZkdsRutW59DcgXdy+7cB8fDLQCpuK
 OwkksLU1FnNsx5+2OPu/3mRBiCEiGLesefjqMZAVId4pZhPPGKNxOQdyiZvtFYc/+tGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6x/gkPpdUu5ZmCBu+qA+TYPM/TczyqfC7nUcr3D0L1k=; b=UvNScjTvUZyvm4uyvaLsG+iH+2
 7qXW3+DVfGqrGzkeRxsPqEiVJuMnSenlB8Rq977dq+RofrVkSBFvUw35iOkszuv5CO340GJ1kuhU0
 Q5Z+/3OAXUHmNSioY9DUU6SNG9PnsJ6IriyE/EiJt/KVoIz7RqZ3KUOofxYAkb8fl7L8=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVd4p-0070td-My
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 15:32:16 +0000
Received: by mail-pf1-f195.google.com with SMTP id 18so5645740pfv.8
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 04 May 2020 08:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6x/gkPpdUu5ZmCBu+qA+TYPM/TczyqfC7nUcr3D0L1k=;
 b=XTPPH0DQ0On3AJBqn12M+3nev/cwzx+gz00/YUky/lwUu6RbphgQjtpuZlqjH+XaM4
 bEuVcKAZ+5bOsrtkY77Qm+ZWBkSphxa2KPb152eY5jVMtuw1YKMSEamDWLtZ0IDLhufE
 /OxOfjLf7XzKtQLjPznBqcoGl3UONq7vS1j08DscuQ81NvDYIZTqEfUrcOU5C6O2mn7u
 OpKYoC1AH3D56+CBzrWckRFAyTN4JeAv4Ai98hs9+F1WJHmsh4O7oczY+T3GQJeJZk0F
 MuOsgUt2KOWnAUbAMxlsaFmUS/F2UmOsjYzyfnirTebXu9aFgen9wcwbzIl1JrrXQJoH
 KI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6x/gkPpdUu5ZmCBu+qA+TYPM/TczyqfC7nUcr3D0L1k=;
 b=q0Ycy2PtjPNMqOrKsNJx+w9U9yYSWsZp8JkeiFmHJzmfVPJk3wZ9vtJ3UWe/1Fclv2
 HOWzp4XP0t6qPr6V1jhPErROm0QFz4ZkURA6rBaPDW+SGRNUUJKseoN0s+/aWXuazGLC
 pRNr7SeTjdCrd5nDJGzhZzWi4UjMfBVm4GXi71t8aMWk9Hzl6di5ksONzDWA+VrooiZF
 NN/wEjAAXuiMz55AsGjufh0rx8DjjjD/wU5UDzAN6uYzT0VeNzBBKx+9V2S5hTtaJM64
 IfQ0XHx4ozgkYaOfqrqtBBToCqIqIuiKVQtzr0U4iYB7gm6ov5Wd6Sq536cAtwIqVsjM
 yJHg==
X-Gm-Message-State: AGi0PuY/Rf71wOcSMgbPKVE/bWYAA9LOEAXOqImzpLkYGRLzKe0asSc2
 bWIk7hkRWDXtyuZSIKwRtthWtVLNTDw=
X-Google-Smtp-Source: APiQypLR7YUeSVYAK2wE39xo97f1yngB2mL78CcKaxaBSUitWDFxaVQ1+ct/1M+wrWIFt23hN6kjgA==
X-Received: by 2002:a63:a043:: with SMTP id u3mr16617563pgn.287.1588606329912; 
 Mon, 04 May 2020 08:32:09 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id l137sm9226518pfd.107.2020.05.04.08.32.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 08:32:09 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org
Date: Mon,  4 May 2020 23:31:38 +0800
Message-Id: <20200504153138.13464-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVd4p-0070td-My
Subject: [Jfs-discussion] [PATCH] fs: jfs: fix a possible data race in
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

To fix this data race, the spinlock mp->log->gclock is used in
metapage_writepage().

This data race is found by our concurrency fuzzer.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
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
