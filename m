Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D541D370D
	for <lists+jfs-discussion@lfdr.de>; Thu, 14 May 2020 18:55:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jZH8s-0002lZ-Hg; Thu, 14 May 2020 16:55:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdanton@sina.com>) id 1jZG0z-0007LP-BQ
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 15:43:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pmYnUGzc861A+4tjrkrfL2+09RpPfcsUnWdXxDGjVs4=; b=HwRPHr8V2NoRTesHH7KucmFuLr
 JbxC5U8Y5FrpEYxHQReBJdrIeVIj9Jh5CSSfcgIarGDfCcoBLvnX66jj6crXlXxb6LTnvJJzQXtMB
 CuaIw2ZJcT3hjv6d3ImB4cJtqECypkacPSvXWtgIO+kXO5l5DhyNQnp5INge7n7etJqQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pmYnUGzc861A+4tjrkrfL2+09RpPfcsUnWdXxDGjVs4=; b=erMYY7KI9R6VYdNlzq1YKsq8Xa
 NWUF1eW0epScxmqr3vCrPqF4odFq8py3r9mN93kKIiv2R0WgwzNowyITOELDcu1P+FibcC8N4eRG9
 utbReIgLZUu9lFS6OxBC63yMGh1VCs55O8pKHiBPaAn8QTyJo1ADxDY9yrR7Dj5KG1Pc=;
Received: from r3-25.sinamail.sina.com.cn ([202.108.3.25])
 by sfi-mx-3.v28.lw.sourceforge.com with smtp (Exim 4.92.2)
 id 1jZG0s-007591-8S
 for jfs-discussion@lists.sourceforge.net; Thu, 14 May 2020 15:43:17 +0000
Received: from unknown (HELO localhost.localdomain)([114.253.230.193])
 by sina.com with ESMTP
 id 5EBD67040001DBE1; Thu, 14 May 2020 23:43:02 +0800 (CST)
X-Sender: hdanton@sina.com
X-Auth-ID: hdanton@sina.com
X-SMAIL-MID: 92537654919319
From: Hillf Danton <hdanton@sina.com>
To: Rong Chen <rong.a.chen@intel.com>
Date: Thu, 14 May 2020 23:42:51 +0800
Message-Id: <20200514154251.18184-1-hdanton@sina.com>
In-Reply-To: <5d4fbe21-7959-d53f-76c5-ed0299d8db23@intel.com>
References: <20200512030929.GA5770@shao2-debian>
 <alpine.DEB.2.22.395.2005132123020.14542@trent.utfs.org>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hdanton[at]sina.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.108.3.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jZG0s-007591-8S
X-Mailman-Approved-At: Thu, 14 May 2020 16:55:30 +0000
Subject: Re: [Jfs-discussion] [fs] 05c5a0273b: netperf.Throughput_total_tps
 -71.8% regression
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 Christian Kujau <lists@nerdbynature.de>, linux-kernel@vger.kernel.org,
 Jia-Ju Bai <baijiaju1990@gmail.com>, Markus.Elfring@web.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


On Thu, 14 May 2020 13:12:18 +0800 Rong Chen wrote:
> On 5/14/20 12:27 PM, Christian Kujau wrote:
> > On Tue, 12 May 2020, kernel test robot wrote:
> >> FYI, we noticed a -71.8% regression of netperf.Throughput_total_tps due to commit:
> > As noted in this report, netperf is used to "measure various aspect of
> > networking performance". Are we sure the bisect is correct? JFS is a
> > filesystem and is not touching net/ in any way. So, having not attempted
> > to reproduce this, maybe the JFS commit is a red herring?
> >
> > C.
> 
> Hi,
> 
> The commit also causes -74.6% regression of will-it-scale.per_thread_ops:
> 
> in testcase: will-it-scale
> on test machine: 8 threads Intel(R) Core(TM) i7-3770K CPU @ 3.50GHz with 16G memory
> with following parameters:
> 
> 	nr_task: 100%
> 	mode: thread
> 	test: unlink2
> 	cpufreq_governor: performance
> 	ucode: 0x21
> 
> I'll send another report for this regression.
> 
> Best Regards,
> Rong Chen

Hi

Would it make sense in terms of making robot and fuzzer happy to replace
spin lock with memory barrier, say the changes below?

Hillf

--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -416,6 +416,7 @@ tid_t txBegin(struct super_block *sb, in
 	 * memset(tblk, 0, sizeof(struct tblock));
 	 */
 	tblk->next = tblk->last = tblk->xflag = tblk->flag = tblk->lsn = 0;
+	smp_wmb(); /* match mb in txLazyCommit() */
 
 	tblk->sb = sb;
 	++log->logtid;
@@ -2683,10 +2684,16 @@ static void txLazyCommit(struct tblock *
 {
 	struct jfs_log *log;
 
-	while (((tblk->flag & tblkGC_READY) == 0) &&
-	       ((tblk->flag & tblkGC_UNLOCKED) == 0)) {
-		/* We must have gotten ahead of the user thread
-		 */
+	for (;;) {
+		u16 flag = tblk->flag;
+
+		smp_rmb(); /* match mb in txBegin() */
+		if (flag & tblkGC_READY)
+			break;
+		if (flag & tblkGC_UNLOCKED)
+			break;
+
+		/* We must have gotten ahead of the user thread */
 		jfs_info("jfs_lazycommit: tblk 0x%p not unlocked", tblk);
 		yield();
 	}
@@ -2698,9 +2705,9 @@ static void txLazyCommit(struct tblock *
 	log = (struct jfs_log *) JFS_SBI(tblk->sb)->log;
 
 	spin_lock_irq(&log->gclock);	// LOGGC_LOCK
-
+	smp_mb__after_spinlock();
 	tblk->flag |= tblkGC_COMMITTED;
-
+	smp_wmb();
 	if (tblk->flag & tblkGC_READY)
 		log->gcrtc--;
 



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
