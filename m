Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D8732E807
	for <lists+jfs-discussion@lfdr.de>; Fri,  5 Mar 2021 13:24:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lI9VW-00071X-8j; Fri, 05 Mar 2021 12:24:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=B6TO=ID=linuxfoundation.org=gregkh@kernel.org>)
 id 1lI9VU-00071O-1w
 for jfs-discussion@lists.sourceforge.net; Fri, 05 Mar 2021 12:24:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CPYq9SiBM7g6eEcdV2dE2zLtCyfTwtwGln5u+3cgL88=; b=LxoAQyBApTzO63eHu8tZVVp8gm
 zSAPtKD3QKDgf7KCwuM3pMdB7g+XTMOkkFn3R4jhcoJbl3tOvZw0265Db1zZkjWWjVroQ3AdHqb4b
 YFMpDaZqoidEFm/MkKXD1lR2UiyG//mZl+yOkCmyHvTi1IGAJGY9r4Nadwxc1kzqxkdo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CPYq9SiBM7g6eEcdV2dE2zLtCyfTwtwGln5u+3cgL88=; b=Ub8mkDwGsVZlEkBHSOw6yZPMDJ
 aa+w16aU8EwZUBX1jSrQBiism+5OTH6lsuk/ziRIM5kkGvyvuOBCKF9l511TC65bDk6+V6+tmmMn3
 PMLQuyYwGnCQoGnp4u8prVyOyGYojT9fUjO9XFnIW+aTXnn3cgWtfNSAY8iotLbinrCw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lI9VL-00EyfF-NJ
 for jfs-discussion@lists.sourceforge.net; Fri, 05 Mar 2021 12:24:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C0A36501D;
 Fri,  5 Mar 2021 12:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614947061;
 bh=GVKVVUsYPRldskt4Uo4I78tSHDyDK3qfwL0u7R6MWys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qVLe3a+xeH+SeT3tDlem6rDDDLaMBHhPPvm/SybG4AinUWu/+gm6kcbqnANipDgvL
 H4OOPgsIASppMSU2vjnwq/1RjyPN10WyyeqCc6+VxH73pEpyhdloMfatNJEoHXbBtb
 Si7/9PzH9P0XZJ1qcyYTpKucl+WxJ1/AVR3yXzus=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Fri,  5 Mar 2021 13:20:09 +0100
Message-Id: <20210305120903.393210707@linuxfoundation.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305120903.166929741@linuxfoundation.org>
References: <20210305120903.166929741@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
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
X-Headers-End: 1lI9VL-00EyfF-NJ
Subject: [Jfs-discussion] [PATCH 5.11 004/104] JFS: more checks for invalid
 superblock
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
Cc: jfs-discussion@lists.sourceforge.net, kernel test robot <lkp@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, stable@vger.kernel.org,
 syzbot+36315852ece4132ec193@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

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
@@ -268,5 +268,6 @@
 				 * fsck() must be run to repair
 				 */
 #define	FM_EXTENDFS 0x00000008	/* file system extendfs() in progress */
+#define	FM_STATE_MAX 0x0000000f	/* max value of s_state */
 
 #endif				/* _H_JFS_FILSYS */
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -37,6 +37,7 @@
 #include <linux/fs.h>
 #include <linux/buffer_head.h>
 #include <linux/blkdev.h>
+#include <linux/log2.h>
 
 #include "jfs_incore.h"
 #include "jfs_filsys.h"
@@ -366,6 +367,15 @@ static int chkSuper(struct super_block *
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




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
