Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE57632D558
	for <lists+jfs-discussion@lfdr.de>; Thu,  4 Mar 2021 15:34:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lHp3m-0006u5-TE; Thu, 04 Mar 2021 14:34:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=9jyl=IC=linuxfoundation.org=gregkh@kernel.org>)
 id 1lHp3l-0006tQ-GC
 for jfs-discussion@lists.sourceforge.net; Thu, 04 Mar 2021 14:34:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:From:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MzU/P1xAPIk+H1jOhoir1jfyUKem6KxVaZxH5mEWP2M=; b=ZRSPM6klbp9TuUtEvNehhntnXh
 aIHWLBUwPPbnkFGWNHkoNFTk+e83Yyxr+RZ907MjYcKHMJxhSGZDx7crvP5Xco+3YsbqTNc86wEci
 bESlT+kjTNIlW8jLlcxg3xwfGy8qs9LB/8baGc4VgZPNJdWF1srPWIhiCL82z63jhyN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:From:
 Cc:To:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MzU/P1xAPIk+H1jOhoir1jfyUKem6KxVaZxH5mEWP2M=; b=L
 EMrqo11Iao50igU0yJwV+5euuuv41oN/RrAV8lBEOzrzpZ4RiJmLmiBapuCG6DvNU+lANPQ8YEeKg
 cbgYe43zkUN9ePJd8KbQZKj/Df5qpS9H9rmROv3NkXpMknayoU/AVaZw8EbjhhkLoA44DKutgli/1
 urglUqb1GCpFgpnE=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lHp3c-0002st-Bj
 for jfs-discussion@lists.sourceforge.net; Thu, 04 Mar 2021 14:34:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7020264F4A;
 Thu,  4 Mar 2021 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614868462;
 bh=JzfihY2RGtAYH+5vYLRyKDfcR6UXyPZ/Yiro4A5VbY8=;
 h=Subject:To:Cc:From:Date:From;
 b=sJonW2IOgBftMTk50lD5caUec9+t1IZZ4ZsgTLJkJVzXwuEmN/sX0lOH5A1xFrMRi
 R4tKUok16Nhe+D4TGQKuxuiBU2clzn6GYshQmanonkjxD0P2aAqObPdBgNCZ3ZcH6B
 /45vS1LgNpXtmc3DwlES53QjGZLaO1wvs+76xUAg=
To: dave.kleikamp@oracle.com, gregkh@linuxfoundation.org,
 jfs-discussion@lists.sourceforge.net, lkp@intel.com, rdunlap@infradead.org,
 syzbot+36315852ece4132ec193@syzkaller.appspotmail.com
From: <gregkh@linuxfoundation.org>
Date: Thu, 04 Mar 2021 15:34:20 +0100
Message-ID: <16148684601204@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lHp3c-0002st-Bj
Subject: [Jfs-discussion] Patch "JFS: more checks for invalid superblock"
 has been added to the 4.14-stable tree
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


This is a note to let you know that I've just added the patch titled

    JFS: more checks for invalid superblock

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     jfs-more-checks-for-invalid-superblock.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 3bef198f1b17d1bb89260bad947ef084c0a2d1a6 Mon Sep 17 00:00:00 2001
From: Randy Dunlap <rdunlap@infradead.org>
Date: Fri, 18 Dec 2020 12:17:16 -0800
Subject: JFS: more checks for invalid superblock

From: Randy Dunlap <rdunlap@infradead.org>

commit 3bef198f1b17d1bb89260bad947ef084c0a2d1a6 upstream.

syzbot is feeding invalid superblock data to JFS for mount testing.
JFS does not check several of the fields -- just assumes that they
are good since the JFS_MAGIC and version fields are good.

In this case (syzbot reproducer), we have s_l2bsize == 0xda0c,
pad == 0xf045, and s_state == 0x50, all of which are invalid IMO.
Having s_l2bsize == 0xda0c causes this UBSAN warning:
  UBSAN: shift-out-of-bounds in fs/jfs/jfs_mount.c:373:25
  shift exponent -9716 is negative

s_l2bsize can be tested for correctness. pad can be tested for non-0
and punted. s_state can be tested for its valid values and punted.

Do those 3 tests and if any of them fails, report the superblock as
invalid/corrupt and let fsck handle it.

With this patch, chkSuper() says this when JFS_DEBUG is enabled:
  jfs_mount: Mount Failure: superblock is corrupt!
  Mount JFS Failure: -22
  jfs_mount failed w/return code = -22

The obvious problem with this method is that next week there could
be another syzbot test that uses different fields for invalid values,
this making this like a game of whack-a-mole.

syzkaller link: https://syzkaller.appspot.com/bug?extid=36315852ece4132ec193

Reported-by: syzbot+36315852ece4132ec193@syzkaller.appspotmail.com
Reported-by: kernel test robot <lkp@intel.com> # v2
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: jfs-discussion@lists.sourceforge.net
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 fs/jfs/jfs_filsys.h |    1 +
 fs/jfs/jfs_mount.c  |   10 ++++++++++
 2 files changed, 11 insertions(+)

--- a/fs/jfs/jfs_filsys.h
+++ b/fs/jfs/jfs_filsys.h
@@ -281,5 +281,6 @@
 				 * fsck() must be run to repair
 				 */
 #define	FM_EXTENDFS 0x00000008	/* file system extendfs() in progress */
+#define	FM_STATE_MAX 0x0000000f	/* max value of s_state */
 
 #endif				/* _H_JFS_FILSYS */
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -49,6 +49,7 @@
 
 #include <linux/fs.h>
 #include <linux/buffer_head.h>
+#include <linux/log2.h>
 
 #include "jfs_incore.h"
 #include "jfs_filsys.h"
@@ -378,6 +379,15 @@ static int chkSuper(struct super_block *
 	sbi->bsize = bsize;
 	sbi->l2bsize = le16_to_cpu(j_sb->s_l2bsize);
 
+	/* check some fields for possible corruption */
+	if (sbi->l2bsize != ilog2((u32)bsize) ||
+	    j_sb->pad != 0 ||
+	    le32_to_cpu(j_sb->s_state) > FM_STATE_MAX) {
+		rc = -EINVAL;
+		jfs_err("jfs_mount: Mount Failure: superblock is corrupt!");
+		goto out;
+	}
+
 	/*
 	 * For now, ignore s_pbsize, l2bfactor.  All I/O going through buffer
 	 * cache.


Patches currently in stable-queue which might be from rdunlap@infradead.org are

queue-4.14/jfs-more-checks-for-invalid-superblock.patch


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
