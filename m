Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1E76A8456
	for <lists+jfs-discussion@lfdr.de>; Thu,  2 Mar 2023 15:44:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pXk9p-0003SH-SC;
	Thu, 02 Mar 2023 14:43:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkl820.git@gmail.com>) id 1pXVTN-0000eE-UL
 for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Mar 2023 23:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6XJP053NiZ4KnJ6Pi3NUYoPOODRnV+q3TPUtWMOWJYI=; b=fGSQz+4c0obSUHVFoJ45O5eZHP
 QqzT2HHZqkhwb0bGLiE17gZGM7h0NFBOsvzMD69JG6b8s6zTCmD3yEK6foaNX7FQ/mFPbAriw+LX6
 LqBzM8b5E4WWz8/kB4ZVcgXD/dFGkprg8u0j82dSDb3fy4kcToJBvCjhMUgYS+ahNO8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=6XJP053NiZ4KnJ6Pi3NUYoPOODRnV+q3TPUtWMOWJYI=; b=U
 YSI28YgYLjm36ufOVllQHNmDfHowOBPkDg0ReiX3YljhNqNgFkf3Q6XNL0cYUFJHS4HOrEDSXdUoL
 RookMIMFdhGmIJmY3aQMUHB8mfJVS9IBnXjsObt870wKjBGcmfVJ7CyKLcbsLST3klh77yv/8UmYQ
 gou6lhHe2EtmlWFI=;
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pXVTM-00BNfk-BK for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Mar 2023 23:02:57 +0000
Received: by mail-ed1-f67.google.com with SMTP id f13so60462773edz.6
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 01 Mar 2023 15:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=6XJP053NiZ4KnJ6Pi3NUYoPOODRnV+q3TPUtWMOWJYI=;
 b=V55FsJkTncVZ6bts8JuBPHQ30bHCP6ps7yXO0v74Sy/pquFqpcsp2im6BaEKLEQflA
 /4f8C+keg1WzUc5F+u60u2dlVGVPn3cePWgen5BOChFhBxi9yz+BDYHNx/bvXy1CsgT2
 7DzCXs3jAiHAAv285clgdM8Rf12dQyQ2o1XZZ/MzaDYnBGtXNG8LuM0cAS9fkz2ipPYW
 zs22Qb4MKfA9y4i69ww/deAjWcXTu02x47hQYYacw0Hkk/EDL8PpXvdWy1g7owWOgeg0
 xDHmukWE25rXFNT1Ah4dWiEI/+xPxc0hU+dPwxzj8Q51J3WhHPyUpM/19lOyhKYuxbUf
 PMLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6XJP053NiZ4KnJ6Pi3NUYoPOODRnV+q3TPUtWMOWJYI=;
 b=s7adSjpG6Q7hqwq3Vl9pA9hZRJP5DRZjTsvLbN6QdCxGICwUQq2RYn/5piiM+dNHoL
 QG/XWNHrSn21wLOUdo/6NBm+RTVYsss6k1dNaoymXt0F8SuFCv1zowuTHFc/or5h8P54
 20Tu0XhVoXxRnLhnk/WTqeI6DaFt2YKxZicWQ16A18cxsgAstLbDX34V+7rh1p4RAfP4
 eg5S5f9DUNl4iq4CqARPBWCnwCCYt0EydOc+ZCuz6Wdt3sqdFUhrwx2r6UnS6PxqNWPO
 x71bmGuo6qnEdHhsa66F/Q1K8CnulzIsHzf0Q4UBLBUxc5wc0BlL/K73oV1fKNzcuUXN
 ze5w==
X-Gm-Message-State: AO0yUKXcObCaXXjqC2E0il1IwSsiPsYCw/mGQw0s7TYPGee9x+HSO4BB
 qW5tPWgtqOkSx3UOZ+Dxgws=
X-Google-Smtp-Source: AK7set8Hd8jexKxakClAOkq73hKu6G5eQHBov3QuTxgt4E3mXXwhRCvR1Vm8Pkt0PXhcFeArYPd/Yg==
X-Received: by 2002:a17:906:9601:b0:8dd:76d5:a82 with SMTP id
 s1-20020a170906960100b008dd76d50a82mr8460613ejx.47.1677711769885; 
 Wed, 01 Mar 2023 15:02:49 -0800 (PST)
Received: from [127.0.1.1] (i130160.upc-i.chello.nl. [62.195.130.160])
 by smtp.googlemail.com with ESMTPSA id
 lc8-20020a170906f90800b008d57e796dcbsm6287488ejb.25.2023.03.01.15.02.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Mar 2023 15:02:49 -0800 (PST)
From: Jakob Koschel <jkl820.git@gmail.com>
Date: Thu, 02 Mar 2023 00:02:46 +0100
MIME-Version: 1.0
Message-Id: <20230301-fs-jfs-avoid-iter-after-loop-v1-1-1742e06efc62@gmail.com>
X-B4-Tracking: v=1; b=H4sIAJXZ/2MC/x2NwQqDMBBEf0X23IUkWir9ldLDqpu6pU1kV6Qg/
 nsTDzMwzPBmB2MVNrg3OyhvYpJTCf7SwDhTejHKVDIEF1rXOo/R8F1EW5YJZWVFitU/OS/YB/I
 37wJfux4KYiBjHJTSOFfIl6xMa7EoR/mdv4/ncfwBstItCYcAAAA=
To: Dave Kleikamp <shaggy@kernel.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1677711769; l=4595;
 i=jkl820.git@gmail.com; s=20230112; h=from:subject:message-id;
 bh=7Wlg05+jupBpzbW2jRTCioY6miUDosmbF/uQR63a0hY=;
 b=QT3xJNEi/L2lmdViF8a4/BimZ2JfTg4BEvJ4Uk8GwpINiQDi6MMVFF8MddBJKB1nfLt2VmBOcTMu
 dUeu7D9QA37ewpxOKGJMVJCBFF0+8/PIJiUoT2AF+19wcTLdVecD
X-Developer-Key: i=jkl820.git@gmail.com; a=ed25519;
 pk=rcRpP90oZXet9udPj+2yOibfz31aYv8tpf0+ZYOQhyA=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  If the list_for_each_entry_safe() iteration never breaks,
 'tblk' would contain an invalid pointer past the iterator loop. To ensure
 'tblk' is always valid, we only set it if the correct element was fo [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jkl820.git[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pXVTM-00BNfk-BK
X-Mailman-Approved-At: Thu, 02 Mar 2023 14:43:44 +0000
Subject: [Jfs-discussion] [PATCH] fs/jfs: avoid usage of list iterator after
 loop in lmPostGC()
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
Cc: jfs-discussion@lists.sourceforge.net,
 Pietro Borrello <borrello@diag.uniroma1.it>, linux-kernel@vger.kernel.org,
 "Bos, H.J." <h.j.bos@vu.nl>, Cristiano Giuffrida <c.giuffrida@vu.nl>,
 Jakob Koschel <jkl820.git@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

If the list_for_each_entry_safe() iteration never breaks, 'tblk' would
contain an invalid pointer past the iterator loop. To ensure 'tblk' is
always valid, we only set it if the correct element was found. That
allows adding a BUG_ON in case the code works incorrectly, exposing
currently undetectable potential bugs.

Additionally, Linus proposed to avoid any use of the list iterator
variable after the loop, in the attempt to move the list iterator
variable declaration into the marcro to avoid any potential misuse after
the loop [1].

Link: https://lore.kernel.org/all/CAHk-=wgRr_D8CB-D9Kg-c=EHreAsk5SqXPwr9Y7k9sA6cWXJ6w@mail.gmail.com/ [1]
Signed-off-by: Jakob Koschel <jkl820.git@gmail.com>
---
I've found this code path looking at the output of the
use_after_iter.cocci script. From an outsider perspective it's difficult
for me to judge if the condition '!(tblk->flag & tblkGC_COMMIT)' is
guaranteed to be true for at least one entry in the list.

If not then the access 'tblk->bp->l_wqnext' in line 887 will not work
with a valid 'tblk' entry.

For now I've replaced the iterator variable with 'iter' and only set the
'tblk' (used after the iteration), in the break case where it is
guaranteed to be correct.

I'm happy to get some input on this and open for any suggestion.
---
 fs/jfs/jfs_logmgr.c | 37 ++++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 17 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 695415cbfe98..e3ca0bb6dbd5 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -804,7 +804,7 @@ static void lmPostGC(struct lbuf * bp)
 	unsigned long flags;
 	struct jfs_log *log = bp->l_log;
 	struct logpage *lp;
-	struct tblock *tblk, *temp;
+	struct tblock *tblk = NULL, *iter, *temp;
 
 	//LOGGC_LOCK(log);
 	spin_lock_irqsave(&log->gclock, flags);
@@ -814,54 +814,56 @@ static void lmPostGC(struct lbuf * bp)
 	 * remove/wakeup transactions from commit queue who were
 	 * group committed with the current log page
 	 */
-	list_for_each_entry_safe(tblk, temp, &log->cqueue, cqueue) {
-		if (!(tblk->flag & tblkGC_COMMIT))
+	list_for_each_entry_safe(iter, temp, &log->cqueue, cqueue) {
+		if (!(iter->flag & tblkGC_COMMIT)) {
+			tblk = iter;
 			break;
+		}
 		/* if transaction was marked GC_COMMIT then
 		 * it has been shipped in the current pageout
 		 * and made it to disk - it is committed.
 		 */
 
 		if (bp->l_flag & lbmERROR)
-			tblk->flag |= tblkGC_ERROR;
+			iter->flag |= tblkGC_ERROR;
 
 		/* remove it from the commit queue */
-		list_del(&tblk->cqueue);
-		tblk->flag &= ~tblkGC_QUEUE;
+		list_del(&iter->cqueue);
+		iter->flag &= ~tblkGC_QUEUE;
 
-		if (tblk == log->flush_tblk) {
+		if (iter == log->flush_tblk) {
 			/* we can stop flushing the log now */
 			clear_bit(log_FLUSH, &log->flag);
 			log->flush_tblk = NULL;
 		}
 
-		jfs_info("lmPostGC: tblk = 0x%p, flag = 0x%x", tblk,
-			 tblk->flag);
+		jfs_info("lmPostGC: tblk = 0x%p, flag = 0x%x", iter,
+			 iter->flag);
 
-		if (!(tblk->xflag & COMMIT_FORCE))
+		if (!(iter->xflag & COMMIT_FORCE))
 			/*
-			 * Hand tblk over to lazy commit thread
+			 * Hand iter over to lazy commit thread
 			 */
-			txLazyUnlock(tblk);
+			txLazyUnlock(iter);
 		else {
 			/* state transition: COMMIT -> COMMITTED */
-			tblk->flag |= tblkGC_COMMITTED;
+			iter->flag |= tblkGC_COMMITTED;
 
-			if (tblk->flag & tblkGC_READY)
+			if (iter->flag & tblkGC_READY)
 				log->gcrtc--;
 
-			LOGGC_WAKEUP(tblk);
+			LOGGC_WAKEUP(iter);
 		}
 
 		/* was page full before pageout ?
 		 * (and this is the last tblk bound with the page)
 		 */
-		if (tblk->flag & tblkGC_FREE)
+		if (iter->flag & tblkGC_FREE)
 			lbmFree(bp);
 		/* did page become full after pageout ?
 		 * (and this is the last tblk bound with the page)
 		 */
-		else if (tblk->flag & tblkGC_EOP) {
+		else if (iter->flag & tblkGC_EOP) {
 			/* finalize the page */
 			lp = (struct logpage *) bp->l_ldata;
 			bp->l_ceor = bp->l_eor;
@@ -880,6 +882,7 @@ static void lmPostGC(struct lbuf * bp)
 	 * select the latest ready transaction as new group leader and
 	 * wake her up to lead her group.
 	 */
+	BUG_ON(!tblk);
 	if ((!list_empty(&log->cqueue)) &&
 	    ((log->gcrtc > 0) || (tblk->bp->l_wqnext != NULL) ||
 	     test_bit(log_FLUSH, &log->flag) || jfs_tlocks_low))

---
base-commit: c0927a7a5391f7d8e593e5e50ead7505a23cadf9
change-id: 20230301-fs-jfs-avoid-iter-after-loop-82a17102e548

Best regards,
-- 
Jakob Koschel <jkl820.git@gmail.com>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
