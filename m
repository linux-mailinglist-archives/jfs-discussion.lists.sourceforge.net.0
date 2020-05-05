Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E771C5A7E
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 17:07:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVzAU-0007Cv-Cc; Tue, 05 May 2020 15:07:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVzAT-0007Cp-FQ
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 15:07:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NNSggG8Wl6Z2agG/S9qpStjU4wnFQtE7sVRqgF3O2SA=; b=DOWOLF5OsX01WXKtDe3wUwScEK
 HwfC/lG1NwcwnKeZio0i32S37ftTNL+Yb1HNkh1vUyDfsZloWtj3q5+FHMhGQ2dtUBUEIKsfCdaco
 ufQeGBmzAhaC1iiFg6c3L63HTaZosV5rp3kwKsi2LleOAQ6iWKaVVW6m4oRbhisELZeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NNSggG8Wl6Z2agG/S9qpStjU4wnFQtE7sVRqgF3O2SA=; b=RW9i2Q7nFwC+qYkScuPc+qo6ki
 9NdLe7iuj34jxRFSAjpF+YV1Qd5tE/Oev+8hCBT1yj8qzSpCPR9rYtdjPjz75l5mvf/nMzZ2ajnfF
 JYLFSOkqf5UE8hW00wY002izSFrdBnb4/+jJ5D+LROA8U6wfZz5iZkPniKEcFNtnWCCA=;
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVzAS-008JEi-7f
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 15:07:33 +0000
Received: by mail-pj1-f65.google.com with SMTP id q24so493140pjd.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 05 May 2020 08:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=NNSggG8Wl6Z2agG/S9qpStjU4wnFQtE7sVRqgF3O2SA=;
 b=ATleuhRiRQfJoQB7YZpPeMfKei9oHPfil5eo65s1qErJeraVVqGckXZ7t9jm669HaR
 CaLgi0kxys53GjsORZU48HrCqHEdzpusMbIGjkfaWAd6g4ktCmapOLVDYNxvVCzSnV/P
 AyMaJf9C+4xiYLzIfF6MnOttq3ntTEJZ4bC+OjUQFiZbRju7IGYQN+fx119mohvADQq3
 SpiAE3zRv67KHjqtXa3ljXS8MCuAj5SqD1t2gLrJ2KiP2awFeIlgjQdMAtSIjitgwmaj
 jqq7h0FxOihAd+3vQSicrxs9ZRs6/8kYZqdzct8DnK0up2m4HHabRm6u/gK3NJcE+kaC
 +qvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=NNSggG8Wl6Z2agG/S9qpStjU4wnFQtE7sVRqgF3O2SA=;
 b=Ltlmq93Gcsg6ulJJVgI4kB7xZW7QlNzJvNjVC3Bqd/x56DM1pKgKgoPb28cxHf2MUT
 1KIqgnr47p18gm4zlP4k1DYk8x+Xgq/YRpfRwG4klgGtMvUTGfOGz5KURYTHG1MS/0zQ
 kXb7Snhe/97T2VKDD8nCf6ZezGaCQsn7PdD6EL/EIVNM32WKhIDuSrbCKqlWMaTKw25X
 EYJaTyR0lBX2mDQ8vXM9YD6rgd77NgOiTcut6lzGa07YhMR5/AJsuZGz97TBDKkM4A09
 JDyyxoshZl+uMSdyhhlpdUv9uNZJXdFi93DYqgP0B9iWAjRCFE4RS/Z7/7FVtwP1eb2v
 Vb7w==
X-Gm-Message-State: AGi0PuazFkyZ5w3ARrmOQGJK3NwCP6pVhqT6gfQ4ivl7KYG1ioAH74Df
 dSFKZHUp6n3vbksQaYTAzsY=
X-Google-Smtp-Source: APiQypKKaFBiGAzBA+lIxZist3gssDZ3s3mi6ZC/ZC39EDj0QRPYGPHgze6Vuwa3Axx5S8BdVKhZOQ==
X-Received: by 2002:a17:902:eb12:: with SMTP id
 l18mr3326160plb.269.1588691239346; 
 Tue, 05 May 2020 08:07:19 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id c2sm2229997pfp.118.2020.05.05.08.07.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 08:07:18 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org,
	Markus.Elfring@web.de
Date: Tue,  5 May 2020 23:06:50 +0800
Message-Id: <20200505150650.9156-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.65 listed in list.dnswl.org]
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
X-Headers-End: 1jVzAS-008JEi-7f
Subject: [Jfs-discussion] [PATCH v2] fs: jfs: fix possible data races in
 txExit()
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

The functions txEnd() and txExit() can be concurrently executed in the
following call contexts:

Thread1: 
  jfs_lazycommit()
    txLazyCommit()
      txEnd()
Thread2:
  exit_jfs_fs()
    txExit()

In txEnd():
  struct tblock *tblk = tid_to_tblock(tid);
  // #define tid_to_tblock(tid) (&TxBlock[tid])

In txExit():
  vfree(TxBlock);
  TxBlock = NULL;

Data races can occur for the global variable TxBlock, and they 
can cause use-after-free bugs and null-pointer dereferences.
These data races were found by our concurrency fuzzer.

Thus call txExit() after the filesystem stops the threads 
that run jfs_lazycommit().

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
v2:
* Change the description.
  Thank Markus Elfring for good advice.

 fs/jfs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index b2dc4d1f9dcc..8c80397df336 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -1027,13 +1027,13 @@ static void __exit exit_jfs_fs(void)
 
 	jfs_info("exit_jfs_fs called");
 
-	txExit();
 	metapage_exit();
 
 	kthread_stop(jfsIOthread);
 	for (i = 0; i < commit_threads; i++)
 		kthread_stop(jfsCommitThread[i]);
 	kthread_stop(jfsSyncThread);
+	txExit();
 #ifdef PROC_FS_JFS
 	jfs_proc_clean();
 #endif
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
