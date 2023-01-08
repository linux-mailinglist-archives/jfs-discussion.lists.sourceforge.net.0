Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D619D661722
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 17:57:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEYz6-0002mo-QL;
	Sun, 08 Jan 2023 16:57:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+58c3238fb6e66237551a+7077+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1pEYz1-0002mb-Sz for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lFvtQi+fLwMAHlLvXJj+xcXbU2gUQgSohjqo1SaHtyU=; b=jlYEdvsIW6I3BpTNNI/mnkyF8f
 Uii4UEre6IpsbBrAYbUSOz//ahy0bvo1j2NOTIsNo/7qo8e3JK55r2wIPMkORkCbTKzFmnRgOpJZP
 OCasZ763sV03fSvPlf9MWQfxwRbdWU8NXIc6bWR1Y/3F4tHbVdru/8WNsRgakfGPOfLQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lFvtQi+fLwMAHlLvXJj+xcXbU2gUQgSohjqo1SaHtyU=; b=AUU4hps/GafFOLDT+g7fiTIa6q
 9/pfyEZAPCN+/Gmrmrqf81gPot+Oct6bVD3Y5Per/WNqiLJgr5jEUi+EeRvBnHhJ94mJhh9Zarutx
 n6L70xQOMM6nktwbuBnJUKPwP7SI0Tp/THRe/mGSM1eQMgxuFczT2tLfdCAFvZzxxdKM=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEYyy-00AOMg-Du for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=lFvtQi+fLwMAHlLvXJj+xcXbU2gUQgSohjqo1SaHtyU=; b=oCh8q89awjYtytoZeT3pHyKMkl
 VyT99nkn9BUuSEHliHPt62EP8SCxWjNrcNLmisEoaHMhYjJ8blEV2oOQjss2Be8g/xEE9Xu6T3NXp
 cX2D3XC22yjMYecCu3dMuigB7G2U+YrmmMECKpaqBwx1GZ7mj3KW96NRON6fZ4NNOhhoCXma7S6jX
 kwHVVTH7ntlpydXJw1owjb0dtlCOQp1u4Psodi/w/rAdX6DMMVmMLise2oRJNsVxC9vWRy+Myt95+
 CvWwxs1xVejbXQVUEiHnuz2WHplf41pBViKOvH7DT3UKkzeh0LnVga9cr6PVhw5F/KrNlu4CexH4y
 TUx1FMmw==;
Received: from [2001:4bb8:198:a591:1c7c:bf66:af15:b282] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pEYyY-00ERqS-AO; Sun, 08 Jan 2023 16:56:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Evgeniy Dushistov <dushistov@mail.ru>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Sun,  8 Jan 2023 17:56:39 +0100
Message-Id: <20230108165645.381077-2-hch@lst.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230108165645.381077-1-hch@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  For zoned devices, btrfs_scratch_superblocks just resets the
 sb zones, which means there is no need to even read the previous superblock.
 Split the code to read, zero and write the superblock for conv [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pEYyy-00AOMg-Du
Subject: [Jfs-discussion] [PATCH 1/7] btrfs: don't read the disk superblock
 for zoned devices in btrfs_scratch_superblocks
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
Cc: jfs-discussion@lists.sourceforge.net,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-mm@kvack.org,
 linux-btrfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

For zoned devices, btrfs_scratch_superblocks just resets the sb zones,
which means there is no need to even read the previous superblock.
Split the code to read, zero and write the superblock for conventional
devices into a separate helper so that it isn't called for zoned
devices.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/btrfs/volumes.c | 51 +++++++++++++++++++++++-----------------------
 1 file changed, 26 insertions(+), 25 deletions(-)

diff --git a/fs/btrfs/volumes.c b/fs/btrfs/volumes.c
index aa25fa335d3ed1..1378f5ad5ed4c4 100644
--- a/fs/btrfs/volumes.c
+++ b/fs/btrfs/volumes.c
@@ -2005,42 +2005,43 @@ static u64 btrfs_num_devices(struct btrfs_fs_info *fs_info)
 	return num_devices;
 }
 
+static void btrfs_scratch_superblock(struct btrfs_fs_info *fs_info,
+				     struct block_device *bdev, int copy_num)
+{
+	struct btrfs_super_block *disk_super;
+	struct page *page;
+	int ret;
+
+	disk_super = btrfs_read_dev_one_super(bdev, copy_num, false);
+	if (IS_ERR(disk_super))
+		return;
+	memset(&disk_super->magic, 0, sizeof(disk_super->magic));
+	page = virt_to_page(disk_super);
+	set_page_dirty(page);
+	lock_page(page);
+	/* write_on_page() unlocks the page */
+	ret = write_one_page(page);
+	if (ret)
+		btrfs_warn(fs_info,
+			"error clearing superblock number %d (%d)",
+			copy_num, ret);
+	btrfs_release_disk_super(disk_super);
+}
+
 void btrfs_scratch_superblocks(struct btrfs_fs_info *fs_info,
 			       struct block_device *bdev,
 			       const char *device_path)
 {
-	struct btrfs_super_block *disk_super;
 	int copy_num;
 
 	if (!bdev)
 		return;
 
 	for (copy_num = 0; copy_num < BTRFS_SUPER_MIRROR_MAX; copy_num++) {
-		struct page *page;
-		int ret;
-
-		disk_super = btrfs_read_dev_one_super(bdev, copy_num, false);
-		if (IS_ERR(disk_super))
-			continue;
-
-		if (bdev_is_zoned(bdev)) {
+		if (bdev_is_zoned(bdev))
 			btrfs_reset_sb_log_zones(bdev, copy_num);
-			continue;
-		}
-
-		memset(&disk_super->magic, 0, sizeof(disk_super->magic));
-
-		page = virt_to_page(disk_super);
-		set_page_dirty(page);
-		lock_page(page);
-		/* write_on_page() unlocks the page */
-		ret = write_one_page(page);
-		if (ret)
-			btrfs_warn(fs_info,
-				"error clearing superblock number %d (%d)",
-				copy_num, ret);
-		btrfs_release_disk_super(disk_super);
-
+		else
+			btrfs_scratch_superblock(fs_info, bdev, copy_num);
 	}
 
 	/* Notify udev that device has changed */
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
