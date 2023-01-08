Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A14966171F
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 17:57:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEYz8-000375-FY;
	Sun, 08 Jan 2023 16:57:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+58c3238fb6e66237551a+7077+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1pEYz6-00036S-Si for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=35W1DfUpdKcvHvkmZd/iv7iohwTShFaTRVBTVeGN8KQ=; b=c90LiacNXYzxeYAyHVDwFF0JU4
 aohfP4YDvPLPAIjgisy+kEo0Ne8jNTUvrpW1WQV3vM1R5HLC8yKaNX3w52pdRGW/yX1SDQQZ2OlEx
 sz5vpXlfj9js+t0/DS6EPist9NjNgN7X3gFyT6X7xfHzdqigFbUur2ZQvzDUUI9YLczc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=35W1DfUpdKcvHvkmZd/iv7iohwTShFaTRVBTVeGN8KQ=; b=ODXBTGYX/z/x8vUC91LjWJbEM/
 fzzFwNnoT9CQgPKJ0ZtVX91WfZzZXnwxaDcJqd8lUlcy8AiQk1NoYS2CN0FKawqUIypKSNY5qGBm1
 UDFoDKSNxc9Fg4mFAY4ETr9wCNWV5HvROTyzFtGs/l5+ddMPkEeoE9vOoMcLYmZy4lRk=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEYz4-0002ZT-Tk for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=35W1DfUpdKcvHvkmZd/iv7iohwTShFaTRVBTVeGN8KQ=; b=ptbBbqyy8J9QwzNlwXFf0pVSC9
 FObnajdrui3AnmwdcRqx7yS108dlZjq/LA1FcxnBsuCPU71ZtX9OCCm2Jm8xGwS0YPhXrtKcMGdZQ
 aKbo16bAYFtfrmPEZ3n7MYwDAGEsyygCRN2tTqfvEQyxzZbYdOUzQfkdu8aQI8Yd/qSaCa4uRm3v1
 A3aIxTvDqqrWc1GXgBRTfAWdjWi5FuMdOZZqzsr6BcukKQjm8ah9DRASE27rB0bk3R/hAO7T3QdKg
 jVUW5uVfr+iTFuvvy2ys19Nhv6xvcopqJwiQPvNINiTvL/wDHu+DlU8jvFyW2hJ7jgs+Q1PXdu5Qt
 qDlB/z8A==;
Received: from [2001:4bb8:198:a591:1c7c:bf66:af15:b282] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pEYyp-00ERur-0M; Sun, 08 Jan 2023 16:57:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Evgeniy Dushistov <dushistov@mail.ru>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Sun,  8 Jan 2023 17:56:45 +0100
Message-Id: <20230108165645.381077-8-hch@lst.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230108165645.381077-1-hch@lst.de>
References: <20230108165645.381077-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The last remaining user of folio_write_one through the
 write_one_page
 wrapper is jfs, so move the functionality there and hard code the call to
 metapage_writepage. Note that the use of the pagecache by the jfs 'metapage'
 buffer cache is a bit odd, and we could probably do without VM-level dirty
 tracking at all, but that's a change for another time. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1pEYz4-0002ZT-Tk
Subject: [Jfs-discussion] [PATCH 7/7] mm,
 jfs: move write_one_page/folio_write_one to jfs
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

The last remaining user of folio_write_one through the write_one_page
wrapper is jfs, so move the functionality there and hard code the
call to metapage_writepage.

Note that the use of the pagecache by the jfs 'metapage' buffer cache
is a bit odd, and we could probably do without VM-level dirty tracking
at all, but that's a change for another time.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/jfs/jfs_metapage.c   | 39 ++++++++++++++++++++++++++++++++++-----
 include/linux/pagemap.h |  6 ------
 mm/page-writeback.c     | 40 ----------------------------------------
 3 files changed, 34 insertions(+), 51 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 2e8461ce74de69..961569c1115901 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -691,6 +691,35 @@ void grab_metapage(struct metapage * mp)
 	unlock_page(mp->page);
 }
 
+static int metapage_write_one(struct page *page)
+{
+	struct folio *folio = page_folio(page);
+	struct address_space *mapping = folio->mapping;
+	struct writeback_control wbc = {
+		.sync_mode = WB_SYNC_ALL,
+		.nr_to_write = folio_nr_pages(folio),
+	};
+	int ret = 0;
+
+	BUG_ON(!folio_test_locked(folio));
+
+	folio_wait_writeback(folio);
+
+	if (folio_clear_dirty_for_io(folio)) {
+		folio_get(folio);
+		ret = metapage_writepage(page, &wbc);
+		if (ret == 0)
+			folio_wait_writeback(folio);
+		folio_put(folio);
+	} else {
+		folio_unlock(folio);
+	}
+
+	if (!ret)
+		ret = filemap_check_errors(mapping);
+	return ret;
+}
+
 void force_metapage(struct metapage *mp)
 {
 	struct page *page = mp->page;
@@ -700,8 +729,8 @@ void force_metapage(struct metapage *mp)
 	get_page(page);
 	lock_page(page);
 	set_page_dirty(page);
-	if (write_one_page(page))
-		jfs_error(mp->sb, "write_one_page() failed\n");
+	if (metapage_write_one(page))
+		jfs_error(mp->sb, "metapage_write_one() failed\n");
 	clear_bit(META_forcewrite, &mp->flag);
 	put_page(page);
 }
@@ -746,9 +775,9 @@ void release_metapage(struct metapage * mp)
 		set_page_dirty(page);
 		if (test_bit(META_sync, &mp->flag)) {
 			clear_bit(META_sync, &mp->flag);
-			if (write_one_page(page))
-				jfs_error(mp->sb, "write_one_page() failed\n");
-			lock_page(page); /* write_one_page unlocks the page */
+			if (metapage_write_one(page))
+				jfs_error(mp->sb, "metapage_write_one() failed\n");
+			lock_page(page);
 		}
 	} else if (mp->lsn)	/* discard_metapage doesn't remove it */
 		remove_from_logsync(mp);
diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 29e1f9e76eb6dd..4b3a7124c76712 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -1062,12 +1062,6 @@ static inline void folio_cancel_dirty(struct folio *folio)
 bool folio_clear_dirty_for_io(struct folio *folio);
 bool clear_page_dirty_for_io(struct page *page);
 void folio_invalidate(struct folio *folio, size_t offset, size_t length);
-int __must_check folio_write_one(struct folio *folio);
-static inline int __must_check write_one_page(struct page *page)
-{
-	return folio_write_one(page_folio(page));
-}
-
 int __set_page_dirty_nobuffers(struct page *page);
 bool noop_dirty_folio(struct address_space *mapping, struct folio *folio);
 
diff --git a/mm/page-writeback.c b/mm/page-writeback.c
index dfeeceebba0ae0..2430fd09607742 100644
--- a/mm/page-writeback.c
+++ b/mm/page-writeback.c
@@ -2581,46 +2581,6 @@ int do_writepages(struct address_space *mapping, struct writeback_control *wbc)
 	return ret;
 }
 
-/**
- * folio_write_one - write out a single folio and wait on I/O.
- * @folio: The folio to write.
- *
- * The folio must be locked by the caller and will be unlocked upon return.
- *
- * Note that the mapping's AS_EIO/AS_ENOSPC flags will be cleared when this
- * function returns.
- *
- * Return: %0 on success, negative error code otherwise
- */
-int folio_write_one(struct folio *folio)
-{
-	struct address_space *mapping = folio->mapping;
-	int ret = 0;
-	struct writeback_control wbc = {
-		.sync_mode = WB_SYNC_ALL,
-		.nr_to_write = folio_nr_pages(folio),
-	};
-
-	BUG_ON(!folio_test_locked(folio));
-
-	folio_wait_writeback(folio);
-
-	if (folio_clear_dirty_for_io(folio)) {
-		folio_get(folio);
-		ret = mapping->a_ops->writepage(&folio->page, &wbc);
-		if (ret == 0)
-			folio_wait_writeback(folio);
-		folio_put(folio);
-	} else {
-		folio_unlock(folio);
-	}
-
-	if (!ret)
-		ret = filemap_check_errors(mapping);
-	return ret;
-}
-EXPORT_SYMBOL(folio_write_one);
-
 /*
  * For address_spaces which do not use buffers nor write back.
  */
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
