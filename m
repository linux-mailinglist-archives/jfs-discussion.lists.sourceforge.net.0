Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBACE42F4CA
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 16:06:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbNpY-00081a-QG; Fri, 15 Oct 2021 14:05:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1mbNcB-0000IE-72; Fri, 15 Oct 2021 13:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iTkNgdZQfGbb+9lDXMsfvC3u93+ih5z1kRRb3JEnPvg=; b=LE0OxifWO+dvhjiLAPeDgqxncx
 QyoaMTF+NfspJ2G0u8GUGOQjA3ISqhGYPpB+QN49s8XLqspEKZr8+52EHVYbYAblY8onGMpXjz8Lr
 ZBSk7+iUvIjg2svKaf9rVRARwO8hhhuSFng2OeXK1vBU8uQ/zO1tEbrGSqkR0vTrxffc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iTkNgdZQfGbb+9lDXMsfvC3u93+ih5z1kRRb3JEnPvg=; b=InrSPyyJGQkrx7/dc8LtU3zan+
 AthwkchWeiJkULJ1oOIxdzb7n2/iii04gYWbJchKJgf/FQ+ZvSeHkbMy+MNObY7wjBVYIhZc3vzEM
 YtIzwGgxOVOT3o3OagIrjbhyfvAlDVzYKEzOxvLWe0gu4vDvrSYefAbK1aRW9DWbiKSI=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbNcA-000278-Km; Fri, 15 Oct 2021 13:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=iTkNgdZQfGbb+9lDXMsfvC3u93+ih5z1kRRb3JEnPvg=; b=yDKo1RdywItRfhYIz9Nb0Th3N0
 jyskvffRONUfYov3ps7NIN2bcYrSY1kVH/rMET0h4mckC5F6Z5dfoDXMuqQR+1A380T69k8/rna8o
 Sz61wZWc0EMZkOEU0JBxwh/JPH5CogU8brK2JCYi07o9TNH4HLWgRfvZBsQZwDca4qiE6DToo/jRG
 yEUlxHbhBZjStVK+nmtwj2d+uPVZtVn41SqpXrQ0/faySnYSYItmWfQqRwLSCQyxx5DdPJ3StERqv
 +1OLTYHNUGVkssS83FORyRn/BoLOKKiLwQ3LHaPXG4WMNyyy/wyjDz8K+PX8AcqkGxM2lnKfOVXAB
 9IL+N9+A==;
Received: from [2001:4bb8:199:73c5:ddfe:9587:819b:83b0] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbNFM-007DUf-Fs; Fri, 15 Oct 2021 13:27:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Fri, 15 Oct 2021 15:26:34 +0200
Message-Id: <20211015132643.1621913-22-hch@lst.de>
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
 Content preview: Use the proper helper to read the block device size.
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- fs/pstore/blk.c | 8 +++----- 1 file changed,
 3 insertions(+), 5 deletions(-) diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
 index 04ce58c939a0b..5d1fbaffd66a1 100644 --- a/fs/pstore/blk.c +++
 b/fs/pstore/blk.c
 @@ -205,7 +205,6 @@ static ssize_t psblk_generic_blk_write(const ch [...]
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
X-Headers-End: 1mbNcA-000278-Km
X-Mailman-Approved-At: Fri, 15 Oct 2021 14:04:59 +0000
Subject: [Jfs-discussion] [PATCH 21/30] pstore/blk: use bdev_nr_bytes
 instead of open coding it
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
---
 fs/pstore/blk.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/fs/pstore/blk.c b/fs/pstore/blk.c
index 04ce58c939a0b..5d1fbaffd66a1 100644
--- a/fs/pstore/blk.c
+++ b/fs/pstore/blk.c
@@ -205,7 +205,6 @@ static ssize_t psblk_generic_blk_write(const char *buf, size_t bytes,
 static int __register_pstore_blk(struct pstore_device_info *dev,
 				 const char *devpath)
 {
-	struct inode *inode;
 	int ret = -ENODEV;
 
 	lockdep_assert_held(&pstore_blk_lock);
@@ -217,14 +216,13 @@ static int __register_pstore_blk(struct pstore_device_info *dev,
 		goto err;
 	}
 
-	inode = file_inode(psblk_file);
-	if (!S_ISBLK(inode->i_mode)) {
+	if (!S_ISBLK(file_inode(psblk_file)->i_mode)) {
 		pr_err("'%s' is not block device!\n", devpath);
 		goto err_fput;
 	}
 
-	inode = I_BDEV(psblk_file->f_mapping->host)->bd_inode;
-	dev->zone.total_size = i_size_read(inode);
+	dev->zone.total_size =
+		bdev_nr_bytes(I_BDEV(psblk_file->f_mapping->host));
 
 	ret = __register_pstore_device(dev);
 	if (ret)
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
