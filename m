Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 973A9BD15C4
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 06:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rrNkgPWVqOboxGw/ghQzsE62NBghLTuCOAqYNO8OTqU=; b=Mbvi3vSX3tkcNdwaAyo7MFtZuy
	4SOcAp616g2UVe7tPTRmiF0jS0GIh/9BRRxyM/k008sNJqU4MoDg13W+iHp749qs2eWUUAY1k0oZx
	F2pdxMMKMU3oOUSxM6awGkvB+nV03+PZl3UtKPaVclv6HJW+nfAK3NaeUCgu7NFVjf4g=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v89wG-0008Qm-9Z;
	Mon, 13 Oct 2025 04:13:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429c5dd7f65f3a144064+8086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1v89wE-0008Qc-DP for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SqMpmzvrENBMy7NbX0f6Mno/+2fYxO4ON6rsl2w4mjo=; b=M9CtjY5EqXrBybnQzeEZDcD9m5
 dfZwNYU51+fFyZQuuuGQjfLYl83+202dY3bk0GlHE1LfMQTnmOGmKX+b01eMC1DrHbReUv6IOgxwS
 4U9X4JKOJiQqf8B5MUfBtoNcKa2aLmw0fISxd1o5HqE63uU9IUZHWRzqsUB58s4p9A8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SqMpmzvrENBMy7NbX0f6Mno/+2fYxO4ON6rsl2w4mjo=; b=Voup0UgtIEHWwHvRk3LodUOoJX
 /UzzpGeYELf/5X1n10fLsiJPg7L1lzvB76JFPAEEx5ijSRdojUC9EDoFf6laGuNNiNY050GSu2nxv
 AxSGaUF0HyDymeXQIsLfznc2yhPo95R9KAB3D6YXl0rDDvpzoKO/L0sRevx65JwaUMPw=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v89wD-000617-6b for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=SqMpmzvrENBMy7NbX0f6Mno/+2fYxO4ON6rsl2w4mjo=; b=hooMK41t3bXxsCf99o1BpcDMw8
 WfYDeaQyBA0b0R6oodz4lKBED6pp9FlG3MiZSTYa+z0CdX7OkY+HZZ/pe8KOk106r/wlutvwCn8Ly
 URKBG6Qg9Ui5oQpLFtlBPg3HuBA7VPcq7mrsOtzLnNA6NgUWDdtQKu/7AKjr3nd6i0BV13Lo2KZjQ
 d+xP5WEGIELFmYh2np8a7/2+MNlFBznDsCmUWTM8lTZfSreMH/H18WswhTq60KHxmmVDT1FqHq9NE
 E27U6Xbzo6nFVZiDXhXg+3JZOvtwxI/53zBY2ebKt6AqBOcNy6SkoCalxEkX3S93a9j7EjtpjAwUX
 4stfUbRQ==;
Received: from [220.85.59.196] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1v88m2-0000000C8GM-43XE; Mon, 13 Oct 2025 02:58:59 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Mon, 13 Oct 2025 11:58:01 +0900
Message-ID: <20251013025808.4111128-7-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251013025808.4111128-1-hch@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Abstract out the btrfs-specific behavior of kicking off I/O
 on a number of pages on an address_space into a well-defined helper.
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- fs/btrfs/inode.c | 13 ++
 include/linux/pagemap.h
 | 2 ++ mm/filemap.c | 22 ++++++++++++++++++++++ 3 files changed,
 26 insertions(+), 11 dele [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1v89wD-000617-6b
Subject: [Jfs-discussion] [PATCH 06/10] mm,
 btrfs: add a filemap_fdatawrite_kick_nr helper
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Abstract out the btrfs-specific behavior of kicking off I/O on a number
of pages on an address_space into a well-defined helper.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/btrfs/inode.c        | 13 ++-----------
 include/linux/pagemap.h |  2 ++
 mm/filemap.c            | 22 ++++++++++++++++++++++
 3 files changed, 26 insertions(+), 11 deletions(-)

diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
index b97d6c1f7772..b63d77154c45 100644
--- a/fs/btrfs/inode.c
+++ b/fs/btrfs/inode.c
@@ -8752,19 +8752,10 @@ static int start_delalloc_inodes(struct btrfs_root *root, long *nr_to_write,
 			btrfs_queue_work(root->fs_info->flush_workers,
 					 &work->work);
 		} else {
-			struct writeback_control wbc = {
-				.nr_to_write = *nr_to_write,
-				.sync_mode = WB_SYNC_NONE,
-				.range_start = 0,
-				.range_end = LLONG_MAX,
-			};
-
-			ret = filemap_fdatawrite_wbc(tmp_inode->i_mapping,
-					&wbc);
+			ret = filemap_fdatawrite_kick_nr(tmp_inode->i_mapping,
+					nr_to_write);
 			btrfs_add_delayed_iput(inode);
 
-			if (*nr_to_write != LONG_MAX)
-				*nr_to_write = wbc.nr_to_write;
 			if (ret || *nr_to_write <= 0)
 				goto out;
 		}
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 09b581c1d878..fc060ce2d31d 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -38,6 +38,8 @@ int filemap_invalidate_pages(struct address_space *mapping,
 int write_inode_now(struct inode *, int sync);
 int filemap_fdatawrite(struct address_space *);
 int filemap_flush(struct address_space *);
+int filemap_fdatawrite_kick_nr(struct address_space *mapping,
+		long *nr_to_write);
 int filemap_fdatawait_keep_errors(struct address_space *mapping);
 int filemap_fdatawait_range(struct address_space *, loff_t lstart, loff_t lend);
 int filemap_fdatawait_range_keep_errors(struct address_space *mapping,
diff --git a/mm/filemap.c b/mm/filemap.c
index 99d6919af60d..b95e71774131 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -474,6 +474,28 @@ int filemap_flush(struct address_space *mapping)
 }
 EXPORT_SYMBOL(filemap_flush);
 
+/*
+ * Start writeback on @nr_to_write pages from @mapping.  No one but the existing
+ * btrfs caller should be using this.  Talk to linux-mm if you think adding a
+ * new caller is a good idea.
+ */
+int filemap_fdatawrite_kick_nr(struct address_space *mapping, long *nr_to_write)
+{
+	struct writeback_control wbc = {
+		.nr_to_write = *nr_to_write,
+		.sync_mode = WB_SYNC_NONE,
+		.range_start = 0,
+		.range_end = LLONG_MAX,
+	};
+	int ret;
+
+	ret = filemap_fdatawrite_wbc(mapping, &wbc);
+	if (!ret)
+		*nr_to_write = wbc.nr_to_write;
+	return ret;
+}
+EXPORT_SYMBOL_FOR_MODULES(filemap_fdatawrite_kick_nr, "btrfs");
+
 /**
  * filemap_range_has_page - check if a page exists in range.
  * @mapping:           address space within which to check
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
