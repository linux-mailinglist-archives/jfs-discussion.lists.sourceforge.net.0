Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4A942C23B
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:09:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maevx-0000hy-N6; Wed, 13 Oct 2021 14:08:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5200d22377f13f7bc369+6625+infradead.org+hch@casper.srs.infradead.org>)
 id 1maWta-0004UG-6j; Wed, 13 Oct 2021 05:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2M1Bh6pS+W3syaNlX8bODC9HBAKOfbTmbVbcvNXHzR4=; b=Zpy80zKoUcqN3d2kAbS6jPjNZW
 aLtApcQtuoE4GoftIeJdIO83GlFygc92TWcwX0f3X/pWIoUPk+NKWE5AyU1JTUC14iIng9p/cTOz+
 viMULxbEpXezYqrErB4oMl+cMal7X6NYytEkZvaBPikOkaOGAUPm1yPoFDw2szI4ODBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2M1Bh6pS+W3syaNlX8bODC9HBAKOfbTmbVbcvNXHzR4=; b=d4MDSvDF/bpldLpxoDU/A8SEk+
 oA4lwRnXAmKjMYiJpMiZoMdan8T4dIaCl5SfFNcYP32whuT+jKftcYRPptn8tk3ktoWB8xda5uYWO
 5UsKYjxVY7Qqfcap4jANJ1uM/hk/Agn+atrbfTh0nRQrDl4BJiyER1Tdn9T7FzX2I0sU=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maWtZ-007EuX-NF; Wed, 13 Oct 2021 05:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=2M1Bh6pS+W3syaNlX8bODC9HBAKOfbTmbVbcvNXHzR4=; b=nfOn9SWa/2H3XvGOhq6vyClViq
 h0fvCEPgoATwgRVtD84QzMUYa/JQYdmm+Y7PtHszgvLGDWEsRFswyisrZXfL9gZKGcz31vTcWsrg4
 OGFcJbFKUg8jG8nSrcA/s/A3CTfOLQq15a76d7hTZLSTPE6c/hS9SLhiM9Y9NSEvRFFmEkBIR/ax7
 aae7T6h/4pPtlTXmYjrxWFUFoi0bN7EVeodHmFwyCA0FjT1bfh0cKpBTbyfg6hSUOC7DbPkCehU/T
 uU+Wa8swhAzPzYecQe6K5CLM0DVKE6E2g3Py1H/dkd6WQ4Bz2n+TKcDpwOgGIgp+pA/ZOt9odqWEx
 uLcffQYA==;
Received: from 089144212063.atnat0021.highway.a1.net ([89.144.212.63]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maWoV-0077HW-Fk; Wed, 13 Oct 2021 05:28:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 13 Oct 2021 07:10:29 +0200
Message-Id: <20211013051042.1065752-17-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013051042.1065752-1-hch@lst.de>
References: <20211013051042.1065752-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the proper helper to read the block device size.
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- fs/jfs/resize.c | 2 +- fs/jfs/super.c
 | 2 +- 2 files changed, 2 insertions(+),
 2 deletions(-) diff --git a/fs/jfs/resize.c
 b/fs/jfs/resize.c index bde787c354fcc..51a8b22e71030 100644 ---
 a/fs/jfs/resize.c
 +++ b/fs/jfs/resize.c @@ -199, 7 +199, 7 @@ int jfs_extendfs(struct super_block
 *sb, s64 ne [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1maWtZ-007EuX-NF
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:35 +0000
Subject: [Jfs-discussion] [PATCH 16/29] jfs: use bdev_nr_sectors instead of
 open coding it
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
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use the proper helper to read the block device size.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/jfs/resize.c | 2 +-
 fs/jfs/super.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/resize.c b/fs/jfs/resize.c
index bde787c354fcc..51a8b22e71030 100644
--- a/fs/jfs/resize.c
+++ b/fs/jfs/resize.c
@@ -199,7 +199,7 @@ int jfs_extendfs(struct super_block *sb, s64 newLVSize, int newLogSize)
 	txQuiesce(sb);
 
 	/* Reset size of direct inode */
-	sbi->direct_inode->i_size =  i_size_read(sb->s_bdev->bd_inode);
+	sbi->direct_inode->i_size = bdev_nr_sectors(sb->s_bdev) << SECTOR_SHIFT;
 
 	if (sbi->mntflag & JFS_INLINELOG) {
 		/*
diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 9030aeaf0f886..992870160903d 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -551,7 +551,7 @@ static int jfs_fill_super(struct super_block *sb, void *data, int silent)
 		ret = -ENOMEM;
 		goto out_unload;
 	}
-	inode->i_size = i_size_read(sb->s_bdev->bd_inode);
+	inode->i_size = bdev_nr_sectors(sb->s_bdev) << SECTOR_SHIFT;
 	inode->i_mapping->a_ops = &jfs_metapage_aops;
 	inode_fake_hash(inode);
 	mapping_set_gfp_mask(inode->i_mapping, GFP_NOFS);
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
