Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 280D242F4BB
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Oct 2021 16:05:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mbNpY-00081g-Te; Fri, 15 Oct 2021 14:05:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1mbNda-00026U-W0; Fri, 15 Oct 2021 13:52:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7vy0+8EI8WhVCxcCPpT3E3xZPAv/h7863mIj0HITKC4=; b=O3dxUgfPtUlr1MmQGGK8oZ/cCN
 ILJAzrpr9fxptSB2ZuMbxLO2wqGpGV7OwOaG+fBuwR6DoVsac2AcON/PwKSxmqOaO6OwLdf2p02pX
 ZOaTePGILvmILcq/KIkjmrlDEr68rg9IwCaBxrkDOcrdte0EGVhPMFX1OnihGPhTvHMU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7vy0+8EI8WhVCxcCPpT3E3xZPAv/h7863mIj0HITKC4=; b=DmIrGyN/5I+Yh5e7kxSlEtzX1l
 A7+SYU2PlwDD3jWPKuGrSscPKruPQ6mZLSSPKwl24gkge2gBPdKK46V6StRcja9jst4j8z0eGsMQM
 SzFX6oBpWEOTSmIzYLD7u8AuBWMUEZ8kXrhO9DKtuj8wWx+zQyv7O4oRv5l1ATvCEAXo=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mbNda-0002JL-GH; Fri, 15 Oct 2021 13:52:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=7vy0+8EI8WhVCxcCPpT3E3xZPAv/h7863mIj0HITKC4=; b=xmxZRfmuHz0VqdbUt2oT7Bevb7
 o4CxF77k0oZ/rzw6OpdJBPS9aNjql5VKLH61Ct4+Yt2AwCG9Jx1/flLXuMKMifBBrYJEUsR3a3fWo
 B7GgHgzInH6ck+PsWqLyxhKxpsoA7oJm+IkApWIK+2n/B11ik1ZAwOeWyZ+W7My6FzsNx6yCXjDsq
 WokCivh+P43Uf5GvNl5Jx72fqF06MBW34ChI9M77fHda72O4TYZYenz2y3vZhHHuSCndcxv7KTqfF
 UOGDQMh4qkLEPZM/+G2Q0iCwlTWD8HrZ5I7oxXkmeQNSJGjTZWeE6ViTYA/CkqLpdtpO7s3ysge5I
 Nmi3hQXA==;
Received: from [2001:4bb8:199:73c5:ddfe:9587:819b:83b0] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbNFJ-007DRi-Uj; Fri, 15 Oct 2021 13:27:38 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Fri, 15 Oct 2021 15:26:33 +0200
Message-Id: <20211015132643.1621913-21-hch@lst.de>
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
 Christoph Hellwig <hch@lst.de> --- fs/ntfs3/super.c | 3 +-- 1 file changed,
 1 insertion(+), 2 deletions(-) diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
 index 55bbc9200a10e..7ed2cb5e8b1d9 100644 --- a/fs/ntfs3/super.c +++
 b/fs/ntfs3/super.c
 @@ -918,7 +918,6 @@ static int ntfs_fill_super(struct super_blo [...] 
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
X-Headers-End: 1mbNda-0002JL-GH
X-Mailman-Approved-At: Fri, 15 Oct 2021 14:04:59 +0000
Subject: [Jfs-discussion] [PATCH 20/30] ntfs3: use bdev_nr_bytes instead of
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
---
 fs/ntfs3/super.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/ntfs3/super.c b/fs/ntfs3/super.c
index 55bbc9200a10e..7ed2cb5e8b1d9 100644
--- a/fs/ntfs3/super.c
+++ b/fs/ntfs3/super.c
@@ -918,7 +918,6 @@ static int ntfs_fill_super(struct super_block *sb, void *data, int silent)
 	int err;
 	struct ntfs_sb_info *sbi;
 	struct block_device *bdev = sb->s_bdev;
-	struct inode *bd_inode = bdev->bd_inode;
 	struct request_queue *rq = bdev_get_queue(bdev);
 	struct inode *inode = NULL;
 	struct ntfs_inode *ni;
@@ -967,7 +966,7 @@ static int ntfs_fill_super(struct super_block *sb, void *data, int silent)
 
 	/* Parse boot. */
 	err = ntfs_init_from_boot(sb, rq ? queue_logical_block_size(rq) : 512,
-				  bd_inode->i_size);
+				  bdev_nr_bytes(bdev));
 	if (err)
 		goto out;
 
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
