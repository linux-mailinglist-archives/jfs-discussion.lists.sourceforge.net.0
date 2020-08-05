Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF2623C3B4
	for <lists+jfs-discussion@lfdr.de>; Wed,  5 Aug 2020 04:50:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1k39Uh-0004hg-Km; Wed, 05 Aug 2020 02:49:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1k39Ug-0004hV-3n
 for jfs-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 02:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5DypN0ijHBHZ/kAe3LdCZQtmJcp7UEsHJipKJHyPuuQ=; b=Jahv/uGFOHUedq7ykoPoX7UnZU
 hbyBfb37dXhrmzggyGcbjEpt6nVQa9+u5Nso6VOSBJAnlCdC9dVdduFLMkx21pQsNH4Ajyv2NEJ07
 G1+d+o1haW7JlFFkWdfh5uKrHwOtF2kUErXp7vbHKRGSBf28pTLxknJyH/Zo4SBMPxCc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5DypN0ijHBHZ/kAe3LdCZQtmJcp7UEsHJipKJHyPuuQ=; b=X
 Yf9WbU5xwvy/SuLiL8EaMjkgzYmzIEUpdhW+xR79WJOB+592YmN3qBnFOQ0uY4GbwwDy2iCFX+SHq
 OWZixEHOWjiZmCHUCYJKipPCcJrpTMeZd26Xbo1VvNgZxpGysFIVB18+sjLpRgb6LRB+5iIvjpgD+
 tnudFz0PNRy0Otjw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k39Uc-00AFQH-Mc
 for jfs-discussion@lists.sourceforge.net; Wed, 05 Aug 2020 02:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=5DypN0ijHBHZ/kAe3LdCZQtmJcp7UEsHJipKJHyPuuQ=; b=kKh9f2l/S0/nSj/UvVZxlyJJtj
 y1dcDO6LAfTSCckksXAC7RNnkefLKfR5SAiTC+BeGSg7n722Aoav10+giskT2J205FGYFMuHn3gW4
 EJ0B/taRpqUge0VNvNtc2ojYnFBaM/8UjjWGszx83j3/GYkdBBlHVodz2PIDWS3lN3qCUHO2cgcWc
 qyXT1lgzuF28bKN8IzIg58AQFs9jCuS8TAfGpmSdP3x8K/KE3loJw4UBbJ9XnybT0BmoiatAuOw1P
 nVZUZmacJAKplH6RKk9VPWjEencKD2Fvqg584u8rTgjlcm7r/QsUQxDWxkTwZa7OUJvKo8UxwQYQW
 UWEu6F/w==;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k39UG-0007Ux-TU; Wed, 05 Aug 2020 02:49:06 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Tue,  4 Aug 2020 19:49:01 -0700
Message-Id: <20200805024901.12181-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -1.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k39Uc-00AFQH-Mc
Subject: [Jfs-discussion] [PATCH] jfs: delete duplicated words + other fixes
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

Delete repeated words in fs/jfs/.
{for, allocation, if, the}
Insert "is" in one place to correct the grammar.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
To: linux-fsdevel@vger.kernel.org
Cc: Dave Kleikamp <shaggy@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net
---
 fs/jfs/jfs_dmap.c   |    2 +-
 fs/jfs/jfs_extent.c |    2 +-
 fs/jfs/jfs_extent.h |    2 +-
 fs/jfs/jfs_logmgr.h |    2 +-
 fs/jfs/jfs_txnmgr.c |    2 +-
 fs/jfs/jfs_xtree.c  |    2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

--- linux-next-20200804.orig/fs/jfs/jfs_dmap.c
+++ linux-next-20200804/fs/jfs/jfs_dmap.c
@@ -668,7 +668,7 @@ unlock:
  *		this does not succeed, we finally try to allocate anywhere
  *		within the aggregate.
  *
- *		we also try to allocate anywhere within the aggregate for
+ *		we also try to allocate anywhere within the aggregate
  *		for allocation requests larger than the allocation group
  *		size or requests that specify no hint value.
  *
--- linux-next-20200804.orig/fs/jfs/jfs_extent.c
+++ linux-next-20200804/fs/jfs/jfs_extent.c
@@ -575,7 +575,7 @@ extBalloc(struct inode *ip, s64 hint, s6
  *	blkno	 - starting block number of the extents current allocation.
  *	nblks	 - number of blocks within the extents current allocation.
  *	newnblks - pointer to a s64 value.  on entry, this value is the
- *		   the new desired extent size (number of blocks).  on
+ *		   new desired extent size (number of blocks).  on
  *		   successful exit, this value is set to the extent's actual
  *		   new size (new number of blocks).
  *	newblkno - the starting block number of the extents new allocation.
--- linux-next-20200804.orig/fs/jfs/jfs_extent.h
+++ linux-next-20200804/fs/jfs/jfs_extent.h
@@ -5,7 +5,7 @@
 #ifndef	_H_JFS_EXTENT
 #define _H_JFS_EXTENT
 
-/*  get block allocation allocation hint as location of disk inode */
+/*  get block allocation hint as location of disk inode */
 #define	INOHINT(ip)	\
 	(addressPXD(&(JFS_IP(ip)->ixpxd)) + lengthPXD(&(JFS_IP(ip)->ixpxd)) - 1)
 
--- linux-next-20200804.orig/fs/jfs/jfs_logmgr.h
+++ linux-next-20200804/fs/jfs/jfs_logmgr.h
@@ -132,7 +132,7 @@ struct logpage {
  * (this comment should be rewritten !)
  * jfs uses only "after" log records (only a single writer is allowed
  * in a page, pages are written to temporary paging space if
- * if they must be written to disk before commit, and i/o is
+ * they must be written to disk before commit, and i/o is
  * scheduled for modified pages to their home location after
  * the log records containing the after values and the commit
  * record is written to the log on disk, undo discards the copy
--- linux-next-20200804.orig/fs/jfs/jfs_txnmgr.c
+++ linux-next-20200804/fs/jfs/jfs_txnmgr.c
@@ -1474,7 +1474,7 @@ static int diLog(struct jfs_log * log, s
 		 * For the LOG_NOREDOINOEXT record, we need
 		 * to pass the IAG number and inode extent
 		 * index (within that IAG) from which the
-		 * the extent being released.  These have been
+		 * extent is being released.  These have been
 		 * passed to us in the iplist[1] and iplist[2].
 		 */
 		lrd->log.noredoinoext.iagnum =
--- linux-next-20200804.orig/fs/jfs/jfs_xtree.c
+++ linux-next-20200804/fs/jfs/jfs_xtree.c
@@ -3684,7 +3684,7 @@ s64 xtTruncate(tid_t tid, struct inode *
  *
  * function:
  *	Perform truncate to zero length for deleted file, leaving the
- *	the xtree and working map untouched.  This allows the file to
+ *	xtree and working map untouched.  This allows the file to
  *	be accessed via open file handles, while the delete of the file
  *	is committed to disk.
  *


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
