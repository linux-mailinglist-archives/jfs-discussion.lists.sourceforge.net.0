Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9610B5353FC
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 May 2022 21:30:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nuJB0-0006Y8-7Z; Thu, 26 May 2022 19:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <willy@infradead.org>) id 1nuJAv-0006Xi-Sg
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7+9Omejagtyb1cWwupsBNwVl4CjZDgx5NNVeSD7Uzo4=; b=f0y7voX2cfE4qb6VoaFGMdeBT+
 O3K/7z+Y3Zxs+t91apbJ2+n8T7q7f5mq70hJE9vTfq70Dn3t0qYW/1Z+UBwQgNGe4hPFjAgCTyiD/
 RGmK894x01wbAzHJ+A7JM8yTHPpswi+YmwMkC7DqegoqjqRyDZKlpagXjYCmKB5i2ra4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7+9Omejagtyb1cWwupsBNwVl4CjZDgx5NNVeSD7Uzo4=; b=kOF6kakiYNYnlUHkjCxd+cS0Xt
 nPI9ACKDp8BqTz+Gzf9U3q0oDosGrbgjU0BUUk+l0OW1/rxQOZWtUudc/ZudHGNlsc0A/j262VwBd
 Dg3RF7wVJMlTGA0NYRUiJfdcpHMl5rHgud5w0Pssx+9w3rKqe18DSrrS6j4qe/T9pwTY=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nuJAr-002uYZ-K5
 for jfs-discussion@lists.sourceforge.net; Thu, 26 May 2022 19:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=7+9Omejagtyb1cWwupsBNwVl4CjZDgx5NNVeSD7Uzo4=; b=MLK0kR6Z+lHced1doT0nm+rzK1
 IlE5uRtI0zx6KCYxbhqYInvjP/THjKbn+D6p4dJWIRvBWD3QLA0BJekY4STi9rZ4vT3DQ4qMvuSTt
 UhkmDZkjivc3aTI+YI1+B6PF2h2nVMZXIicY+zJ7QZoqZVofn/Zx+2wX13CxdqOHuchF4/0WbBeCx
 Pi3LTFyq2PKXMrAkrFu6S01H2jBwCKYmJfQemWEUXKIcrupNv0GthX2FhsDeGMi9EDior5ic7dhfi
 HPZG2UOQBR0cIw3XkDpu3Y5ZJu6xNyeKxW2nYdHO8RHEben4HViBqeejePG8qPvqXRAB3nim8KLD1
 44Yb97tw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nuJAa-001UuZ-VG; Thu, 26 May 2022 19:29:17 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: jfs-discussion@lists.sourceforge.net,
	linux-fsdevel@vger.kernel.org
Date: Thu, 26 May 2022 20:29:06 +0100
Message-Id: <20220526192910.357055-6-willy@infradead.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220526192910.357055-1-willy@infradead.org>
References: <20220526192910.357055-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Now that reads and writes both use iomap for O_DIRECT, this
 code has no more callers and can be removed. Signed-off-by: Matthew Wilcox
 (Oracle) <willy@infradead.org> --- fs/jfs/inode.c | 27 + 1 file changed,
 1 insertion(+), 26 deletions(-) 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1nuJAr-002uYZ-K5
Subject: [Jfs-discussion] [RFC PATCH 5/9] jfs: Remove old direct_IO support
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

Now that reads and writes both use iomap for O_DIRECT, this code has
no more callers and can be removed.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/inode.c | 27 +--------------------------
 1 file changed, 1 insertion(+), 26 deletions(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 22e8a5612fdc..63690020cc46 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -368,31 +368,6 @@ static sector_t jfs_bmap(struct address_space *mapping, sector_t block)
 	return generic_block_bmap(mapping, block, jfs_get_block);
 }
 
-static ssize_t jfs_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
-{
-	struct file *file = iocb->ki_filp;
-	struct address_space *mapping = file->f_mapping;
-	struct inode *inode = file->f_mapping->host;
-	size_t count = iov_iter_count(iter);
-	ssize_t ret;
-
-	ret = blockdev_direct_IO(iocb, inode, iter, jfs_get_block);
-
-	/*
-	 * In case of error extending write may have instantiated a few
-	 * blocks outside i_size. Trim these off again.
-	 */
-	if (unlikely(iov_iter_rw(iter) == WRITE && ret < 0)) {
-		loff_t isize = i_size_read(inode);
-		loff_t end = iocb->ki_pos + count;
-
-		if (end > isize)
-			jfs_write_failed(mapping, end);
-	}
-
-	return ret;
-}
-
 const struct address_space_operations jfs_aops = {
 	.dirty_folio	= block_dirty_folio,
 	.invalidate_folio = block_invalidate_folio,
@@ -403,7 +378,7 @@ const struct address_space_operations jfs_aops = {
 	.write_begin	= jfs_write_begin,
 	.write_end	= nobh_write_end,
 	.bmap		= jfs_bmap,
-	.direct_IO	= jfs_direct_IO,
+	.direct_IO	= noop_direct_IO,
 };
 
 /*
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
