Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCF1C04F11
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 10:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XU6Up2Uu8iO4brAGFx6iNCXU5ousFYNBS2DKgiODOac=; b=mWLHeFTRu4TQXBDMl2nFVIsJ/u
	rPo1KCuMkv8C++o0y1NTiQnphDb4+DzWTJJjYNlb7cqXYCcnNWKqn7yWvdOligE25dQ85Vpcswhew
	GTq/Mb3Loif+yq9TIaZxAwNo4SvxG/BeUGNa1hKljUtMm9UkXBZ5Pm5Hw10Y17gvGWd0=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCCo5-0000lk-73;
	Fri, 24 Oct 2025 08:05:53 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+aa390122061dbb70398c+8097+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1vCCo3-0000ld-HW for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dt5Y9yUiiRdlF2Ic+Ii5j4wLNf1I5IugK8AmLWSy1WY=; b=j6LUNOLFbd8eecfdV3PY3iid49
 +MXbilSK6jUT6vlcZNM7fk2pC8zy+BXVP6jqe0+eWn3Rsgq0f6uHIYwEoS39dWUKvVuIRxtUnkVzC
 ODH2b8huhwfxZkLW0kxoqkwLSIZTQslJ5qq0X96DI0ZP5xzKw3pU9l/RSrJpbOVdkBlI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dt5Y9yUiiRdlF2Ic+Ii5j4wLNf1I5IugK8AmLWSy1WY=; b=HK/wHXjwXe5j8V1mCCVBx3eBaL
 6Fg+hE1hWHToOTO8kRCKZPfLZUmQrnVGoSR/zAWhS2eFwbcpCbdWdkL9y+M266tMd3kiBcIZ7CfPB
 /jrxe0XoeVtSDPcfAE2Pvu99cM8+66ZZv0OEJnq4jx71deH0ihwLWBJif3vCo2bHYSJ4=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCCo3-0004TN-0E for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=dt5Y9yUiiRdlF2Ic+Ii5j4wLNf1I5IugK8AmLWSy1WY=; b=Js/UGbVFZZ+OME4DUpP16a6gKq
 abrzc4WOMNevqV2nkdK0YUfY8pKvH4grE6fpxHacd2uTTimgcnn7O9U3ihpVcPb+2Ozjnnz4uiZ8q
 nnAnEXrVeNUOXgZ8E76x7T2/YyGmAlwEUcqfQQ6doNhxQ/ooD98B+lj/03Fdpv62sWQT1Y0zCVe58
 k/rPUZOiQUKnEHokwUOhgGsNqh6Z41ZKICvaKoxR5RjXBnfuk4nxxy3+JCartGOCv6OrYphXMbW7K
 I1q/uJTmTYOMiVXAbW3rg6juNoqiA85xiEuBN7VjsYGxv7Fi+UWb970IT9epMHNZAgfY2YhZty9xL
 75TfRhKw==;
Received: from
 2a02-8389-2341-5b80-d601-7564-c2e0-491c.cable.dynamic.v6.surfer.at
 ([2a02:8389:2341:5b80:d601:7564:c2e0:491c] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vCCnp-00000008cEG-1P9g; Fri, 24 Oct 2025 08:05:37 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Fri, 24 Oct 2025 10:04:17 +0200
Message-ID: <20251024080431.324236-7-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024080431.324236-1-hch@lst.de>
References: <20251024080431.324236-1-hch@lst.de>
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
 on a number of pages on an address_space into a well-defined helper. Note:
 there is no kerneldoc comment for the new function because it is not part
 of the public API. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vCCo3-0004TN-0E
Subject: [Jfs-discussion] [PATCH 06/10] mm,
 btrfs: add a filemap_flush_nr helper
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
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, v9fs@lists.linux.dev,
 David Hildenbrand <david@redhat.com>, Josef Bacik <josef@toxicpanda.com>,
 linux-block@vger.kernel.org, ocfs2-devel@lists.linux.dev,
 Damien Le Moal <dlemoal@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Abstract out the btrfs-specific behavior of kicking off I/O on a number
of pages on an address_space into a well-defined helper.

Note: there is no kerneldoc comment for the new function because it is
not part of the public API.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: David Hildenbrand <david@redhat.com>
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/btrfs/inode.c        | 13 ++-----------
 include/linux/pagemap.h |  1 +
 mm/filemap.c            | 22 ++++++++++++++++++++++
 3 files changed, 25 insertions(+), 11 deletions(-)

diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
index b97d6c1f7772..d12b8116adde 100644
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
+			ret = filemap_flush_nr(tmp_inode->i_mapping,
+					nr_to_write);
 			btrfs_add_delayed_iput(inode);
 
-			if (*nr_to_write != LONG_MAX)
-				*nr_to_write = wbc.nr_to_write;
 			if (ret || *nr_to_write <= 0)
 				goto out;
 		}
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 09b581c1d878..cebdf160d3dd 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -38,6 +38,7 @@ int filemap_invalidate_pages(struct address_space *mapping,
 int write_inode_now(struct inode *, int sync);
 int filemap_fdatawrite(struct address_space *);
 int filemap_flush(struct address_space *);
+int filemap_flush_nr(struct address_space *mapping, long *nr_to_write);
 int filemap_fdatawait_keep_errors(struct address_space *mapping);
 int filemap_fdatawait_range(struct address_space *, loff_t lstart, loff_t lend);
 int filemap_fdatawait_range_keep_errors(struct address_space *mapping,
diff --git a/mm/filemap.c b/mm/filemap.c
index 99d6919af60d..e344b79a012d 100644
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
+int filemap_flush_nr(struct address_space *mapping, long *nr_to_write)
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
+EXPORT_SYMBOL_FOR_MODULES(filemap_flush_nr, "btrfs");
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
