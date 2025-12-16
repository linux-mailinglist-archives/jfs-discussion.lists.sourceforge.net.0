Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB3ACC0B70
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Dec 2025 04:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qz3ED/rjAxY2cwj3Rk3Nc1scmAYbLSnl6Qy0MwbCblo=; b=Bgi9TZIPvCfFPSKkRQ9ERYgXvF
	nALAdIgq8u0Nj57XvujnpOyKDKS5V9FzNMMABi96QnIjnnROa9PlRYKcuUDQV+15hh3JT/LHXNOdV
	PsWDAnEK+w67rkw8YDEYSVs6FU+yw2P8o9cfpL/lCLVNL4aO05FUuTgEVdDQmc7Tpe8A=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vVLfB-0002IG-68;
	Tue, 16 Dec 2025 03:23:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1vVLf9-0002I9-2D
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 03:23:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=p5yuLsGyp5kCvNGGIQ8SyQX+Gu2MixumdLNQY2QtFxA=; b=AWzzubh4Fe4pmHzWaky8tQbL7F
 LQTsD4phaRfJfpRkJo4+qmQjBvNkolmHll5UREw4Fx+Hv0O7OWdkfJBPEa8WDwe6mBUYOF/i1Extj
 sHC87MJ1gGZSrs0Eq086ndva/O5rY9UuQB92MplosJ5hd7gdr7cHxjCXJMO47cK3Akgg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=p5yuLsGyp5kCvNGGIQ8SyQX+Gu2MixumdLNQY2QtFxA=; b=HjTcB10DOO477WgPkga1ilvePo
 ELIza3542jieNnxpTLHohlp7M1z7E5f5EXsNDoMdNOzn6a7rsu2ojjq16XnPWMJHHBaarhnvsEzFN
 dnzb4zYS6DUBG1mlDZ9ie3Cde3RsZyofmIi6m/OLqcjGpWVY3gn1F7NpBawNx8oKW3dY=;
Received: from xmbghk7.mail.qq.com ([43.163.128.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vVLf7-0006Dw-86 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 03:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1765855406; bh=p5yuLsGyp5kCvNGGIQ8SyQX+Gu2MixumdLNQY2QtFxA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gemG07/YvSM49h/xZirbGXAm9MyutMHK1jYhUiGE7Xm4aQ2oIvPFGWaaVgjAiqsno
 XxDU1r+QewwLG8JxttuCjpRlbn36VBnG7zfjOQDgjG+m55q3hsB9R/jTCdovxyz/QO
 jXlULSNJYOTLIcugMHCNuiTetzNnL9Dh2Hu/Id1o=
Received: from lxu-ped-host.. ([111.201.7.117])
 by newxmesmtplogicsvrsza63-0.qq.com (NewEsmtp) with SMTP
 id 5D78585E; Tue, 16 Dec 2025 11:23:23 +0800
X-QQ-mid: xmsmtpt1765855403t6mlkxap7
Message-ID: <tencent_2AC2ECAACC587B4E6C342D096F909424E90A@qq.com>
X-QQ-XMAILINFO: NvfE96cLltb5C1bT1tmooJOBdWJs+NzOOjfFwX7X/PixaY8cpvQi+LbvE4Jp1o
 X182O/rXSwNbP7FjXdcgTWygdZg8OxkC5TTIQeAFEIVJibQUDQVQgJM7NzVOo4U0fg7McwP7PSK3
 ppKf9as1w2NEZqiP7TLwAyWDMf/bNWPkJ421epsftLcSqEQAlsfFMmLlcmc5aEQ5yVWmybBILp+/
 /uJZtuqt4fLoeTDMwpzpYg15rwEQxLChVplQNG0zt5OL/Yoe1lt9mD4Xsm8AFRLf6dyckCSHibCV
 Rh9vuz0OjQWkCusUulUbrAQp7XNNAgx22JVW+3G3HJ+DtRJvUnV/SyDCtyJPMTaCaEc++p+2cuPj
 uGKza85gjR76qYktJkeuYKxFis3nx1xwFbYiLc8GmU8EadNnBNvGRe6uqGZqEnPhjBraKXalLtFF
 gh6fLDGRHLv5MuLfI3dObZyjOlVygQA0BHXvTMdBarBks9H2ez8Z111eIpwlUG13nwftY6dnVN90
 uoHqwuOUuaZbBD+rQ4yqbZ20u53F08Y+q2Dg4k1NmELPmybROEdIgIibWDPigw2Z56quHlYhhayk
 N0JiXMlo9Wec08FvdLXqmWu6QT0zNu/RqDAp8OuPs2kAnt1sMtFVk79wPRNGp3foatOSGuQcAkfj
 a6XJvQ65xhJO53d8Xaj/OM1eGevvQLXSRaHlCJJsVORMwAwgpkkEbfJz5wKBykyPRE9ZGQq1nycU
 nS73ySRta7tYmNbYIGjyDs2C9+7nJmQc+Ks15E5w52uDSwEPYKtC6LwLvgAFSCLaMvl7QrO5Jywq
 k/w6gFspTijrKofcM+rCZW6UY3Nz1tVimk9i0PkrIgHk4IKEGCjR8LF0pXAGT6/oAQNPl2RAF1NZ
 e1q+Zg8Mu8xPwoM5z5jVMHhFoFmGsjujVzn11rdOXbRmpLIKEkOwaCUYlvEhbjEKyBW23eShZfAQ
 Y/fg8o3PLgeVobVBrAkcG6j5pPiDkeQaifQVBayQ6MUKSKbqfWG2qLCd+FLTt9RgkabB4SDZkp2G
 /WNT7P5aFdT0Wpudy3
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
To: syzbot+1d38eedcb25a3b5686a7@syzkaller.appspotmail.com
Date: Tue, 16 Dec 2025 11:23:24 +0800
X-OQ-MSGID: <20251216032323.15192-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <693eb292.a70a0220.33cd7b.00c7.GAE@google.com>
References: <693eb292.a70a0220.33cd7b.00c7.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In lbmRead(),
 the I/O event waited for by wait_event() finishes
 before it goes to sleep, and the lbmIODone() prematurely sets the flag to
 lbmDONE, thus ending the wait. This causes wait_event() to ret [...] 
 Content analysis details:   (3.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [43.163.128.43 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [eadavis(at)qq.com]
X-Headers-End: 1vVLf7-0006Dw-86
Subject: [Jfs-discussion] [PATCH] jfs: Extend the done of the window period
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: axboe@kernel.dk, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In lbmRead(), the I/O event waited for by wait_event() finishes before
it goes to sleep, and the lbmIODone() prematurely sets the flag to
lbmDONE, thus ending the wait. This causes wait_event() to return before
lbmREAD is cleared (because lbmDONE was set first), the premature return
of wait_event() leads to the release of lbuf before lbmIODone() returns,
thus triggering the use-after-free vulnerability reported in [1].

Moving the operation of setting the lbmDONE flag to after clearing lbmREAD
in lbmIODone() avoids the use-after-free vulnerability reported in [1].

[1]
BUG: KASAN: slab-use-after-free in rt_spin_lock+0x88/0x3e0 kernel/locking/spinlock_rt.c:56
Call Trace:
 blk_update_request+0x57e/0xe60 block/blk-mq.c:1007
 blk_mq_end_request+0x3e/0x70 block/blk-mq.c:1169
 blk_complete_reqs block/blk-mq.c:1244 [inline]
 blk_done_softirq+0x10a/0x160 block/blk-mq.c:1249

Allocated by task 6101:
 lbmLogInit fs/jfs/jfs_logmgr.c:1821 [inline]
 lmLogInit+0x3d0/0x19e0 fs/jfs/jfs_logmgr.c:1269
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x4e1/0xfa0 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xe9/0x670 fs/jfs/jfs_mount.c:257
 jfs_fill_super+0x754/0xd80 fs/jfs/super.c:532

Freed by task 6101:
 kfree+0x1bd/0x900 mm/slub.c:6876
 lbmLogShutdown fs/jfs/jfs_logmgr.c:1864 [inline]
 lmLogInit+0x1137/0x19e0 fs/jfs/jfs_logmgr.c:1415
 open_inline_log fs/jfs/jfs_logmgr.c:1175 [inline]
 lmLogOpen+0x4e1/0xfa0 fs/jfs/jfs_logmgr.c:1069
 jfs_mount_rw+0xe9/0x670 fs/jfs/jfs_mount.c:257
 jfs_fill_super+0x754/0xd80 fs/jfs/super.c:532

Reported-by: syzbot+1d38eedcb25a3b5686a7@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=1d38eedcb25a3b5686a7
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_logmgr.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index b343c5ea1159..dda9ffa8eaf5 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -2180,8 +2180,6 @@ static void lbmIODone(struct bio *bio)
 
 	LCACHE_LOCK(flags);		/* disable+lock */
 
-	bp->l_flag |= lbmDONE;
-
 	if (bio->bi_status) {
 		bp->l_flag |= lbmERROR;
 
@@ -2196,12 +2194,10 @@ static void lbmIODone(struct bio *bio)
 	if (bp->l_flag & lbmREAD) {
 		bp->l_flag &= ~lbmREAD;
 
-		LCACHE_UNLOCK(flags);	/* unlock+enable */
-
 		/* wakeup I/O initiator */
 		LCACHE_WAKEUP(&bp->l_ioevent);
 
-		return;
+		goto out;
 	}
 
 	/*
@@ -2225,8 +2221,7 @@ static void lbmIODone(struct bio *bio)
 
 	if (bp->l_flag & lbmDIRECT) {
 		LCACHE_WAKEUP(&bp->l_ioevent);
-		LCACHE_UNLOCK(flags);
-		return;
+		goto out;
 	}
 
 	tail = log->wqueue;
@@ -2278,8 +2273,6 @@ static void lbmIODone(struct bio *bio)
 	 * leave buffer for i/o initiator to dispose
 	 */
 	if (bp->l_flag & lbmSYNC) {
-		LCACHE_UNLOCK(flags);	/* unlock+enable */
-
 		/* wakeup I/O initiator */
 		LCACHE_WAKEUP(&bp->l_ioevent);
 	}
@@ -2288,7 +2281,6 @@ static void lbmIODone(struct bio *bio)
 	 *	Group Commit pageout:
 	 */
 	else if (bp->l_flag & lbmGC) {
-		LCACHE_UNLOCK(flags);
 		lmPostGC(bp);
 	}
 
@@ -2302,9 +2294,11 @@ static void lbmIODone(struct bio *bio)
 		assert(bp->l_flag & lbmRELEASE);
 		assert(bp->l_flag & lbmFREE);
 		lbmfree(bp);
-
-		LCACHE_UNLOCK(flags);	/* unlock+enable */
 	}
+
+out:
+	bp->l_flag |= lbmDONE;
+	LCACHE_UNLOCK(flags);
 }
 
 int jfsIOWait(void *arg)
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
