Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7764C04F50
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 10:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XNDBESzvdJhXhi1UjEGIGva8zv5/xDLH+SM+jUdpddw=; b=jsNSafUCzDIcEh+B/R1reUyUwH
	iGIjRGbHt3p5p9VzpThRKx9va8JqWoYzfPSjTKa5Q05g9n6DVNOrP/meIdbveAuVkhcQ0MECvPHK/
	4YGPdiuzns+fLb/CZH+OM1+s8zYUc0n/x+z/yZbnBQ5yQGQSyq16ppcb1Ur4qh7xwo84=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCCor-0000nl-36;
	Fri, 24 Oct 2025 08:06:41 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+aa390122061dbb70398c+8097+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1vCCop-0000nf-9K for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:06:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CK4+A+XQ8xSWXf+Z9tTtAvh9OT31XsHF6kx6Btc5iA8=; b=RI2b/FRWqh0GoGskNsGDuy/mIJ
 TYZfYmRVd5G8M+FQ0ebriZojc4iU3dghUPky8scww/1XR8XsJ7vCt7ql6s62y868RNRZY9S8QNO22
 1BBFa1jiMrpPUqOP4bnhJsJ80Ft1VBq0bGQ59sDFFZhOSQknetqgzP6e8l7wYakLkN/k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CK4+A+XQ8xSWXf+Z9tTtAvh9OT31XsHF6kx6Btc5iA8=; b=HDPHIsATO6D9V9yBlIIbhoqAQA
 l2duVQgjZzBe6rDf50zBw9aJFJrRThpIH1jQC56HIRX35u/yx0WVVqK2ZUMYxDsL02vvYk+r6cfAp
 aDcDJXsgyTtwmSsWX1Zk5ERZ0YMMvcKZye/I28d32CxtJaJm3YoopaNsT+txDE07I6Sc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vCCoo-0004W4-Oa for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 08:06:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CK4+A+XQ8xSWXf+Z9tTtAvh9OT31XsHF6kx6Btc5iA8=; b=D6AogjIsaOXIaEKMP8+nYzb2S/
 Oi9fBsDLQ/QDLj8zWUOszOIZUXoUGJEGD6oOe3/gwwa36ob+z5Y4jnXIMl/I47R2yybCHjHy9PVpp
 u9rk8NVCJvRsT7wc5scuOjf+d0qjgiv7xQKVzrHmYhwZolySV+SEki+Hm9VEk4MYwcBCOKWh8kE/L
 vlzlOWvLC6nPNVOCQn/9gA1eRi4wHGrw+7X1beFwTeRlaIDXxs6ij8o/wGIbY6gxmKmEmayQZ5noV
 iBvVRW/cRH9N2cvm1YrB7NcZkATFE2g0crlK/d+n5Fpb75Kk12b+O+FG+yCLdiKH/xMwQRP6Ju0xM
 N9qYV9hw==;
Received: from
 2a02-8389-2341-5b80-d601-7564-c2e0-491c.cable.dynamic.v6.surfer.at
 ([2a02:8389:2341:5b80:d601:7564:c2e0:491c] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vCCoa-00000008cQn-37yb; Fri, 24 Oct 2025 08:06:25 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Fri, 24 Oct 2025 10:04:21 +0200
Message-ID: <20251024080431.324236-11-hch@lst.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024080431.324236-1-hch@lst.de>
References: <20251024080431.324236-1-hch@lst.de>
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
 Content preview: Rename filemap_fdatawrite_range_kick to filemap_flush_range
 because it is the ranged version of filemap_flush. Signed-off-by: Christoph
 Hellwig <hch@lst.de> --- fs/sync.c | 3 +-- include/linux/fs.h | 6 +++---
 mm/fadvise.c | 2 +- mm/filemap.c | 8 ++++---- 4 files changed, 9 insertions(+),
 10 deletions(-) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1vCCoo-0004W4-Oa
Subject: [Jfs-discussion] [PATCH 10/10] mm: rename
 filemap_fdatawrite_range_kick to filemap_flush_range
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

Rename filemap_fdatawrite_range_kick to filemap_flush_range because it
is the ranged version of filemap_flush.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/sync.c          | 3 +--
 include/linux/fs.h | 6 +++---
 mm/fadvise.c       | 2 +-
 mm/filemap.c       | 8 ++++----
 4 files changed, 9 insertions(+), 10 deletions(-)

diff --git a/fs/sync.c b/fs/sync.c
index 6d8b04e04c3c..1759f6ba36cd 100644
--- a/fs/sync.c
+++ b/fs/sync.c
@@ -285,8 +285,7 @@ int sync_file_range(struct file *file, loff_t offset, loff_t nbytes,
 			ret = filemap_fdatawrite_range(mapping, offset,
 					endbyte);
 		else
-			ret = filemap_fdatawrite_range_kick(mapping, offset,
-					endbyte);
+			ret = filemap_flush_range(mapping, offset, endbyte);
 		if (ret < 0)
 			goto out;
 	}
diff --git a/include/linux/fs.h b/include/linux/fs.h
index c895146c1444..a5dbfa20f8d7 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -3014,7 +3014,7 @@ extern int __must_check file_fdatawait_range(struct file *file, loff_t lstart,
 extern int __must_check file_check_and_advance_wb_err(struct file *file);
 extern int __must_check file_write_and_wait_range(struct file *file,
 						loff_t start, loff_t end);
-int filemap_fdatawrite_range_kick(struct address_space *mapping, loff_t start,
+int filemap_flush_range(struct address_space *mapping, loff_t start,
 		loff_t end);
 
 static inline int file_write_and_wait(struct file *file)
@@ -3051,8 +3051,8 @@ static inline ssize_t generic_write_sync(struct kiocb *iocb, ssize_t count)
 	} else if (iocb->ki_flags & IOCB_DONTCACHE) {
 		struct address_space *mapping = iocb->ki_filp->f_mapping;
 
-		filemap_fdatawrite_range_kick(mapping, iocb->ki_pos - count,
-					      iocb->ki_pos - 1);
+		filemap_flush_range(mapping, iocb->ki_pos - count,
+				iocb->ki_pos - 1);
 	}
 
 	return count;
diff --git a/mm/fadvise.c b/mm/fadvise.c
index f1be619f0e58..67028e30aa91 100644
--- a/mm/fadvise.c
+++ b/mm/fadvise.c
@@ -111,7 +111,7 @@ int generic_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
 		spin_unlock(&file->f_lock);
 		break;
 	case POSIX_FADV_DONTNEED:
-		filemap_fdatawrite_range_kick(mapping, offset, endbyte);
+		filemap_flush_range(mapping, offset, endbyte);
 
 		/*
 		 * First and last FULL page! Partial pages are deliberately
diff --git a/mm/filemap.c b/mm/filemap.c
index f90f5bb2b825..fa770768ea3a 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -419,7 +419,7 @@ int filemap_fdatawrite(struct address_space *mapping)
 EXPORT_SYMBOL(filemap_fdatawrite);
 
 /**
- * filemap_fdatawrite_range_kick - start writeback on a range
+ * filemap_flush_range - start writeback on a range
  * @mapping:	target address_space
  * @start:	index to start writeback on
  * @end:	last (inclusive) index for writeback
@@ -429,12 +429,12 @@ EXPORT_SYMBOL(filemap_fdatawrite);
  *
  * Return: %0 on success, negative error code otherwise.
  */
-int filemap_fdatawrite_range_kick(struct address_space *mapping, loff_t start,
+int filemap_flush_range(struct address_space *mapping, loff_t start,
 				  loff_t end)
 {
 	return filemap_writeback(mapping, start, end, WB_SYNC_NONE, NULL);
 }
-EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
+EXPORT_SYMBOL_GPL(filemap_flush_range);
 
 /**
  * filemap_flush - mostly a non-blocking flush
@@ -447,7 +447,7 @@ EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
  */
 int filemap_flush(struct address_space *mapping)
 {
-	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
+	return filemap_flush_range(mapping, 0, LLONG_MAX);
 }
 EXPORT_SYMBOL(filemap_flush);
 
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
