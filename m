Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E7D66171D
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 17:57:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEYz3-0003QE-6j;
	Sun, 08 Jan 2023 16:57:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+58c3238fb6e66237551a+7077+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1pEYz1-0003Pw-7q for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BznR/4w1o26qgOdWpgaXoEzrG7xwT/5BaeqDtDNhkG0=; b=IwyBc/c+UP4Qrz4YX1n3gANc3W
 oPSLk5SspdRptInI8bmQg35lEjgC1x28jYWLMyei2CC+rCfBv4DQvkfne9xD+DcnpfhwoRyK6fZVz
 UQi71RIuPIyVfD9WcWUBeiWyhXY0n82lWOX4Xd1PoLYj9o1+nqcJtRTziFlG2yzXJfTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BznR/4w1o26qgOdWpgaXoEzrG7xwT/5BaeqDtDNhkG0=; b=TZVgz5KEPdOtBeD3WZNgcmcX+p
 tDpM2IMWAhgLKelanZ9dSvp51kNU9tIFkfkyAaxiHq4yq1rgKBvIGRMSfQTfA2zH1NOCa64QMTeDN
 uy49opw121KvxX1Xdk4emb1n1stuMvS1RPn/8trrgvNCCQmBI/oi+eH2juFq9SAHrpy0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEYyw-0002Yb-Mj for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=BznR/4w1o26qgOdWpgaXoEzrG7xwT/5BaeqDtDNhkG0=; b=KycIApiWI5yISCZouDp8O8ipc4
 dsl/ueN8sUNA33Tp9c717pqGJ+DRYXWPrwamlDfC9ftc159YEu3rH4iisYVgqRu/w53sUAME1wPCf
 MTqnBKQrVKo99G/ggyD2TGlKA9HTNX06xjiq6D39LxRqspHtjdzrjwPj/R4YOGTbHKRoxYyqU+GgO
 hplk+/amqkkU5IiaF7B9o2QiTNtdVdmhnSylKAIJ1PkTIFxh3AiZkBHips001Vc6L9c4I1xFVKuNI
 30m27hquq2Q0Y5e4zNu+1vbMwCxkSGN7IoC06MseeAUTxFVjrgD8hhd2XQ2oWt/MRiFklab9eYZBQ
 21VcibDQ==;
Received: from [2001:4bb8:198:a591:1c7c:bf66:af15:b282] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pEYyb-00ERql-3S; Sun, 08 Jan 2023 16:56:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Evgeniy Dushistov <dushistov@mail.ru>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Sun,  8 Jan 2023 17:56:40 +0100
Message-Id: <20230108165645.381077-3-hch@lst.de>
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
 Content preview: write_one_page is an awkward interface that expects the page
 locked and ->writepage to be implemented. Just mark the sb dirty, put the
 page and then call the proper bdev helper to sync the range. Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- fs/btrfs/volumes.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-) 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pEYyw-0002Yb-Mj
Subject: [Jfs-discussion] [PATCH 2/7] btrfs: stop using write_one_page in
 btrfs_scratch_superblock
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
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 jfs-discussion@lists.sourceforge.net, ocfs2-devel@oss.oracle.com,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

write_one_page is an awkward interface that expects the page locked
and ->writepage to be implemented.  Just mark the sb dirty, put
the page and then call the proper bdev helper to sync the range.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/btrfs/volumes.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/fs/btrfs/volumes.c b/fs/btrfs/volumes.c
index 1378f5ad5ed4c4..10e98b004a2fa3 100644
--- a/fs/btrfs/volumes.c
+++ b/fs/btrfs/volumes.c
@@ -2009,23 +2009,22 @@ static void btrfs_scratch_superblock(struct btrfs_fs_info *fs_info,
 				     struct block_device *bdev, int copy_num)
 {
 	struct btrfs_super_block *disk_super;
-	struct page *page;
+	const size_t len = sizeof(disk_super->magic);
+	u64 bytenr = btrfs_sb_offset(copy_num);
 	int ret;
 
-	disk_super = btrfs_read_dev_one_super(bdev, copy_num, false);
+	disk_super = btrfs_read_disk_super(bdev, bytenr, bytenr);
 	if (IS_ERR(disk_super))
 		return;
-	memset(&disk_super->magic, 0, sizeof(disk_super->magic));
-	page = virt_to_page(disk_super);
-	set_page_dirty(page);
-	lock_page(page);
-	/* write_on_page() unlocks the page */
-	ret = write_one_page(page);
+	memset(&disk_super->magic, 0, len);
+	set_page_dirty(virt_to_page(disk_super));
+	btrfs_release_disk_super(disk_super);
+
+	ret = sync_blockdev_range(bdev, bytenr, bytenr + len - 1);
 	if (ret)
 		btrfs_warn(fs_info,
 			"error clearing superblock number %d (%d)",
 			copy_num, ret);
-	btrfs_release_disk_super(disk_super);
 }
 
 void btrfs_scratch_superblocks(struct btrfs_fs_info *fs_info,
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
