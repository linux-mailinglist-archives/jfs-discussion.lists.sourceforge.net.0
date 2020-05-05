Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5F81C5785
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 15:55:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVy27-0006Pi-4Q; Tue, 05 May 2020 13:54:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVy26-0006Pc-MC
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:54:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jsy+vFKG2w3TRg1if2OaNR87RH1NyplF73zGSyvE/Rs=; b=RieVRLswopd8f91DH7Gsd0tadS
 XdAdTP9s2L1bPZ+2bETpUPZzs/+NmSJbsDqAmuIpFE0WRrxSQk1inw+aZ0Lc8kb7QQChxnrul1UlR
 5fkw3Nv46poOYUyMFtYVPxQjcU/+yUHObBLhV9rMeUKMa+DlkiwmXLf1p6CEAhWNRJ4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jsy+vFKG2w3TRg1if2OaNR87RH1NyplF73zGSyvE/Rs=; b=VTdXcz0O2E9oIG6j8p8kud61K2
 c8CbDb+j3FJVYBFKFxP5Y9/vOL7CcVlDn5zOsPH9Tq70n7KT6JFAt6O8URG+p0dJw3Oa1wJDZnZL9
 ECJKW3CS1mTpvvvtdGQRx2h9vvDXURRW0LBMlYuvjnFycYuC44pDEFFFSuv8BfoUAkrw=;
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVy24-00EM5s-Ky
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 13:54:50 +0000
Received: by mail-pj1-f65.google.com with SMTP id hi11so1148015pjb.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 06:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Jsy+vFKG2w3TRg1if2OaNR87RH1NyplF73zGSyvE/Rs=;
 b=TG31h2lHvlOV32idvIopV8FeDNBzrpP6uSBMRXYGBhlacTbKQbgLAB7yW1s+OghDa7
 p80TzukpfZQ19ZLwiJ1jn/Cc2p9RKJaSQ3GZW2ASGloYUa97EdTDal19QwGCIxBpE3/v
 IO3Tj3rhSHZhNqexHH0yuCvznft9zvVxjahrk6LxQP40yD3aUb8+Q6lrtsuHRVA4WpEQ
 muyOvYHbwJ79uQ+jg29fNECEFPVytJ7vHf8kSB7CuV88f1wTVmu52Wy7WBmzVi3RS2Pf
 na4soy+wKmWzasJfamrOzFvXquCB06vSUxanrnN8dPRrjsSZMa3lLJeC43Y6aPx8TlEO
 4rGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Jsy+vFKG2w3TRg1if2OaNR87RH1NyplF73zGSyvE/Rs=;
 b=bkeh+sedFE+6m6FzLO/BizrxYk35Md49OPQwk3N69CfWm+THp/bCecBmV41E7zrz3M
 RB8xCXkFLsjJsmTu4fo9tt0zY94dz5sLxWHd6KRLcXKmRiSjV9fozHy6Ef3pd74QRLFl
 MhjyEAD/GQfwlW3av/zY212WUDOTqFhXXVrqeKwd6PLM2/1H14dKHJJXfXD7tc2VvzLx
 PkDI34iWp303DOKautAA8ObHsR5VnOEAJjxtS/6CknyJZEkOW/ptdLCuNkkOdFzlrsWf
 MLgXsfVeyfwBhB0kyf4y1Fh0l60tMB4msuVpXKwaaSbyNtUnYuX7bx3zyCIQ8oFS0WrZ
 NN0A==
X-Gm-Message-State: AGi0PuYDJlqBVmjCadWS4SkGHqgsQt5u9PgTIr3GBHfrtrU4KNaVkkoS
 TsnZv/N4kbBTQIrWNwjEg6Fc8ESiXlttJA==
X-Google-Smtp-Source: APiQypLIecyv9059S8Yp0y1IaUmW33KUj4UfKa5RG+HrzaPRGW5IduBDk4rIUOfkF4z5zf1tD2P0cQ==
X-Received: by 2002:a17:90a:f302:: with SMTP id
 ca2mr895545pjb.223.1588686882864; 
 Tue, 05 May 2020 06:54:42 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id m63sm2221920pfb.101.2020.05.05.06.54.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 06:54:42 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org,
	Markus.Elfring@web.de
Date: Tue,  5 May 2020 21:54:11 +0800
Message-Id: <20200505135411.28893-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
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
X-Headers-End: 1jVy24-00EM5s-Ky
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

---
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
