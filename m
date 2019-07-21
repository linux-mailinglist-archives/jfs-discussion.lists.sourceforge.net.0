Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 225CF6F33C
	for <lists+jfs-discussion@lfdr.de>; Sun, 21 Jul 2019 14:37:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hpB5I-0000Ii-IB; Sun, 21 Jul 2019 12:37:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hariprasad.kelam@gmail.com>) id 1hp9PJ-0005OP-Qk
 for jfs-discussion@lists.sourceforge.net; Sun, 21 Jul 2019 10:49:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eKFZ+EJBtskl1K3Uj/6mEks//mPAAbWUtGxEDCSbwhI=; b=INnj9DvDD31xdwiQ89j+mCeeN5
 idXOUcZJiwbxZiUsAu75rispgebV4YtjejH8xRdjM3hL3PvAhX8m5zbH/oY7Fhm/LF5ckULf+6KCQ
 tpf9+MntlbzvmNRSSaZtQyJOzPDfXe7OpYakUTKASRpkclMuX51i1d8ebauUVyxFXqJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eKFZ+EJBtskl1K3Uj/6mEks//mPAAbWUtGxEDCSbwhI=; b=L
 2uq24key9mPqK4XYrY3xfpqNc8vQNmci5JXhcm6PiDTbtRkmbS8DnCXp/AZexljwthS+EF/yUttA9
 vDVuhtOIXub2pjkaty/pUU2kt1nWX218ULTUaisahAeD209oOGe4FCwrTwjF4Lcy6G3T+Is3Kc7fF
 t1cCVN4Js6xggpOM=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hp9PF-009Ses-DC
 for jfs-discussion@lists.sourceforge.net; Sun, 21 Jul 2019 10:49:33 +0000
Received: by mail-pg1-f193.google.com with SMTP id x15so5962925pgg.8
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 21 Jul 2019 03:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=eKFZ+EJBtskl1K3Uj/6mEks//mPAAbWUtGxEDCSbwhI=;
 b=hLJyV9DjZPboQ7KXy5p51iwcZvwuln7M6OXpjcGUp3WjsgHpwSD39IogMlGKXrsdcY
 S+M1yzJ7XZUR6LSSuqOxYvWjKNsrHyy0cQjnjwNDUIjoI+WgIkhtwb2Hx3xzoQPmUrWf
 rjO+HfphX62VK4lSatvndtye0xK5Fpp9OjqSmVObNLtOv8b3YahgNMlSDBjQbsuWXXFk
 +y7cSY4D96Lw3Af6Fr/o0QibV5aU4DYg2h9upvET5wFE+MYaTLDMM40rNSDirEoXM7Mp
 V0mvN5e3DOQha2i1J48HaJPCCuli4fieJDhh/ppyJ1/AqZ4efWxSg6EK68bYFgYexio3
 Rzdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=eKFZ+EJBtskl1K3Uj/6mEks//mPAAbWUtGxEDCSbwhI=;
 b=M0/4Uq8RqBjCMwpYDiyF+ORRnRJRZzkq+YE/CD0+GZ9pnHlXhLO53cUxibDq0FW8lZ
 VrinxVTuDx2ShNmYmS5ZMY2RYxKqyHu6znhgfMQdMDK4jR8Af2qIV+3cGvOCcKTpH3bB
 PznJomE9L7lnvX/2mARYZNOSXuZa+QVu40NPHb10dlaNPxRRhmRNWiBq0pI6RQagirJx
 Eh0ZW9hVuZWJfK2q4KT0WtegpHq+zb2GuHbZLH4UsOVTGKDMV5pzpcGoVyw3kdiQ1xSx
 MP5fdOKEMfq9L9AaNQfsyy0nwyj73QxPhMV0KzWO/Pl8eO0vuqeU6op99DjMgm9CH3Ck
 xFJg==
X-Gm-Message-State: APjAAAVJX1mDpnph5dDpTDZ3Hnm1lrEKlfWYZua3yQzVJak3lu06d1jw
 9dGobQrwQqkAK0SOt+O3467sk4b8
X-Google-Smtp-Source: APXvYqyPW325GP+WXejUuGAHO4b7Sgym3wb9RCTAINF/vHd801OWKwoP7wpSCgDF/91Tcu0ehPezAQ==
X-Received: by 2002:a63:d04e:: with SMTP id s14mr62897813pgi.189.1563706163666; 
 Sun, 21 Jul 2019 03:49:23 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id l4sm36276472pff.50.2019.07.21.03.49.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 21 Jul 2019 03:49:22 -0700 (PDT)
Date: Sun, 21 Jul 2019 16:19:17 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Message-ID: <20190721104917.GA4627@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (hariprasad.kelam[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hp9PF-009Ses-DC
X-Mailman-Approved-At: Sun, 21 Jul 2019 12:36:59 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Change return type of txLog
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

As txLog always returns 0 change return type from int to void.

fix below issue reported by coccicheck 
/fs/jfs/jfs_txnmgr.c:1370:5-7: Unneeded variable: "rc". Return "0" on
line 1417


Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 fs/jfs/jfs_txnmgr.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index c8ce7f1..645cd0a2 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -159,8 +159,8 @@ static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 static void txAllocPMap(struct inode *ip, struct maplock * maplock,
 		struct tblock * tblk);
 static void txForce(struct tblock * tblk);
-static int txLog(struct jfs_log * log, struct tblock * tblk,
-		struct commit * cd);
+static void txLog(struct jfs_log *log, struct tblock *tblk,
+		struct commit *cd);
 static void txUpdateMap(struct tblock * tblk);
 static void txRelease(struct tblock * tblk);
 static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
@@ -1256,8 +1256,7 @@ int txCommit(tid_t tid,		/* transaction identifier */
 	 *
 	 * txUpdateMap() resets XAD_NEW in XAD.
 	 */
-	if ((rc = txLog(log, tblk, &cd)))
-		goto TheEnd;
+	 txLog(log, tblk, &cd);
 
 	/*
 	 * Ensure that inode isn't reused before
@@ -1365,9 +1364,8 @@ int txCommit(tid_t tid,		/* transaction identifier */
  *
  * RETURN :
  */
-static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
+static void txLog(struct jfs_log *log, struct tblock *tblk, struct commit *cd)
 {
-	int rc = 0;
 	struct inode *ip;
 	lid_t lid;
 	struct tlock *tlck;
@@ -1413,8 +1411,6 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
 			jfs_err("UFO tlock:0x%p", tlck);
 		}
 	}
-
-	return rc;
 }
 
 /*
-- 
2.7.4



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
