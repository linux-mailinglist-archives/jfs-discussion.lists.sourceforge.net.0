Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE3E1C45C3
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 May 2020 20:24:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVflM-0005ik-QK; Mon, 04 May 2020 18:24:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVflL-0005id-MK
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 18:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MttICuxXavbYMq8WIjicbuvf1Y6ye3X+bWJxx0AAnXc=; b=Zxf9yeTTlZOhGzL5VycIO/lJiu
 LFQvRLUGzaG5x8vexu5sHwGYyqyRtD5So0znhhzaVzbyqSUynrp7qA4LC2K5XDK7zc23SmxqistJg
 IA6x4zYoAW8vLgLYDSVRlX9ty8RE5Mlkx9rNj8fjU/V17shLy6KIyJCJZJAM2kIuWcbA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MttICuxXavbYMq8WIjicbuvf1Y6ye3X+bWJxx0AAnXc=; b=OIVp6/VV4/ICXuE1YYiash0Dkv
 hhT1+zmPzdtiGWcQCslUjEeOJsk1iUYbjQqwytdvUp6q3l0JHWZEyLJZ1E/Zg8PKswkgCwJ293pZS
 oNN7BOC/MCU+b2cbBtRsqpP42pvIVDwYeDAa5MK2YfkyAXdmRID/bUmu8zvYlZEWF9cU=;
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVflJ-007Gfp-QC
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 18:24:19 +0000
Received: by mail-il1-f193.google.com with SMTP id w6so12236877ilg.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 04 May 2020 11:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=MttICuxXavbYMq8WIjicbuvf1Y6ye3X+bWJxx0AAnXc=;
 b=GITI6WzHQ8sPVvnvNjM/77u08qgAq7eXKr1ZaNlw2etpk+K0D2RIl+nt2Lm77+qcp+
 WT2VCckI36iyFh/n8nGxdzrNp1gUGTzjtjJT4tY6Ko36IvJZsAkM/5vnNjvSbVf9LaY7
 DUccfi+2/Zf2VjUl8GIMQCaAHtBb1N/u3mL7rD9CgeB9QA7rKNYFhrNzmttYAW1tGQ2c
 wr9SK36Ap5IDTURoTjocTnJfqz4YlSt8L62ieB+NXzXqGVuPAPdHkPtqcJoJUaiTR5oE
 +o2yVX7s5M4PUNdc5bqReRhkodBRSfxoVorAVIJUmNEMq75zMns/Panug5Tr+3cxf+Ya
 FjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=MttICuxXavbYMq8WIjicbuvf1Y6ye3X+bWJxx0AAnXc=;
 b=LjtyD6u+Hy9fZZmCHwurhwL7tNdaw0vVkP6lzw9663YV8qWy5hrYGudPJumR4AGnSu
 6Gh4EAwqKXvzgmQTgju2CU8qD/EfIVugOo6liLCBpe+2hI13d1iIb831ryvcyYipHOjx
 Sq32NOuLeDrZU9WnssxLRo+rQxxlIRpz71bUUi68AYPE3qV3kAC0gx3xtE/mLuY52Jj0
 C+Ccic1GqLDbnSejU+tGjWnb3OsXyehsL0vvvyNmKmVVBrYUIgwP8dCEKmV1N1oYNXJI
 aY1X7bbiDiXeBUL+kwKa73mKhf6RI6FQjkKnYmnvgeqNlv5BPLJl8Oyg5cpmcFMyxqTa
 U8ew==
X-Gm-Message-State: AGi0PuaEqMw6q3Px77Ev66brznHQo/phVrxoWzLqCiMM85T07djSriFV
 JRuLi664s0rm3Q8rostAvXPwgV98EHU=
X-Google-Smtp-Source: APiQypLtehcfIcerd1n0dU1u3gBN3WpIFPxv0tu5ClUiy1B3odbFiv7d19IM0wiaN9hOXAODfk/zBA==
X-Received: by 2002:a65:6713:: with SMTP id u19mr1438519pgf.143.1588606476815; 
 Mon, 04 May 2020 08:34:36 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id c4sm7178830pga.73.2020.05.04.08.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 08:34:36 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org
Date: Mon,  4 May 2020 23:34:11 +0800
Message-Id: <20200504153411.13679-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jVflJ-007Gfp-QC
Subject: [Jfs-discussion] [PATCH] fs: jfs: fix a possible data race in
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

Thus, a data race can occur for tblk->flag.

To fix this data race, the spinlock log->gclock is used in 
txBegin().

This data race is found by our concurrency fuzzer.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
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
