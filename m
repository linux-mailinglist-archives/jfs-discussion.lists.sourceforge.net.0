Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BAEBD15D0
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 06:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lZv9Vl5WmBBzVtYJlTttoGpffoFt4J4dp4UT20ziCG0=; b=Yy6RGIftqs6LQ39Nu0dblO+ZYi
	Xnlzybtz7R0oWT1xEKe5DhmwBtUhx5pgDnwzyP67nHYjm/EpMR/0nXRWbihHGZFXzUcULP5HRllMi
	I/VSrJTcliJdunNNLaaEteDhx4U6pxNZhVZZ4m1K03lk0K4Yn5JsD2N1O+Z3GgnNx6js=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v89wy-0006CP-V1;
	Mon, 13 Oct 2025 04:14:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429c5dd7f65f3a144064+8086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1v89wx-0006CJ-Uj for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z4Pvwj709tUIujzcrgBwlwYYOtJwMTZtthARYMcLmnU=; b=jWzS+6xirGSSRC9GQ013BMcwrT
 2Pbsg5Zfvf2rLOvbe1J9dzDSbbAC+S7b3W61xqk8iaJyZ1UUP+s/BzvwJlqkey3Rx1YFVXuFRtu2V
 ecI11pStebXObpvMadIq7bw/56PKWCiYGuP54La8tJVh4aACHOuoemtuBg7TPZo24p2U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Z4Pvwj709tUIujzcrgBwlwYYOtJwMTZtthARYMcLmnU=; b=jOGLFMkdvHxPhmk3ivnhSxzUaT
 v1akj5rJUPd+zOapo9WkZ/3AzAiw0FEUfPk1TcVow9KLACQXJ8IpnGS3bWwq1K60saRfJwRXwjaxt
 3wqY4SRqGyf3S3558PILQwSWe9dkWqnsYZOT0SKV6fQUgfaJ80ECJmRUMotr6AkCkyGc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v89wx-00064E-DC for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Z4Pvwj709tUIujzcrgBwlwYYOtJwMTZtthARYMcLmnU=; b=IGISrT4A0zRp9+72rVC63vG+be
 MeouiH2AEc+hK7VS+eL1rgjzwyHPvzKg4hX/NWwh6A8jTl/bqkfGVgAywt5EKWplmYrMYmzbSYOhQ
 rbt2127+Op8UfselRfLJauGl3NMOwkPdvohF3jws5kPXlzjAxqy06JT2PkQhSmATn5ZOy4U8EAvu/
 DJFH+eQvhZ8geZEyeDO10vAxVXO2XELnDebigYpYzwYF/viNaVIPhk43fsHoXpKP6p2Zsx8iPT6Pn
 y0HQEISCdiFCziTkwVsQTfBW9DTOT6qKRyBMbUAa12/U4J94pmOhlG8Hqq4v64CjUC4iC33ck1vS7
 te4NMnvQ==;
Received: from [220.85.59.196] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1v88lv-0000000C8D8-0VSF; Mon, 13 Oct 2025 02:58:51 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Mon, 13 Oct 2025 11:58:00 +0900
Message-ID: <20251013025808.4111128-6-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251013025808.4111128-1-hch@lst.de>
References: <20251013025808.4111128-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In preparation for changing the filemap_fdatawrite_wbc API
 to not expose the writeback_control to the callers, push the wbc declaration
 next to the filemap_fdatawrite_wbc call and just pass thr nr_to_ [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1v89wx-00064E-DC
Subject: [Jfs-discussion] [PATCH 05/10] btrfs: push struct writeback_control
 into start_delalloc_inodes
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

In preparation for changing the filemap_fdatawrite_wbc API to not expose
the writeback_control to the callers, push the wbc declaration next to
the filemap_fdatawrite_wbc call and just pass thr nr_to_write value to
start_delalloc_inodes.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/btrfs/inode.c | 51 ++++++++++++++++++++----------------------------
 1 file changed, 21 insertions(+), 30 deletions(-)

diff --git a/fs/btrfs/inode.c b/fs/btrfs/inode.c
index 9edb78fc57fc..b97d6c1f7772 100644
--- a/fs/btrfs/inode.c
+++ b/fs/btrfs/inode.c
@@ -8709,15 +8709,13 @@ static struct btrfs_delalloc_work *btrfs_alloc_delalloc_work(struct inode *inode
  * some fairly slow code that needs optimization. This walks the list
  * of all the inodes with pending delalloc and forces them to disk.
  */
-static int start_delalloc_inodes(struct btrfs_root *root,
-				 struct writeback_control *wbc, bool snapshot,
-				 bool in_reclaim_context)
+static int start_delalloc_inodes(struct btrfs_root *root, long *nr_to_write,
+				 bool snapshot, bool in_reclaim_context)
 {
 	struct btrfs_delalloc_work *work, *next;
 	LIST_HEAD(works);
 	LIST_HEAD(splice);
 	int ret = 0;
-	bool full_flush = wbc->nr_to_write == LONG_MAX;
 
 	mutex_lock(&root->delalloc_mutex);
 	spin_lock(&root->delalloc_lock);
@@ -8743,7 +8741,7 @@ static int start_delalloc_inodes(struct btrfs_root *root,
 
 		if (snapshot)
 			set_bit(BTRFS_INODE_SNAPSHOT_FLUSH, &inode->runtime_flags);
-		if (full_flush) {
+		if (nr_to_write == NULL) {
 			work = btrfs_alloc_delalloc_work(tmp_inode);
 			if (!work) {
 				iput(tmp_inode);
@@ -8754,9 +8752,20 @@ static int start_delalloc_inodes(struct btrfs_root *root,
 			btrfs_queue_work(root->fs_info->flush_workers,
 					 &work->work);
 		} else {
-			ret = filemap_fdatawrite_wbc(tmp_inode->i_mapping, wbc);
+			struct writeback_control wbc = {
+				.nr_to_write = *nr_to_write,
+				.sync_mode = WB_SYNC_NONE,
+				.range_start = 0,
+				.range_end = LLONG_MAX,
+			};
+
+			ret = filemap_fdatawrite_wbc(tmp_inode->i_mapping,
+					&wbc);
 			btrfs_add_delayed_iput(inode);
-			if (ret || wbc->nr_to_write <= 0)
+
+			if (*nr_to_write != LONG_MAX)
+				*nr_to_write = wbc.nr_to_write;
+			if (ret || *nr_to_write <= 0)
 				goto out;
 		}
 		cond_resched();
@@ -8782,29 +8791,17 @@ static int start_delalloc_inodes(struct btrfs_root *root,
 
 int btrfs_start_delalloc_snapshot(struct btrfs_root *root, bool in_reclaim_context)
 {
-	struct writeback_control wbc = {
-		.nr_to_write = LONG_MAX,
-		.sync_mode = WB_SYNC_NONE,
-		.range_start = 0,
-		.range_end = LLONG_MAX,
-	};
 	struct btrfs_fs_info *fs_info = root->fs_info;
 
 	if (BTRFS_FS_ERROR(fs_info))
 		return -EROFS;
-
-	return start_delalloc_inodes(root, &wbc, true, in_reclaim_context);
+	return start_delalloc_inodes(root, NULL, true, in_reclaim_context);
 }
 
 int btrfs_start_delalloc_roots(struct btrfs_fs_info *fs_info, long nr,
 			       bool in_reclaim_context)
 {
-	struct writeback_control wbc = {
-		.nr_to_write = nr,
-		.sync_mode = WB_SYNC_NONE,
-		.range_start = 0,
-		.range_end = LLONG_MAX,
-	};
+	long *nr_to_write = nr == LONG_MAX ? NULL : &nr;
 	struct btrfs_root *root;
 	LIST_HEAD(splice);
 	int ret;
@@ -8816,13 +8813,6 @@ int btrfs_start_delalloc_roots(struct btrfs_fs_info *fs_info, long nr,
 	spin_lock(&fs_info->delalloc_root_lock);
 	list_splice_init(&fs_info->delalloc_roots, &splice);
 	while (!list_empty(&splice)) {
-		/*
-		 * Reset nr_to_write here so we know that we're doing a full
-		 * flush.
-		 */
-		if (nr == LONG_MAX)
-			wbc.nr_to_write = LONG_MAX;
-
 		root = list_first_entry(&splice, struct btrfs_root,
 					delalloc_root);
 		root = btrfs_grab_root(root);
@@ -8831,9 +8821,10 @@ int btrfs_start_delalloc_roots(struct btrfs_fs_info *fs_info, long nr,
 			       &fs_info->delalloc_roots);
 		spin_unlock(&fs_info->delalloc_root_lock);
 
-		ret = start_delalloc_inodes(root, &wbc, false, in_reclaim_context);
+		ret = start_delalloc_inodes(root, nr_to_write, false,
+				in_reclaim_context);
 		btrfs_put_root(root);
-		if (ret < 0 || wbc.nr_to_write <= 0)
+		if (ret < 0 || nr <= 0)
 			goto out;
 		spin_lock(&fs_info->delalloc_root_lock);
 	}
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
