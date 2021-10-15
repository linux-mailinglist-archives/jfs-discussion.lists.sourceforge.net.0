Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2426342F4C7
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 16:05:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbNpX-00080U-RP; Fri, 15 Oct 2021 14:05:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1mbNc6-00021R-1l; Fri, 15 Oct 2021 13:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CZsQopzZFCFutbkFSIGbqiyQrSSJ9R5UeOdpKBwhF7I=; b=UAn6iFLvgDyW6mGUA8C7S+T7fG
 LZiWwJ5eiCc9zVd6CDkDz2hKX+eMeUy4juGUNbwHg0lkbP3LSJXYoLkZcLmxvY7xzX5OeNxiwWCBD
 Qcl06sRwsj77VtrXJ6k12eSsRSDNp6LDLZCqmymYozzgOg/92vkO4SplnFaA26gqHk1w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CZsQopzZFCFutbkFSIGbqiyQrSSJ9R5UeOdpKBwhF7I=; b=VrktY7NusE0aY/sX3HLZPfQTTz
 /Fa5tAlmijtDMccFOObbDR/G1X6VVL7sAwYnjn8cqKJfx55kPmdsa+kL0XcpST2ErRWaQoZXkliDO
 R+/DKKWenS7uUAVO8KqZCXhPT/UWl6sz8weQQyGCSfWBxVzIsXjHUy6fxyip8mBOM8f8=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbNc4-00EXBg-Ql; Fri, 15 Oct 2021 13:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CZsQopzZFCFutbkFSIGbqiyQrSSJ9R5UeOdpKBwhF7I=; b=Co6wYCF7AhUPA5SRoUj9KvX3/0
 OUn3XuYq99+ZapZrOXMaffeFLI7TIa10nOOoCaWcgLL5kjNEe5sv9dkk/zaDUmot0RLPv0lI/hAnk
 7M81vrANNQXDfiAq2WguipC+mpmulBU5RRiB8/b7DqhGr+4guXJ9Ej4V5VeGc/G7rVZO9SorGuR+T
 PQ24zoBl4Bg21VmaY53qc3PeN9McWVjplMTfyC7lYJklwr+0VrYdNxsSMlZhKxS9gTKu3Ha+VxCrp
 ujA3+QjINJ5dGCbFEFzHRRb5BajJ2KLveWZN7ycQfU/bnNveEeiFh6YTv4CqPavfPVChHhMumcYka
 hL9l2MMA==;
Received: from [2001:4bb8:199:73c5:ddfe:9587:819b:83b0] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbNFe-007Do9-Ir; Fri, 15 Oct 2021 13:27:58 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Fri, 15 Oct 2021 15:26:41 +0200
Message-Id: <20211015132643.1621913-29-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211015132643.1621913-1-hch@lst.de>
References: <20211015132643.1621913-1-hch@lst.de>
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
 Content preview:  Use the sb_bdev_nr_blocks helper instead of open coding it
 and clean up ntfs_fill_super a bit by moving an assignment a little earlier
 that has no negative side effects. Signed-off-by: Christoph Hellwig
 <hch@lst.de>
 Reviewed-by: Kees Cook <keescook@chromium.org> --- fs/ntfs/super.c | 8
 +++----- 1 file changed, 3 insertions(+), 5 deletions(-) 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
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
X-Headers-End: 1mbNc4-00EXBg-Ql
X-Mailman-Approved-At: Fri, 15 Oct 2021 14:04:58 +0000
Subject: [Jfs-discussion] [PATCH 28/30] ntfs: use sb_bdev_nr_blocks
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

Use the sb_bdev_nr_blocks helper instead of open coding it and clean up
ntfs_fill_super a bit by moving an assignment a little earlier that has
no negative side effects.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 fs/ntfs/super.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/fs/ntfs/super.c b/fs/ntfs/super.c
index 0d7e948cb29c9..5ae8de09b271b 100644
--- a/fs/ntfs/super.c
+++ b/fs/ntfs/super.c
@@ -2772,13 +2772,12 @@ static int ntfs_fill_super(struct super_block *sb, void *opt, const int silent)
 	ntfs_debug("Set device block size to %i bytes (block size bits %i).",
 			blocksize, sb->s_blocksize_bits);
 	/* Determine the size of the device in units of block_size bytes. */
-	if (!i_size_read(sb->s_bdev->bd_inode)) {
+	vol->nr_blocks = sb_bdev_nr_blocks(sb);
+	if (!vol->nr_blocks) {
 		if (!silent)
 			ntfs_error(sb, "Unable to determine device size.");
 		goto err_out_now;
 	}
-	vol->nr_blocks = i_size_read(sb->s_bdev->bd_inode) >>
-			sb->s_blocksize_bits;
 	/* Read the boot sector and return unlocked buffer head to it. */
 	if (!(bh = read_ntfs_boot_sector(sb, silent))) {
 		if (!silent)
@@ -2816,8 +2815,7 @@ static int ntfs_fill_super(struct super_block *sb, void *opt, const int silent)
 			goto err_out_now;
 		}
 		BUG_ON(blocksize != sb->s_blocksize);
-		vol->nr_blocks = i_size_read(sb->s_bdev->bd_inode) >>
-				sb->s_blocksize_bits;
+		vol->nr_blocks = sb_bdev_nr_blocks(sb);
 		ntfs_debug("Changed device block size to %i bytes (block size "
 				"bits %i) to match volume sector size.",
 				blocksize, sb->s_blocksize_bits);
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
