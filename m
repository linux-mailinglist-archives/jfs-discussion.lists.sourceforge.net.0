Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 657BC323C2D
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Feb 2021 13:51:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lEtdT-000262-Jq; Wed, 24 Feb 2021 12:51:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sashal@kernel.org>) id 1lEtdS-00025o-Bs
 for jfs-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 12:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kDjR+jJ+Fus+Dl4dCzUlsMzfhFqhbdc+DSt/3+BDnHo=; b=c8bwHIw/6nzp0e4lcTJpz/rI/I
 s4X+eNLwwG7bF22llS2UEVHYqOw/+3iP5REKzghTBIrLDwpIItP4yG7uORmtRk5LgSpI3hx3v9Ub5
 TSbbYh2u71A0i9rBxhMx3PyCB+PgZlmEv8m4DcbiZXNFU1anjrjn6bkiNKKDwpddJbkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kDjR+jJ+Fus+Dl4dCzUlsMzfhFqhbdc+DSt/3+BDnHo=; b=JAg2KlpP4Na6NURsZB3f3xbSjM
 Bh/DB4D7ryrkGUPbihmgxcDOqFXeGK6Z2o7DYr5jJCPtyHAwJiN4mlqCSFgOcLtGwm7UPHkX0MZpj
 MQSo1YY3hwiscTIVS+cpDCQh1I2juuycOih0pSmkFfFDV2OfZUnM0dHbFgjIyRD+B300=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lEtdK-0001T3-Mk
 for jfs-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 12:51:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5869664F14;
 Wed, 24 Feb 2021 12:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614171064;
 bh=uyV4Fsd/5vmg6wt4KA9Es4ZqNqkil7DPubeM55oQoRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RNCnPuJ4kJgnRfMkr20O17PpAYLcskYP7nba2uAUDkZv7ues26jHLnTpfAuH4EwTb
 h3d7t2QoxgrXPGd0v6jitFyNJaXMgfbbUl4ATfX6LCMORo7av8VjF3wW9cSsL73+OM
 OF2GfBwENu4c3mToo7N8lEHnntzs+KfWeDwKbj2zs3AG9tVctXULP16Ed8uhcuCZcg
 arFCTC3V1lZc+PnSOshWapdrCKHkJQHhliNUWu4M0KI77J5Fi/2hAK7n/nzqGs8mLH
 FnvrYwYMgQGu/yB9q2d7zZ+9YsypB7kmucSENhRzDwDUz5IETAHcxnY6KqPYrSikQy
 rH7yW/eCg0u0w==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Wed, 24 Feb 2021 07:49:45 -0500
Message-Id: <20210224125026.481804-27-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210224125026.481804-1-sashal@kernel.org>
References: <20210224125026.481804-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lEtdK-0001T3-Mk
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.11 27/67] JFS: more checks for
 invalid superblock
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
Cc: Sasha Levin <sashal@kernel.org>, jfs-discussion@lists.sourceforge.net,
 kernel test robot <lkp@intel.com>, Randy Dunlap <rdunlap@infradead.org>,
 syzbot+36315852ece4132ec193@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Randy Dunlap <rdunlap@infradead.org>

[ Upstream commit 3bef198f1b17d1bb89260bad947ef084c0a2d1a6 ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_filsys.h |  1 +
 fs/jfs/jfs_mount.c  | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/fs/jfs/jfs_filsys.h b/fs/jfs/jfs_filsys.h
index 1e899298f7f00..b5d702df7111a 100644
--- a/fs/jfs/jfs_filsys.h
+++ b/fs/jfs/jfs_filsys.h
@@ -268,5 +268,6 @@
 				 * fsck() must be run to repair
 				 */
 #define	FM_EXTENDFS 0x00000008	/* file system extendfs() in progress */
+#define	FM_STATE_MAX 0x0000000f	/* max value of s_state */
 
 #endif				/* _H_JFS_FILSYS */
diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 2935d4c776ec7..5d7d7170c03c0 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -37,6 +37,7 @@
 #include <linux/fs.h>
 #include <linux/buffer_head.h>
 #include <linux/blkdev.h>
+#include <linux/log2.h>
 
 #include "jfs_incore.h"
 #include "jfs_filsys.h"
@@ -366,6 +367,15 @@ static int chkSuper(struct super_block *sb)
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
-- 
2.27.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
