Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC52CE028F
	for <lists+jfs-discussion@lfdr.de>; Sat, 27 Dec 2025 23:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GOUsrbfINp3p2dOmMFX1DmLNsJgLY/gSn3G8pIUxVok=; b=m5oBMoxZ9qDwPJt4Zp/qRumjTU
	JNlq1wq+p5emaKru1XdYL4wZ4LXIVuToOMdyXnr59P0QbyMLz4Pviz9Pf5zdAyVkz/W27/Gj7wG1i
	8qRzISt8wRUUNMj1T8tBvyT7chmQ7W+LEUfWsCFWK+dCR0+iKxGmCxk9wYh4Uee67y5Y=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vZcZI-0000XR-F1;
	Sat, 27 Dec 2025 22:15:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <swilczek.lx@gmail.com>) id 1vYYKZ-0000J8-TF
 for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Dec 2025 23:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wHq74WuqJUiwTPMFcJJVfq/bvxi+DPHu76wcJGAyppg=; b=JnYQFKXRuzgNI0w2c7rA/96YUU
 QvZkvQMxlilwz+n8b/0Me1I0Ypk6hVmc/4mTnrpgXpg3BsZehkmB4zrBLBY6O4Tzaj9yEkA+M12mW
 DXzzCNKlD8soCTYO9DzXe4tbVY2fv+aOzx+sjGWRCe8sbrtlbvlbT+70TOOrT5jQmmnE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wHq74WuqJUiwTPMFcJJVfq/bvxi+DPHu76wcJGAyppg=; b=E
 ADKUrmrCwts/Ax1LadRxH4a0KYOwn2rTXCWZmuw34R6MFkMm+fWMVTghXJWHjjkiXU1guNhQNbKEG
 +omxW4GzFqu4JllVqTJx9cxbpOKIu7JYpIHT84h8kk9P8gbGnv2QXtInuTVPZWi+Pc/nTM5w7f94y
 SrHvwsDmf7M7J6I8=;
Received: from mail-ej1-f51.google.com ([209.85.218.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vYYKZ-0007Ua-3r for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Dec 2025 23:31:47 +0000
Received: by mail-ej1-f51.google.com with SMTP id
 a640c23a62f3a-b7633027cb2so1142447366b.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 24 Dec 2025 15:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766619100; x=1767223900; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=wHq74WuqJUiwTPMFcJJVfq/bvxi+DPHu76wcJGAyppg=;
 b=EZhIhvr6ECr+jauJwY4SRTPJ1xNYvlq7Fugg9EDipPCG9qENN+RvAsuDgyOZVDwnAO
 iQESJR9yZV1AdwokZi/C3QBcauOYAQjbbTDKjPTH6DoyQkO6BwqGh7uZ4QQylehT10AS
 212GXfqmWjSkUNu5fBBX/bYeJHtid/nf9r9hYskWbGvlf6NbGU62IVCC9nwIHh2IKIp0
 yWK62c3V1bzLyoPEDJnQ78fluj1IZ1F6EY5RbPxUkZlvgAs4Xd9oNPL+Cl9lhjWnZMMs
 eI2/1vjOqnH2kdrV8lEEFPq4NierbGkNf5wL+Z8jIgAxeqNGnor2xFhWr368V1NatRbU
 tNEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766619100; x=1767223900;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wHq74WuqJUiwTPMFcJJVfq/bvxi+DPHu76wcJGAyppg=;
 b=YudekHEguRe605gGUcb5L/XsV3lt24a8oMmiCDYCC4D4Plm+dUPnks96/GQEZUoQLV
 U8OJnVqWPBn9q5K4OCRMVDjg64AMZE34BUtCE/EpmULx5SMnL6g9Mnd3ylOw0+JURmUV
 I1amstmhM5Dfpqr5Mix9kyS1/Tm7rrntQDtJEsSixClUbSROHJFnr9TbogcU0Lj4KpFk
 ++t6Sjzs5IwMVwSWI9Rz4bDJsvYBP/kFzYeGVbvEI3SaNfry8JoV/sTnm8RBAcyR4Jri
 vaF6dr71gXF9fgPdsFiplVbCyzxsUfyHLcJAUEj7vB8UNqSZ0OxuXhdkQ5FYTbMaLKc+
 N64A==
X-Gm-Message-State: AOJu0YyGqAdUOWqLjfjqyuGRR6O3UQqCMBj3MFXoLgBcgJnxe4TU6CBU
 +OmcjeZTT5CF/S7Ag07KYaC6NQaH3H29xtVVYbvVbkuVEdJNzpb2/l3Juye68w==
X-Gm-Gg: AY/fxX62daGZ0sP1/zn7UonDPcra9/0+0K1xCQW6SiW9NWOCTsbxnuUvNT88qjk4kTt
 P2ijODk+t7fXi/rc60t1rdvCvjWwsErQcuV7MzoX1HkZ7J48j6s9Cd6w8jmwg4naXC7Ecr8QG1Y
 vWetE6/FvXAL4urviRcOuii3xLV1zyNVNjp2er+XArtIIenpbJ4AuB3/xOB/rqdTA9cmt5WbLDz
 P0SlYJVoJf9yPVKethg8UeH+e33SeBnYKwHKNJ8VGJeYZlBWIGJgzTmYFuiQdnmOxyQNN72K6F6
 6JoYidi5bOfoVcVsOUJiEsaGvoZecu5byU2Hwo81tOq6L1UmhEoeLRPjVRDkmbYMdod0o8UwRgK
 Y/exhOU0kinox+zJpeSMg1nBsCO5Xq9vq3EVMI4yDKAOlm/mY6XcZPITj6p4E9kDs1hz367kJ6S
 hajLUyYhlZpG9BUA==
X-Google-Smtp-Source: AGHT+IEmWnYIOuR5mGDE0Qw5y8iloVeV9v9ti3JTp04SIItnRT7UhSUgJlAXM1t3XjuFqIIfAiYkFg==
X-Received: by 2002:a17:907:7f0d:b0:b80:12f5:f6aa with SMTP id
 a640c23a62f3a-b803722927amr2259017066b.56.1766619100137; 
 Wed, 24 Dec 2025 15:31:40 -0800 (PST)
Received: from prometheus ([85.11.110.37]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8037a5bdfesm1902882066b.10.2025.12.24.15.31.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Dec 2025 15:31:39 -0800 (PST)
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu, 25 Dec 2025 00:31:33 +0100
Message-ID: <20251224233133.41078-1-swilczek.lx@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  JFS uses "fake" metapages (pointers into the inode's btree
 root area) for btree roots that reside inline in the inode. These fake
 metapages
 are identified by the absence of the COMMIT_PAGE flag in xfl [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [swilczek.lx(at)gmail.com]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: syzkaller.appspot.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vYYKZ-0007Ua-3r
X-Mailman-Approved-At: Sat, 27 Dec 2025 22:15:23 +0000
Subject: [Jfs-discussion] [PATCH] jfs: add missing tlckBTROOT to txLock
 calls on inline btree roots
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
From: Szymon Wilczek via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Szymon Wilczek <swilczek.lx@gmail.com>
Cc: Szymon Wilczek <swilczek.lx@gmail.com>,
 jfs-discussion@lists.sourceforge.net,
 syzbot+a63afa301d1258d09267@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

JFS uses "fake" metapages (pointers into the inode's btree root area)
for btree roots that reside inline in the inode. These fake metapages
are identified by the absence of the COMMIT_PAGE flag in xflag.

The txUnlock() and txRelease() functions check for the tlckBTROOT flag
to avoid treating these fake metapages as real disk pages. When txLock()
is called on an inline btree root without tlckBTROOT, txUnlock() later
tries to access mp->nohomeok which doesn't exist in the fake metapage
structure, causing:

  BUG at fs/jfs/jfs_txnmgr.c:932 assert(mp->nohomeok > 0)

This was triggered during directory operations where dtInsert(),
dtDelete(), dtSplitUp(), dtDeleteUp(), xtInsert(), and xtSplitUp()
could operate on inline roots without setting tlckBTROOT.

Fix by adding the tlckBTROOT flag conditionally using BT_IS_ROOT()
check in all txLock() calls that may operate on inline btree roots.
This matches the existing pattern used in dtInitRoot() and
add_missing_indices().

Reported-by: syzbot+a63afa301d1258d09267@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=a63afa301d1258d09267
Signed-off-by: Szymon Wilczek <swilczek.lx@gmail.com>
---
 fs/jfs/jfs_dtree.c | 12 ++++++++----
 fs/jfs/jfs_xtree.c |  9 ++++++---
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 0ab83bb7bbdf..c35f4b6f4544 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -881,7 +881,8 @@ int dtInsert(tid_t tid, struct inode *ip,
 	/*
 	 * acquire a transaction lock on the leaf page
 	 */
-	tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY);
+	tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY |
+		      (BT_IS_ROOT(mp) ? tlckBTROOT : 0));
 	dtlck = (struct dt_lock *) & tlck->lock;
 	ASSERT(dtlck->index == 0);
 	lv = & dtlck->lv[0];
@@ -1258,7 +1259,8 @@ static int dtSplitUp(tid_t tid,
 			/*
 			 * acquire a transaction lock on the parent page
 			 */
-			tlck = txLock(tid, ip, smp, tlckDTREE | tlckENTRY);
+			tlck = txLock(tid, ip, smp, tlckDTREE | tlckENTRY |
+				      (BT_IS_ROOT(smp) ? tlckBTROOT : 0));
 			dtlck = (struct dt_lock *) & tlck->lock;
 			ASSERT(dtlck->index == 0);
 			lv = & dtlck->lv[0];
@@ -2161,7 +2163,8 @@ int dtDelete(tid_t tid,
 		/*
 		 * acquire a transaction lock on the leaf page
 		 */
-		tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY);
+		tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY |
+		      (BT_IS_ROOT(mp) ? tlckBTROOT : 0));
 		dtlck = (struct dt_lock *) & tlck->lock;
 
 		/*
@@ -2383,7 +2386,8 @@ static int dtDeleteUp(tid_t tid, struct inode *ip,
 		 *
 		 * action: router entry deletion
 		 */
-		tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY);
+		tlck = txLock(tid, ip, mp, tlckDTREE | tlckENTRY |
+			      (BT_IS_ROOT(mp) ? tlckBTROOT : 0));
 		dtlck = (struct dt_lock *) & tlck->lock;
 
 		/* linelock header */
diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 28c3cf960c6f..de7d4d5e67a8 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -642,7 +642,8 @@ int xtInsert(tid_t tid,		/* transaction id */
 
 	/* Don't log it if there are no links to the file */
 	if (!test_cflag(COMMIT_Nolink, ip)) {
-		tlck = txLock(tid, ip, mp, tlckXTREE | tlckGROW);
+		tlck = txLock(tid, ip, mp, tlckXTREE | tlckGROW |
+			      (BT_IS_ROOT(mp) ? tlckBTROOT : 0));
 		xtlck = (struct xtlock *) & tlck->lock;
 		xtlck->lwm.offset =
 		    (xtlck->lwm.offset) ? min(index,
@@ -733,7 +734,8 @@ xtSplitUp(tid_t tid,
 
 		/* Don't log it if there are no links to the file */
 		if (!test_cflag(COMMIT_Nolink, ip)) {
-			tlck = txLock(tid, ip, smp, tlckXTREE | tlckGROW);
+			tlck = txLock(tid, ip, smp, tlckXTREE | tlckGROW |
+				      tlckBTROOT);
 			xtlck = (struct xtlock *) & tlck->lock;
 			xtlck->lwm.offset = (xtlck->lwm.offset) ?
 			    min(skip, (int)xtlck->lwm.offset) : skip;
@@ -903,7 +905,8 @@ xtSplitUp(tid_t tid,
 			/* Don't log it if there are no links to the file */
 			if (!test_cflag(COMMIT_Nolink, ip)) {
 				tlck = txLock(tid, ip, smp,
-					      tlckXTREE | tlckGROW);
+					      tlckXTREE | tlckGROW |
+					      (BT_IS_ROOT(smp) ? tlckBTROOT : 0));
 				xtlck = (struct xtlock *) & tlck->lock;
 				xtlck->lwm.offset = (xtlck->lwm.offset) ?
 				    min(skip, (int)xtlck->lwm.offset) : skip;
-- 
2.52.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
