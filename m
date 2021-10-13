Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 734A842C23D
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:09:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maevx-0000iJ-TD; Wed, 13 Oct 2021 14:08:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5200d22377f13f7bc369+6625+infradead.org+hch@casper.srs.infradead.org>)
 id 1maWuH-0007UF-5L; Wed, 13 Oct 2021 05:34:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=39HaYm26ck1Q/qs4DL8qNMVTN9Lr6ailLQ9qlOsD13M=; b=hEBTjHHEBAVGvG44KOyZCSCpXP
 yDT5m7qfsZ7NCiFEKs2x2F7JGINLRBpnVPQfpPCD+ObQPSvR7aKoX51aEGLHcQjXX7leGW4fe7zCK
 +ahLgBPEQAvsDwnqxdXdT18ugMENUq9O8eV05+cQdXCRdWEW9xEEEJIYOvy/gImMVB6k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=39HaYm26ck1Q/qs4DL8qNMVTN9Lr6ailLQ9qlOsD13M=; b=aMVItpNFt6Ik/fD/SsYBN0z6MN
 KHmp+ix6NTVdogBhLcAznKDmvsdzrQYY0040sKYYw6DpW3WtoRUFiT0MvDgyoDuGpS18Q1yHovFbA
 WQ5X3gMcQvDr2/gYFXgmsXuHvbU9AeqU4Ddf+6FBuNvS7M9mbvcuymWDk10+VF9tlyGM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maWuG-007Ezg-LO; Wed, 13 Oct 2021 05:34:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=39HaYm26ck1Q/qs4DL8qNMVTN9Lr6ailLQ9qlOsD13M=; b=aHtBe1dA8jDL6nkYC2gqw40U9v
 J2fj1CwwPytuisPEPT+QqIPqcQL8qeP8ILip+Ab7OKF8Cx1l6cNtRM/EKOEIlwVPeU2yAnCydCn02
 5u1wUYf1tItlO+Foc4rbLhqVkm8H5CK71rLqliO7JH8trcJ02f6RyBGKMz31rFqWdXkW1y9L+sahA
 XT3nV+TPR5tCHZkQ1sh73RyDt4oqzC4ySRvveksjUfsWkiF3PDnWxnnnZEAmJmGo7foAgtHOJFrc0
 9y30dbLL2dRtoiGyPWTr1JTuXiPxu5Toub70OO8IJovwwh2Mk+WsF1BpUNv2XXzXuIZ3LugovSGBs
 QWI9O5nQ==;
Received: from 089144212063.atnat0021.highway.a1.net ([89.144.212.63]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maWpv-0077O7-6w; Wed, 13 Oct 2021 05:30:20 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 13 Oct 2021 07:10:30 +0200
Message-Id: <20211013051042.1065752-18-hch@lst.de>
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
 Christoph Hellwig <hch@lst.de> --- fs/nfs/blocklayout/dev.c | 4 ++-- 1 file
 changed, 2 insertions(+), 2 deletions(-) diff --git a/fs/nfs/blocklayout/dev.c
 b/fs/nfs/blocklayout/dev.c index acb1d22907daf..42772985cb43e 100644 ---
 a/fs/nfs/blocklayout/dev.c +++ b/fs/nfs/blocklayout/dev.c @@ -252,7 +252,7
 @@ bl_parse_si [...] 
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
X-Headers-End: 1maWuG-007Ezg-LO
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:35 +0000
Subject: [Jfs-discussion] [PATCH 17/29] nfs/blocklayout: use bdev_nr_sectors
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
 fs/nfs/blocklayout/dev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/nfs/blocklayout/dev.c b/fs/nfs/blocklayout/dev.c
index acb1d22907daf..42772985cb43e 100644
--- a/fs/nfs/blocklayout/dev.c
+++ b/fs/nfs/blocklayout/dev.c
@@ -252,7 +252,7 @@ bl_parse_simple(struct nfs_server *server, struct pnfs_block_dev *d,
 	d->bdev = bdev;
 
 
-	d->len = i_size_read(d->bdev->bd_inode);
+	d->len = bdev_nr_sectors(d->bdev) << SECTOR_SHIFT;
 	d->map = bl_map_simple;
 
 	printk(KERN_INFO "pNFS: using block device %s\n",
@@ -367,7 +367,7 @@ bl_parse_scsi(struct nfs_server *server, struct pnfs_block_dev *d,
 		return PTR_ERR(bdev);
 	d->bdev = bdev;
 
-	d->len = i_size_read(d->bdev->bd_inode);
+	d->len = bdev_nr_sectors(d->bdev) << SECTOR_SHIFT;
 	d->map = bl_map_simple;
 	d->pr_key = v->scsi.pr_key;
 
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
