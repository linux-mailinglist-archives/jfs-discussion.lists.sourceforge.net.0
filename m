Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8392DDDCB
	for <lists+jfs-discussion@lfdr.de>; Fri, 18 Dec 2020 06:20:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kq8BL-0000N2-Em; Fri, 18 Dec 2020 05:19:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rdunlap@infradead.org>) id 1kq8BK-0000Mv-6Y
 for jfs-discussion@lists.sourceforge.net; Fri, 18 Dec 2020 05:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oZuF6ObLw2MhepsfeO7KviO77+kjHkMk2gYyhSP9s8E=; b=UHL3gKzDiI9+4rORiOCK+jFhYX
 mfpErvUWNhSUmmp0OEDKsAHmanT6yUeCJr1ekVvJddBV3uzKKtH5ZtNi+J7BgO1JiGqAkvIy8XTvP
 4bpoe5rBE3gFO6YaDP1Sym32hesFjuw101vz6FyMcAgS5m0PXG6Za1cQc28d3bPB6K60=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oZuF6ObLw2MhepsfeO7KviO77+kjHkMk2gYyhSP9s8E=; b=Z
 Q6mxHH/NGNbfbUqtMGIjvQBu9EKiBdMy2pKCF1wFeAGvIh96RLHYn2Agx/99YREuiCLEquYov+wu/
 +Jenf/SPJXxskcvSn8VpwFRONJUBqEMShnJiyVqNFEbxfYCkJu2Sq7dR7b3B6uptZLLbZW0Yw7gMh
 kxrOhWKypmTDePks=;
Received: from merlin.infradead.org ([205.233.59.134])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kq8B9-000x6e-QC
 for jfs-discussion@lists.sourceforge.net; Fri, 18 Dec 2020 05:19:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=oZuF6ObLw2MhepsfeO7KviO77+kjHkMk2gYyhSP9s8E=; b=ismFjqs4KR+eixVDEwUkDCT89B
 Rz4b+lVUNrDUvnKbXrW032F+JoK7govK3ZFfasiEUl0TUUzFf8d2zpFPxb2gZNfFDPKX5owjNhQKy
 M1Y+qOAqI71PDiCYQWBoscx5+yEVJP2sEd0YmzBBiHwr3k52prXQadxXntpJD7gbi2YjxBEpki2NS
 5sVKOFzHIXhc/Ve5dXKj0g2fnyPUp38ho3EvYMuWLhQagqZQDiERyhL618m3Z/mwwFdH+Lbn52nXx
 gpRQgMxGdNBaY+bLaL/9kSoo+iaXLxCWaAG7HyFPhAHEcKezUN5M8pzjuPYO8Rho5m59AbHcPopGI
 02DlTw/g==;
Received: from [2601:1c0:6280:3f0::64ea] (helo=smtpauth.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kq8Ap-0003Kf-Q5; Fri, 18 Dec 2020 05:19:28 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Thu, 17 Dec 2020 21:19:20 -0800
Message-Id: <20201218051920.6229-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
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
X-Headers-End: 1kq8B9-000x6e-QC
Subject: [Jfs-discussion] [PATCH] JFS: more checks for invalid superblock
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
 Randy Dunlap <rdunlap@infradead.org>,
 syzbot+36315852ece4132ec193@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

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
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Dave Kleikamp <shaggy@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net
---
 fs/jfs/jfs_filsys.h |    1 +
 fs/jfs/jfs_mount.c  |   10 ++++++++++
 2 files changed, 11 insertions(+)

--- lnx-510.orig/fs/jfs/jfs_mount.c
+++ lnx-510/fs/jfs/jfs_mount.c
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
+	    j_sb->s_state > FM_STATE_MAX) {
+		rc = -EINVAL;
+		jfs_err("jfs_mount: Mount Failure: superblock is corrupt!");
+		goto out;
+	}
+
 	/*
 	 * For now, ignore s_pbsize, l2bfactor.  All I/O going through buffer
 	 * cache.
--- lnx-510.orig/fs/jfs/jfs_filsys.h
+++ lnx-510/fs/jfs/jfs_filsys.h
@@ -268,5 +268,6 @@
 				 * fsck() must be run to repair
 				 */
 #define	FM_EXTENDFS 0x00000008	/* file system extendfs() in progress */
+#define	FM_STATE_MAX 0x0000000f	/* max value of s_state */
 
 #endif				/* _H_JFS_FILSYS */


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
