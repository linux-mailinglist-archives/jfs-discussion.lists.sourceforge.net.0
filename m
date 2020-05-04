Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0981C3CDE
	for <lists+jfs-discussion@lfdr.de>; Mon,  4 May 2020 16:22:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVbyu-0008Ql-U7; Mon, 04 May 2020 14:22:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <baijiaju1990@gmail.com>) id 1jVbnU-0001Vo-Vy
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 14:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4eecyt+DUYccwhMTCjrta4aHo5IczYr3GF085KGw+5w=; b=fWcwrIV0eiZkfMVxFwyFawOHrC
 lD74UFHIAvkIcGIVBqvs3XK6NLv1VgwWgGO/tJ8pmOexncYkG6WB3e/nN/NSZf6kFZJMdVT3CNwl5
 XMUT/cbMvHxUjB83TDrk910xnVtDq9z5F4MNcDSDiwqxH9X1Yn4JOixfPQAizCGlbfw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4eecyt+DUYccwhMTCjrta4aHo5IczYr3GF085KGw+5w=; b=H2vKH70eirPzWcRdi406KaLB3I
 6vVtFmwP/6BG7Qfx6MIvlCMIDfK4h5eH1oo1m8b7OYBPFaYC7RLnUfzCu/oZ396E9gKpV2f3b5pvE
 qrKZ5fFawvXsWA0SYSv4KCmkWxX8QfTnV6ngjiIVqFld6B1wUMvpnbXkLQqAgzHa27SY=;
Received: from mail-qv1-f65.google.com ([209.85.219.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVbnS-006uOs-Rk
 for jfs-discussion@lists.sourceforge.net; Mon, 04 May 2020 14:10:16 +0000
Received: by mail-qv1-f65.google.com with SMTP id ep1so8375377qvb.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 04 May 2020 07:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4eecyt+DUYccwhMTCjrta4aHo5IczYr3GF085KGw+5w=;
 b=AnLqvQY2GefSo4gIsF0Xry75jB/5c736xQEWdac1hcQEmpj9DFoeWNNdplAVlncZE3
 0H5wpYdNfEV/V5UbAE60/DVJ7kXrrZzW/lZd6JXEYKcRbyofTe06v6Ncm+dP8GiQNhtb
 exEBibD2NBwTkjLV8yFO2JBQm78vaclpB4ffxx+0MY0WyJIU+4gxoISYjatiVRcz9YAx
 1agGfHr895fCPWc9xKgTNfOKOCoWAEVXCnyZa1dbrJGw+WkBf4JnHOoUyrO/KieL7wdB
 BFml0TeWiv1RjOpr1cVUGjxSYvwlnbY/Y8p+MYuQko/Pi8kVN+NYpFkDYOYAreFaSSNb
 F1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4eecyt+DUYccwhMTCjrta4aHo5IczYr3GF085KGw+5w=;
 b=eznYdcWDC/6uLvEQs9eAwMC36smaNqC6FNPDodbdk12eDpVTytbF6vd+vNwALVb0PU
 2LJdTvr0fbVoY1uyKFsxAhEQ48x3bsCYiGbnOgrPDlb26PHBavcmnkoFTjBORDQvl/b9
 DmJLPv6jrjcUWaSOt+DD0uB32aBI3RHHPVsNC46cJejOF5TXY4Uj5RAXRQ/K1MXRtbwm
 x3SrUFWsbs7Mwx7bR3GzCK5McvWi8un9ykp4Uq9Zk9cYDlWmhxJXYgr8xbNHxwapnLqU
 66Lgu7mdOSMYJIIXL0as41Fm5lhsay2X0Rt7/eQtAQEUjeBPNpkEWxjbEb0QOVdbYflG
 g/Lg==
X-Gm-Message-State: AGi0PuY5gUZYxhz2AxjkQXj9ujWOC/AjyCTf7NqzWFVcKjoPb5eiW8Ka
 eeEc9ld+V/2ILsFpEte27e//N6L//GM=
X-Google-Smtp-Source: APiQypKbM3702OfJgUcoxAgHiqkRsQwIWb5OqEGdYlzjY7ytYyaSftbTr9fqsoMiGVNzYjp2EgLvtw==
X-Received: by 2002:a62:2ad2:: with SMTP id
 q201mr17769556pfq.323.1588600964431; 
 Mon, 04 May 2020 07:02:44 -0700 (PDT)
Received: from localhost.localdomain ([120.244.110.63])
 by smtp.gmail.com with ESMTPSA id mn1sm7113207pjb.24.2020.05.04.07.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 07:02:43 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: shaggy@kernel.org
Date: Mon,  4 May 2020 22:02:09 +0800
Message-Id: <20200504140209.18689-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (baijiaju1990[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (baijiaju1990[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jVbnS-006uOs-Rk
X-Mailman-Approved-At: Mon, 04 May 2020 14:22:03 +0000
Subject: [Jfs-discussion] [PATCH] fs: jfs: fix possible data races in
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

Thus, data races can occur for the global variable TxBlock.
And these data races can cause use-after-free bugs and null-pointer
dereferences.

To fix these data races, txExit() is called after the filesystem stops 
the threads that run jfs_lazycommit().

These data races are found by our concurrency fuzzer.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
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
