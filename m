Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 839F0431B9D
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSji-0002FA-CY; Mon, 18 Oct 2021 13:31:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+653fb0268b18c2e086a8+6630+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1mcPdL-0004BH-Bw; Mon, 18 Oct 2021 10:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DMbZD8OeMMd/yqrhapJBulLuJFeWbAD/w/Sp3u2oYk0=; b=laWtoTr8x+fUh9E2NazRsn6MZH
 3J7IvtqIPeKoqoRNPXxaAoKkvk+04QP5Hv6zo0yrToE/V/TjqoRcPh0ulFDNDSswDA+7lfNHpDwIy
 qai5YMEzTehCkRSlPFFq6NxN1CNSbzjGMWl9URtaCs8lghyQAORJYR2IvBpJCind3no0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DMbZD8OeMMd/yqrhapJBulLuJFeWbAD/w/Sp3u2oYk0=; b=kx3L/7ckkD4fpTbBmE26Tx2uZ0
 De2SWoSiEhgZHg4hiPB95JHIaM2BKlB1u2ZdrnS8t4sU4qDgDfP3118/1vuXFgArglPIu1x50krC1
 EmXcSg9zCRLMq4FCOCleiBMfE25z/aQlEw+1dg2M8QkMVISmrQB3Vftl4ApwzDasxc+A=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcPdK-00031g-RL; Mon, 18 Oct 2021 10:12:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=DMbZD8OeMMd/yqrhapJBulLuJFeWbAD/w/Sp3u2oYk0=; b=J8brRFMkcMliGARDrMhD+ZAl7w
 ITXO1cXo7gzsmWeitx525EgHOD06girj8vXf8p7AsTKLGfG2y2hEo+vR3e2z7RjGw/yJHwPP5AXes
 PgI4IxAS1sHm/kpHi0BhKQUP955ro0KPKRsROe/PQVI32u0eTVpjokIPYQQRVkgJnJjX0KgAf6Ode
 r7i0lJ7VK1MBn5i9isV1OVyQmripkfx/JEEh7Vy9XvqidKwbR6a3Eh3xhywt9HgkCIABVdAJoqWjk
 v0LaMHNoR0SayG58F1IcIWFKi/GOQqb4IfwdTQRdq8NtvmVltY2zk08Ym0uNdXSkd6kpIubgzIB+L
 w34nUPaw==;
Received: from [2001:4bb8:199:73c5:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcPd2-00EuYY-1w; Mon, 18 Oct 2021 10:12:24 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Mon, 18 Oct 2021 12:11:19 +0200
Message-Id: <20211018101130.1838532-20-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211018101130.1838532-1-hch@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the proper helper to read the block device size.
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook <keescook@chromium.org>
 Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com> --- fs/nilfs2/ioctl.c
 | 2 +- fs/nilfs2/super.c | 2 +- [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mcPdK-00031g-RL
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:21 +0000
Subject: [Jfs-discussion] [PATCH 19/30] nilfs2: use bdev_nr_bytes instead of
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
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
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
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Ryusuke Konishi <konishi.ryusuke@gmail.com>
---
 fs/nilfs2/ioctl.c     | 2 +-
 fs/nilfs2/super.c     | 2 +-
 fs/nilfs2/the_nilfs.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/nilfs2/ioctl.c b/fs/nilfs2/ioctl.c
index 640ac8fe891e6..1d0583cfd9701 100644
--- a/fs/nilfs2/ioctl.c
+++ b/fs/nilfs2/ioctl.c
@@ -1107,7 +1107,7 @@ static int nilfs_ioctl_set_alloc_range(struct inode *inode, void __user *argp)
 		goto out;
 
 	ret = -ERANGE;
-	if (range[1] > i_size_read(inode->i_sb->s_bdev->bd_inode))
+	if (range[1] > bdev_nr_bytes(inode->i_sb->s_bdev))
 		goto out;
 
 	segbytes = nilfs->ns_blocks_per_segment * nilfs->ns_blocksize;
diff --git a/fs/nilfs2/super.c b/fs/nilfs2/super.c
index f6b2d280aab5a..3134c0e42fd46 100644
--- a/fs/nilfs2/super.c
+++ b/fs/nilfs2/super.c
@@ -403,7 +403,7 @@ int nilfs_resize_fs(struct super_block *sb, __u64 newsize)
 	int ret;
 
 	ret = -ERANGE;
-	devsize = i_size_read(sb->s_bdev->bd_inode);
+	devsize = bdev_nr_bytes(sb->s_bdev);
 	if (newsize > devsize)
 		goto out;
 
diff --git a/fs/nilfs2/the_nilfs.c b/fs/nilfs2/the_nilfs.c
index c8bfc01da5d71..1bfcb5d3ea480 100644
--- a/fs/nilfs2/the_nilfs.c
+++ b/fs/nilfs2/the_nilfs.c
@@ -489,7 +489,7 @@ static int nilfs_load_super_block(struct the_nilfs *nilfs,
 {
 	struct nilfs_super_block **sbp = nilfs->ns_sbp;
 	struct buffer_head **sbh = nilfs->ns_sbh;
-	u64 sb2off = NILFS_SB2_OFFSET_BYTES(nilfs->ns_bdev->bd_inode->i_size);
+	u64 sb2off = NILFS_SB2_OFFSET_BYTES(bdev_nr_bytes(nilfs->ns_bdev));
 	int valid[2], swp = 0;
 
 	sbp[0] = nilfs_read_super_block(sb, NILFS_SB_OFFSET_BYTES, blocksize,
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
