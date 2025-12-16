Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 265CFCC360C
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Dec 2025 14:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:Date:To:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fUOD+W18XwPxT7Cq2Ol7No6XtLniNuo/71oPCCuzRFg=; b=U90+Qbxt9OPNaNVTk6kFaq2q9p
	loohEXKgme92h4NQsvsF9Mnmf5hPb8UpwwMdXCJM522rtjH36HFc5/Z255VvYLa4Y6UzDadxwlCn1
	V6a4oA0S6AzfanAhzBfI0D0s0jQk5+Q8fOjEiuWr1RflwBe3MqIvYcFh/WwY+nLBkzas=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vVVZ5-00009Q-56;
	Tue, 16 Dec 2025 13:58:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1vVVZ2-00009F-RI
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 13:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iXRrlaHLTWoP05X1daQo0hZEfeEwAupxcEuPUUwBHLw=; b=PrCcz0d+opHbJQBQd1Z/N1nBi4
 reAugvFyf6hYLxWOANU5ZHkP3ndW5uGXEDDbWSj2gzFcWFwlSSMHVLxo8eROaZ0MdpoSKyxAVvZZe
 opXq0gJlLpdgT855cPVzySHJx9G1V/ITcniK/URIysiT+Csh/7ST52aOdDSl9Qgh1eSE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iXRrlaHLTWoP05X1daQo0hZEfeEwAupxcEuPUUwBHLw=; b=lVXdi4fW6XJo1dmOCG/tnox2Nd
 Iebi1Ms9oUXeekl9tY8yr17NizxXpSHoCep/R1yU7aYtFNDwH+iSoSXBOb3dmtq8tTawverPbr940
 4+3aSrH3sb/EIc9VBjB+5Q/tvqsmsTziB0IfSp1lA3tyxOqTjDj6UOtD3aiGnV4UehR8=;
Received: from out203-205-221-235.mail.qq.com ([203.205.221.235])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vVVZ1-0007Nk-8b for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Dec 2025 13:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1765893474; bh=iXRrlaHLTWoP05X1daQo0hZEfeEwAupxcEuPUUwBHLw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=EbsJs+3ZoFfr9lr7AkVODaWpboi7RYfxBfhwXSclB68vE9+cErzLr7hHDYF0yV48F
 1wCTBaKq+jytXtVVTwvkGyORAUdjowXGe0oB8111uzGb2WF521Y+ehtcjsqTdXYhiY
 ALSug+ey3HJM9xRXDRLor0TNXQxDuk/i1+9KyKcc=
Received: from lxu-ped-host.. ([111.201.7.117])
 by newxmesmtplogicsvrszb51-1.qq.com (NewEsmtp) with SMTP
 id E73A50AF; Tue, 16 Dec 2025 21:57:51 +0800
X-QQ-mid: xmsmtpt1765893471twc5zwyl8
Message-ID: <tencent_48DDBA00BB1033889E551BDE4B721B042508@qq.com>
X-QQ-XMAILINFO: ODukwAJJE14znYh97sEsMeLf2aaOGGvmrn9g4Q1/VvW+aczWl0WSo7QIcoXLoT
 bHLhGYQ+8Q48ULFs4I6hk7o70NErDuuwjaGjEexyufP/9UOBTkE8eIq1E8UozR9e13VaxFNn9HNy
 z7qcAoyj281e+QZsiounnur7FIQWYdzsAy+M66ukaZPDMFbuAapYvaAZcqGZPjvvjUkyKaBo8I5J
 17atyTCeUUJQ5SDhS9jy4/W4c7oDxbJbvkT4NJD7BY9P3XS2Pz48v5ZahHAbVm2y36C0OdfQG7Cj
 CaG4WYllIm/wqJo5TJxwYaKFYEItx513EcVekjFhc1Yj1WAb7w4DNw6RmruL52gtNicNRHmLRORW
 FJUaF/kdrBtwBxuHVqL+m7PIRfjOZTGFb7IpRkZV9HR9cVhKeTVd/xxwCl3OJWClNaNBmV3N96Oj
 c/7gXmmwEo4V6UyGY01e04Nf7kw2ubROia6+zDIydJPbnlqVmUKyCci9KCp8bAIgUFzIZ6F3uPvj
 feSxXTGV3no79A/O7lv4B+IdS64KD5uIA8oh2f2C8IodeSvkFif7w8cby5TqlP1131C8bOX3iD6/
 U8gaA6yIQiIjhYdnCxQ5RVBQp0jMCKnFPQ4Nxvb4HsJxG/kjcNGOQsi57QmGLceQ28OIZqnMoiKI
 XKiid9VBpZLUcmVNIdmXpjHh5sMKP0o0z079hsaaVg0SPxknXdvXv0mbuaAAMsHZrtrk+a9koRHp
 UYYm676ScyqT1fs7utDcWdZd7qnA/4fCMqsDRycoGX+jz0bLZEOQ0T7Kk6Z1VfYsyniLL9IbIuG1
 OuJcp9wuW56B3vRjyHrnI1B9BoZwXD6f1wgyE5A/su8aftmdHa8IjUCeBsYwSWsBk2dl3rpejOvN
 VZ0mS8hOfma31hAojgiMY5YjLoeFavWtJ1cEs61voDknohZM4M8DKtbYiFEnsrm8E0ctlxfJLe6O
 6+kkBO+0QEt1mW5e7aIDurnW0s79oVO09TYUJLxYysUZeh6dfue3wcEkCE5uFnFRxKnw4QGzwql6
 hLxvBHiCmOl1TqQtBMs0OpA/F/xC4=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
To: syzbot+ci1f1a4e9c887bc6ea@syzkaller.appspotmail.com
Date: Tue, 16 Dec 2025 21:57:51 +0800
X-OQ-MSGID: <20251216135750.31446-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <69415e37.050a0220.1ff09b.001d.GAE@google.com>
References: <69415e37.050a0220.1ff09b.001d.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
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
 Content analysis details:   (3.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [eadavis(at)qq.com]
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP addr
 1)
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
X-Headers-End: 1vVVZ1-0007Nk-8b
Subject: [Jfs-discussion] [PATCH v2] jfs: Extend the done of the window
 period
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
 syzbot@lists.linux.dev, syzkaller-bugs@googlegroups.com, eadavis@qq.com,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 syzbot@syzkaller.appspotmail.com
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
v1 -> v2: fix potential deadlock

 fs/jfs/jfs_logmgr.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index b343c5ea1159..0db4bc9f2d6c 100644
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
@@ -2290,6 +2283,7 @@ static void lbmIODone(struct bio *bio)
 	else if (bp->l_flag & lbmGC) {
 		LCACHE_UNLOCK(flags);
 		lmPostGC(bp);
+		LCACHE_LOCK(flags);		/* disable+lock */
 	}
 
 	/*
@@ -2302,9 +2296,11 @@ static void lbmIODone(struct bio *bio)
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
