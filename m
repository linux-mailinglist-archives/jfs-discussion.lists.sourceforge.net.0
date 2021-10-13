Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A78CF42C230
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:08:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maevv-0000eX-A3; Wed, 13 Oct 2021 14:08:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5200d22377f13f7bc369+6625+infradead.org+hch@casper.srs.infradead.org>)
 id 1maWhD-0004FK-PG; Wed, 13 Oct 2021 05:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aKWVIKm4qTCGfWucJpKknVpyj1fAJQTGUy8obOoxkuQ=; b=DpIShzo2Nj/S0D3FcJe3d0ccm2
 gqGi6nCQF/lZC6c7L0Y3t39yu10XNigKJV2jVf84NLtJWPuFk9oKBelZHmVyk0d4UN5BiPoB5wAIx
 yqVQ5lY+aPto3d8sc4ZCbEQvonZBhez8Oa+XqrQ4LjeZ70hsyIVU2aDbS0/r72ZrRRIk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aKWVIKm4qTCGfWucJpKknVpyj1fAJQTGUy8obOoxkuQ=; b=IJ+iBGvd1klapGxj6IXbBdsV33
 lKUISSnJhX4+8Gc6PU16gtu8eRG1H3UjDxvtDcUpt5Dk2yz140umWJTOvp6hAoiRW7NA2Q+OqfjGp
 r0+cZgELNZ+1njTRTzxrd7+8veNVhgX9lp0s9g1utQrsWCnzsGGdWwJJMjYkFyHrAGbY=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maWhD-007DPg-75; Wed, 13 Oct 2021 05:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=aKWVIKm4qTCGfWucJpKknVpyj1fAJQTGUy8obOoxkuQ=; b=RruPipVajHMi0j7MHBs3Pon4xn
 jelNKvVU+XoTDnYNF2QzP2GYE7Sfm2SF51tl6epi3hb0itbFUOW3ZvWYBpv4nzQucieSoY1wg8cEy
 7jTrW7JOcLfXCnEJq5CDbdYCmLxZfHH7VEFcxlrY4XQ7LGxjg4YR0toqWEF+IQe2JJO1fFap5pCwf
 XWXaOHoEtOTdzZgATJL0Ovs/f/Xya495HJde/3+pli0uXmnff+dOVz2Z7XS7Ep8cPSBgQHTq3AQao
 /ITUxljsQ4XCV3xji5dilEDib1A3E1VfB4m34M0Azks0NOaCgg1QYJZy32D43YXfa7P//2TdWAXN7
 xgbFX/kQ==;
Received: from 089144212063.atnat0021.highway.a1.net ([89.144.212.63]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maWcn-0076CB-CH; Wed, 13 Oct 2021 05:16:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 13 Oct 2021 07:10:19 +0200
Message-Id: <20211013051042.1065752-7-hch@lst.de>
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
 Christoph Hellwig <hch@lst.de> --- drivers/nvme/target/io-cmd-bdev.c | 4
 ++-- 1 file changed, 2 insertions(+),
 2 deletions(-) diff --git a/drivers/nvme/target/io-cmd-bdev.c
 b/drivers/nvme/target/io-cmd-bdev.c index 6139e1de50a66..683246303f62e 100644
 --- a/drivers/nvme/target/io-cmd-bdev.c +++ b/drivers/nvme/target/io-cmd-bd
 [...] Content analysis details:   (0.2 points, 6.0 required)
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
X-Headers-End: 1maWhD-007DPg-75
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:33 +0000
Subject: [Jfs-discussion] [PATCH 06/29] nvmet: use bdev_nr_sectors instead
 of open coding it
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
 drivers/nvme/target/io-cmd-bdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 6139e1de50a66..683246303f62e 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -87,7 +87,7 @@ int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
 		ns->bdev = NULL;
 		return ret;
 	}
-	ns->size = i_size_read(ns->bdev->bd_inode);
+	ns->size = bdev_nr_sectors(ns->bdev) << SECTOR_SHIFT;
 	ns->blksize_shift = blksize_bits(bdev_logical_block_size(ns->bdev));
 
 	ns->pi_type = 0;
@@ -108,7 +108,7 @@ int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
 
 void nvmet_bdev_ns_revalidate(struct nvmet_ns *ns)
 {
-	ns->size = i_size_read(ns->bdev->bd_inode);
+	ns->size = bdev_nr_sectors(ns->bdev) << SECTOR_SHIFT;
 }
 
 u16 blk_to_nvme_status(struct nvmet_req *req, blk_status_t blk_sts)
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
