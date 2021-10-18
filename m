Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA906431B76
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSjg-0002Ac-4W; Mon, 18 Oct 2021 13:31:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+653fb0268b18c2e086a8+6630+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1mcPco-0002xl-4D; Mon, 18 Oct 2021 10:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ua3x6oobbjatF9m91a/TfkciVlhvg2RT0UK88GOOPcc=; b=cFiKCqLAu1ka1M0ia3as1aA7x/
 ZXb/skh6tcH1or6PDvR1iAVvMSOKus6UImmtxKhMwNeuAQf+GlRTRFWX+bhP7+szxWo2sqOiILA3d
 gZn6JvWvmktO3pP0WIqLyd1fy19L2nBMjNzNRM1SUdw5M1qbHe4qKiOEsmCQ9nYkP8XQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ua3x6oobbjatF9m91a/TfkciVlhvg2RT0UK88GOOPcc=; b=UJhl3wClOvJpmyp2r6KebLMpjD
 rAaETZkjVbcP23V3sLrap2U/HooYtKhRV5iVkJ+FsDsYCFYKy+1c+FmKQlGh5mB7J5EbOLKp2Apv4
 YCRmYe7gQ6sWfjW8aj3QEBe4HB02dfVGITqlQ+6NIb0wAOlTgpdTClABsqGQF9Qp9hW0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcPci-0002wQ-2m; Mon, 18 Oct 2021 10:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=ua3x6oobbjatF9m91a/TfkciVlhvg2RT0UK88GOOPcc=; b=XVvSoKdE/JlZNBYXu3Ks8GFKiV
 uBg2o6bTqPw8jV9jsJP/6Xo3xrXV54Voyi6107pWBLswXWKXRq5pIREuha41ZOOOccwKG65hUSxAU
 7qBe1++VbFG4N2fuRQJMgE06VcbEEyqmXUtZCer4nKhLTfPoO+CFctkUyy/Ygd4OC5M4bAWP90mYz
 NjOJBD/jP48NB//Iv9fCWg39CKTCiAm6HKw0iU0N+jy4zrqld2bksmjJ2B2cI9x2/CQ1g/BXmKB6h
 icmh+FGURhCSucrRb/qUhGGftx7odANOXNfnpx2jvK35uvbIyNF/e1RVCQq4oJhEjA2UZNBsiUWak
 XMAxmBzg==;
Received: from [2001:4bb8:199:73c5:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcPcL-00Eu0X-91; Mon, 18 Oct 2021 10:11:41 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Mon, 18 Oct 2021 12:11:03 +0200
Message-Id: <20211018101130.1838532-4-hch@lst.de>
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
 Content preview: Use the equivalent block layer helper instead. Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook <keescook@chromium.org>
 Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com> Acked-by: Coly Li
 <colyli@suse.de> --- drivers/md/bcache/s [...] 
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
X-Headers-End: 1mcPci-0002wQ-2m
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:19 +0000
Subject: [Jfs-discussion] [PATCH 03/30] bcache: remove bdev_sectors
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
 Chaitanya Kulkarni <kch@nvidia.com>, Kees Cook <keescook@chromium.org>,
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

Use the equivalent block layer helper instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>
Acked-by: Coly Li <colyli@suse.de>
---
 drivers/md/bcache/super.c     | 2 +-
 drivers/md/bcache/util.h      | 4 ----
 drivers/md/bcache/writeback.c | 2 +-
 3 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/md/bcache/super.c b/drivers/md/bcache/super.c
index f2874c77ff797..4f89985abe4b7 100644
--- a/drivers/md/bcache/super.c
+++ b/drivers/md/bcache/super.c
@@ -1002,7 +1002,7 @@ static void calc_cached_dev_sectors(struct cache_set *c)
 	struct cached_dev *dc;
 
 	list_for_each_entry(dc, &c->cached_devs, list)
-		sectors += bdev_sectors(dc->bdev);
+		sectors += bdev_nr_sectors(dc->bdev);
 
 	c->cached_dev_sectors = sectors;
 }
diff --git a/drivers/md/bcache/util.h b/drivers/md/bcache/util.h
index b64460a762677..a7da7930a7fda 100644
--- a/drivers/md/bcache/util.h
+++ b/drivers/md/bcache/util.h
@@ -584,8 +584,4 @@ static inline unsigned int fract_exp_two(unsigned int x,
 void bch_bio_map(struct bio *bio, void *base);
 int bch_bio_alloc_pages(struct bio *bio, gfp_t gfp_mask);
 
-static inline sector_t bdev_sectors(struct block_device *bdev)
-{
-	return bdev->bd_inode->i_size >> 9;
-}
 #endif /* _BCACHE_UTIL_H */
diff --git a/drivers/md/bcache/writeback.c b/drivers/md/bcache/writeback.c
index 8120da278161e..c7560f66dca88 100644
--- a/drivers/md/bcache/writeback.c
+++ b/drivers/md/bcache/writeback.c
@@ -45,7 +45,7 @@ static uint64_t __calc_target_rate(struct cached_dev *dc)
 	 * backing volume uses about 2% of the cache for dirty data.
 	 */
 	uint32_t bdev_share =
-		div64_u64(bdev_sectors(dc->bdev) << WRITEBACK_SHARE_SHIFT,
+		div64_u64(bdev_nr_sectors(dc->bdev) << WRITEBACK_SHARE_SHIFT,
 				c->cached_dev_sectors);
 
 	uint64_t cache_dirty_target =
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
