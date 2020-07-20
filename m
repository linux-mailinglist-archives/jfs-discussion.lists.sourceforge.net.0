Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1227C2255BD
	for <lists+jfs-discussion@lfdr.de>; Mon, 20 Jul 2020 04:04:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jxLA2-0006eO-Hs; Mon, 20 Jul 2020 02:04:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1jxJRa-0002BD-1q
 for jfs-discussion@lists.sourceforge.net; Mon, 20 Jul 2020 00:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+8KIohn8oTybDj4EKgVF5l5KNyz4huEAk4t5RDm5bJA=; b=RbbpQLINr/2ojvYkirF6lRC/e6
 97SmbOlhF3Qs6DshmuV6wgkqkkEz+prZmnEd8IT21h9Sz4mv2jWcP4jwDnu6BaUxPum9nK90uCvJ4
 E5v5Cx6hubkaxMBBX6HjKSV1mLZoJvEs3XXxkWTKYufMWCrS/tmthINChKqdl0H462h4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+8KIohn8oTybDj4EKgVF5l5KNyz4huEAk4t5RDm5bJA=; b=D
 K99XT2KrY7eHZeBY8dtvfP5kHX7BZEMNQMD0d2IBRVYMwDC5hxwNfzgjKrt8rrjxQHntkVT2famsp
 b/Rz26WWxDvZc29m3K0uULnrnrELWwS9NEh1BbfRj363+xefUhmIC1BY0n+Hx72df6DeoApOZAM/Q
 /TKKjtsuVt5Swz3Y=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jxJRY-0091VC-NQ
 for jfs-discussion@lists.sourceforge.net; Mon, 20 Jul 2020 00:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=+8KIohn8oTybDj4EKgVF5l5KNyz4huEAk4t5RDm5bJA=; b=IQP0zmhtpzvcJU/JkzWpO+HJSV
 GHi7XB174Vq4IFZi9P7nGj3EmLLmsqCO7mLDGK8q7vwnI+QJ22W2pQWq5nRZQZjGrtnbkr78eu6Az
 Tlf18qGi8Jum2LcM5mDHAwibGC0usaK2/H0/CVFxSGk3L+m4a7r5maz11f7VCgUeMS717FroOD7aG
 nGrHmGkesoWHH17GrMBUAAImB46D+2cv2mqAp2yUVwgddYJKG/0Y6R54ANMglIX7pm6r1EGsCo06D
 zWCiGqo/oAfwCsIx2YHN1aoEMpbGBce0IvPqoBmSZDADj8jJ9TKTdoAOyoIfi5asiS5HGfCWW+qD4
 EWwZbvNQ==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jxJRN-0003yN-ML; Mon, 20 Jul 2020 00:13:58 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Sun, 19 Jul 2020 17:13:53 -0700
Message-Id: <20200720001353.26200-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.233.59.134 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jxJRY-0091VC-NQ
X-Mailman-Approved-At: Mon, 20 Jul 2020 02:04:09 +0000
Subject: [Jfs-discussion] [PATCH] jfs: delete duplicated words in header
 files
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Drop the repeated words "allocation" and "if" in comments.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Dave Kleikamp <shaggy@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net
---
 fs/jfs/jfs_extent.h |    2 +-
 fs/jfs/jfs_logmgr.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20200717.orig/fs/jfs/jfs_extent.h
+++ linux-next-20200717/fs/jfs/jfs_extent.h
@@ -5,7 +5,7 @@
 #ifndef	_H_JFS_EXTENT
 #define _H_JFS_EXTENT
 
-/*  get block allocation allocation hint as location of disk inode */
+/*  get block allocation hint as location of disk inode */
 #define	INOHINT(ip)	\
 	(addressPXD(&(JFS_IP(ip)->ixpxd)) + lengthPXD(&(JFS_IP(ip)->ixpxd)) - 1)
 
--- linux-next-20200717.orig/fs/jfs/jfs_logmgr.h
+++ linux-next-20200717/fs/jfs/jfs_logmgr.h
@@ -132,7 +132,7 @@ struct logpage {
  * (this comment should be rewritten !)
  * jfs uses only "after" log records (only a single writer is allowed
  * in a page, pages are written to temporary paging space if
- * if they must be written to disk before commit, and i/o is
+ * they must be written to disk before commit, and i/o is
  * scheduled for modified pages to their home location after
  * the log records containing the after values and the commit
  * record is written to the log on disk, undo discards the copy


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
