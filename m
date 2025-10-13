Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC9ABD15CA
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 06:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kluI+BDXjJDEkxKp7GMXK7m/ONm+JNPa8TtYUH/Ui+Q=; b=IfYJTTEy5L9Xyzv9SL5lgSAv2Q
	ae+GEbFQh7N9vOvMMCrAoSjNCsKZM3T42u0o/f8kl4/kr0NVePlcfHx8mztfazOnYGaG6Dk95eW5z
	sn2qJkxdIVbuAxG3iIqFcjDohloxRiE5bw/B4GY/pC/5Bw+BlGPVh3h1fILlz3Kl1/d8=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v89we-0001Mu-Sb;
	Mon, 13 Oct 2025 04:14:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+429c5dd7f65f3a144064+8086+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1v89wc-0001Mo-TM for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=I9Quh20hMw6W9Qj1ot0jk9p8OG9NByjcr8PhG1KTTjU=; b=Wb8EsIoyucyW+3fYVd7ksSxGBB
 wwLXFz5kTGt4Txdgc1uei5+WiPtXtQN+8JkjSiGdJ/vuFiQfabbk/P+MMbB2MG3vAthEDdzVyyXAl
 glaWTtsvRv7Clcb4NPErQYZcYvizpOLDJbSdaR94Z+6d7UWBWEdHUEnRZ+65HcxOSaBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=I9Quh20hMw6W9Qj1ot0jk9p8OG9NByjcr8PhG1KTTjU=; b=QsegUX0EOAtDohJrGJKIfYVJuo
 QnW2LHf5yVoap8SDuH35YyyIFtibjbIIiNJoeu2Aur4v6DRDYMFXFWcLUEZO8r2WCtbsnLX/QZAh3
 v4X2ccC4YQIl9rHEwqfLjsmBuXvnxQJAb1xpjdxT1GAdCy6d0cgDB9I+i4t/XLwrGYs8=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v89wc-00062Z-AU for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 04:13:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=I9Quh20hMw6W9Qj1ot0jk9p8OG9NByjcr8PhG1KTTjU=; b=KbGJyiH6VuiuLwWcwtTvpAbIsV
 9c08ehIVjJ4wCL4tPLDFSoVmuZjPrHSJ1BkqLGzGdOf/LoIJwOnH7r03ODP2B9FQUg/esvdgPimts
 BP4Eo9u4nqrxwHYQqCsWSY2TMIh4SKboqpMKanrjKEfP/uBeRDSCyWx8YEamIEK/jsvGekYEdmwee
 KNPENPtY+gch4zEMP79BYW5U4v7g6XAnKpUlLDO2enhu78cKN8Veqiqpth1ccLd+UhnFh+Cs0Di5/
 vVdDHZN4RSnQwUXiI7phr5dcuXH6SurbdovhYwjQ9m/4uLytnAWp90EQr890hOvNlIkv3sF1oN0bo
 hZIetDoA==;
Received: from [220.85.59.196] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1v88mK-0000000C8Ky-0q9r; Mon, 13 Oct 2025 02:59:16 +0000
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
Date: Mon, 13 Oct 2025 11:58:03 +0900
Message-ID: <20251013025808.4111128-9-hch@lst.de>
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
 Content preview:  Replace filemap_fdatawrite_wbc,
 which exposes a writeback_control
 to the callers with a __filemap_fdatawrite helper that takes all the possible
 arguments and declares the writeback_control itself. Signed-off-by: Christoph
 Hellwig <hch@lst.de> --- include/linux/pagemap.h | 2 -- mm/filemap.c | 54
 ++++++++++++++ 2 files changed, 18 insertions(+), 38 deletions(-) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1v89wc-00062Z-AU
Subject: [Jfs-discussion] [PATCH 08/10] mm: remove filemap_fdatawrite_wbc
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

Replace filemap_fdatawrite_wbc, which exposes a writeback_control to the
callers with a __filemap_fdatawrite helper that takes all the possible
arguments and declares the writeback_control itself.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/pagemap.h |  2 --
 mm/filemap.c            | 54 ++++++++++++++---------------------------
 2 files changed, 18 insertions(+), 38 deletions(-)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index fc060ce2d31d..742ba1dd3990 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -61,8 +61,6 @@ int filemap_fdatawrite_range(struct address_space *mapping,
 		loff_t start, loff_t end);
 int filemap_check_errors(struct address_space *mapping);
 void __filemap_set_wb_err(struct address_space *mapping, int err);
-int filemap_fdatawrite_wbc(struct address_space *mapping,
-			   struct writeback_control *wbc);
 int kiocb_write_and_wait(struct kiocb *iocb, size_t count);
 
 static inline int filemap_write_and_wait(struct address_space *mapping)
diff --git a/mm/filemap.c b/mm/filemap.c
index bbd5d5eaa661..26b692dbf091 100644
--- a/mm/filemap.c
+++ b/mm/filemap.c
@@ -366,31 +366,30 @@ static int filemap_check_and_keep_errors(struct address_space *mapping)
 	return 0;
 }
 
-/**
- * filemap_fdatawrite_wbc - start writeback on mapping dirty pages in range
- * @mapping:	address space structure to write
- * @wbc:	the writeback_control controlling the writeout
- *
- * Call writepages on the mapping using the provided wbc to control the
- * writeout.
- *
- * Return: %0 on success, negative error code otherwise.
- */
-int filemap_fdatawrite_wbc(struct address_space *mapping,
-			   struct writeback_control *wbc)
+static int __filemap_fdatawrite(struct address_space *mapping, loff_t start,
+		loff_t end, enum writeback_sync_modes sync_mode,
+		long *nr_to_write)
 {
+	struct writeback_control wbc = {
+		.sync_mode	= sync_mode,
+		.nr_to_write	= nr_to_write ? *nr_to_write : LONG_MAX,
+		.range_start	= start,
+		.range_end	= end,
+	};
 	int ret;
 
 	if (!mapping_can_writeback(mapping) ||
 	    !mapping_tagged(mapping, PAGECACHE_TAG_DIRTY))
 		return 0;
 
-	wbc_attach_fdatawrite_inode(wbc, mapping->host);
-	ret = do_writepages(mapping, wbc);
-	wbc_detach_inode(wbc);
+	wbc_attach_fdatawrite_inode(&wbc, mapping->host);
+	ret = do_writepages(mapping, &wbc);
+	wbc_detach_inode(&wbc);
+
+	if (!ret && nr_to_write)
+		*nr_to_write = wbc.nr_to_write;
 	return ret;
 }
-EXPORT_SYMBOL(filemap_fdatawrite_wbc);
 
 /**
  * __filemap_fdatawrite_range - start writeback on mapping dirty pages in range
@@ -412,14 +411,7 @@ EXPORT_SYMBOL(filemap_fdatawrite_wbc);
 int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
 				loff_t end, int sync_mode)
 {
-	struct writeback_control wbc = {
-		.sync_mode = sync_mode,
-		.nr_to_write = LONG_MAX,
-		.range_start = start,
-		.range_end = end,
-	};
-
-	return filemap_fdatawrite_wbc(mapping, &wbc);
+	return __filemap_fdatawrite(mapping, start, end, sync_mode, NULL);
 }
 
 int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
@@ -475,18 +467,8 @@ EXPORT_SYMBOL(filemap_flush);
  */
 int filemap_fdatawrite_kick_nr(struct address_space *mapping, long *nr_to_write)
 {
-	struct writeback_control wbc = {
-		.nr_to_write = *nr_to_write,
-		.sync_mode = WB_SYNC_NONE,
-		.range_start = 0,
-		.range_end = LLONG_MAX,
-	};
-	int ret;
-
-	ret = filemap_fdatawrite_wbc(mapping, &wbc);
-	if (!ret)
-		*nr_to_write = wbc.nr_to_write;
-	return ret;
+	return __filemap_fdatawrite(mapping, 0, LLONG_MAX, WB_SYNC_NONE,
+			nr_to_write);
 }
 EXPORT_SYMBOL_FOR_MODULES(filemap_fdatawrite_kick_nr, "btrfs");
 
-- 
2.47.3



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
