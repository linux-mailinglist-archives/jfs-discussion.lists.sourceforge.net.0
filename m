Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8965353FE
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJAx-0005sg-5z; Thu, 26 May 2022 19:29:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAw-0005sa-19
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ph6yrsMi6MgeXQ6bRsFN0xtbtdvaj4M9b9YlpQeI3wg=; b=jnQb4EtDkztxSiQwzdUA+dos1p
 BZlxifw3eSGpgor9I84616TTcYUjvSzEbZDWt+XnoNu1JTDkH5PbJHloBeYqr7PXXaOAqY5ILm5Nk
 biyKFocpUJbCl+GUFKpgN1uFvMY4NpGixVOBmKE3pmnaTsSNQiZLotYNPWqKu3FgZ7Q0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ph6yrsMi6MgeXQ6bRsFN0xtbtdvaj4M9b9YlpQeI3wg=; b=cbWZJYYDwKx5RbAZNZcDL1lUBZ
 zGAyTqSjfUtUXik0CPfsVUQdypJVgNXLLEAKFUBwz0AbOpzG2+AJ3bLQdLanwt34+e+1KTJGIdmwI
 0GH16yecaiMKPmMeKKM8Amsoo8uC+XTmTg18UxUn7TFimGQnVZ9v94Q+Fhqf6hKyEGwM=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-002uYe-Qi
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ph6yrsMi6MgeXQ6bRsFN0xtbtdvaj4M9b9YlpQeI3wg=; b=ky2cmbr8PrJ/f18gC/mHTNuDNX
 wsmLWMAFjDyItY5VpEtQoNnW5OTdYd7SVpZJFz7vkVHS0OXYP/yDwqQHVRUEffvMuUdyBftcZFETv
 NrGjY4pgTv8SCQexgTq9bTanfXoiftoT0Lai1QoCd9wqKkoL+4wBDHV2dc72dbhmcGFYxlSPXESlb
 SD6Hf+RNfgb/eNT+yU0Xisf4rwV318XKohgYYUUSQ1wTqNtH/QN5mzE+n6OPSFzueu0BxcbJM0JXZ
 wpXPmGMdaRH8OWzNA06Nsjv1g2dVpfPy721TLBU5MyYNi0nILs3kdMh960Gts2OIF5Z5d7VSAcnxx
 n6oL3bkw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAb-001Uul-8r; Thu, 26 May 2022 19:29:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:08 +0100
Message-Id: <20220526192910.357055-8-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The comment above jfs_quota_read() is stale; sb_bread() will
 use the page cache, so we may as well use the page cache directly and avoid
 using jfs_get_block(). Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org>
 --- fs/jfs/super.c | 54 ++++++++++++++++++++ 1 file changed, 21 insertions(+), 
 33 deletions(-) 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nuJAr-002uYe-Qi
Subject: [Jfs-discussion] [RFC PATCH 7/9] jfs: Read quota through the page
 cache
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
Cc: Christoph Hellwig <hch@infradead.org>,
 "Darrick J . Wong" <djwong@kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The comment above jfs_quota_read() is stale; sb_bread() will use the
page cache, so we may as well use the page cache directly and avoid
using jfs_get_block().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/super.c | 54 ++++++++++++++++++++------------------------------
 1 file changed, 21 insertions(+), 33 deletions(-)

diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 85d4f44f2ac4..1e7d117b555d 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -721,51 +721,39 @@ static int jfs_show_options(struct seq_file *seq, struct dentry *root)
 }
 
 #ifdef CONFIG_QUOTA
-
-/* Read data from quotafile - avoid pagecache and such because we cannot afford
- * acquiring the locks... As quota files are never truncated and quota code
- * itself serializes the operations (and no one else should touch the files)
- * we don't have to be afraid of races */
 static ssize_t jfs_quota_read(struct super_block *sb, int type, char *data,
-			      size_t len, loff_t off)
+			      size_t len, loff_t pos)
 {
 	struct inode *inode = sb_dqopt(sb)->files[type];
-	sector_t blk = off >> sb->s_blocksize_bits;
-	int err = 0;
-	int offset = off & (sb->s_blocksize - 1);
-	int tocopy;
+	struct address_space *mapping = inode->i_mapping;
 	size_t toread;
-	struct buffer_head tmp_bh;
-	struct buffer_head *bh;
+	pgoff_t index;
 	loff_t i_size = i_size_read(inode);
 
-	if (off > i_size)
+	if (pos > i_size)
 		return 0;
-	if (off+len > i_size)
-		len = i_size-off;
+	if (pos + len > i_size)
+		len = i_size - pos;
 	toread = len;
+	index = pos / PAGE_SIZE;
+
 	while (toread > 0) {
-		tocopy = sb->s_blocksize - offset < toread ?
-				sb->s_blocksize - offset : toread;
+		struct folio *folio = read_mapping_folio(mapping, index, NULL);
+		size_t tocopy = PAGE_SIZE - offset_in_page(pos);
+		void *src;
+
+		if (IS_ERR(folio))
+			return PTR_ERR(folio);
+
+		src = kmap_local_folio(folio, offset_in_folio(folio, pos));
+		memcpy(data, src, tocopy);
+		kunmap_local(src);
+		folio_put(folio);
 
-		tmp_bh.b_state = 0;
-		tmp_bh.b_size = i_blocksize(inode);
-		err = jfs_get_block(inode, blk, &tmp_bh, 0);
-		if (err)
-			return err;
-		if (!buffer_mapped(&tmp_bh))	/* A hole? */
-			memset(data, 0, tocopy);
-		else {
-			bh = sb_bread(sb, tmp_bh.b_blocknr);
-			if (!bh)
-				return -EIO;
-			memcpy(data, bh->b_data+offset, tocopy);
-			brelse(bh);
-		}
-		offset = 0;
 		toread -= tocopy;
 		data += tocopy;
-		blk++;
+		pos += tocopy;
+		index++;
 	}
 	return len;
 }
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
