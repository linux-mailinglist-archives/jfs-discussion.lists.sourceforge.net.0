Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 625C38AB8EA
	for <lists+jfs-discussion@lfdr.de>; Sat, 20 Apr 2024 04:51:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ry0ov-0006yS-1s;
	Sat, 20 Apr 2024 02:51:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1ry0om-0006yF-4v
 for jfs-discussion@lists.sourceforge.net;
 Sat, 20 Apr 2024 02:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+AYemDyRNXF7Y77XIBHs0ndHktj5Du5D1auXiCRD6+c=; b=ggqP27LuFsnCVBlgbC46V9VOYz
 +8MWbsv3MdpITIWoIQY5QC0H61+6sYv5q43W0BzMcR+HQkQ6ywsDqgjIz29BT+VXPb4NvCMyeNEvB
 WIlrkKa6Cmi7u8sHgZOeg711UI14voM9hWkF/+5BiU7+MITz7kQ+KErOfL+ivMnmTpE0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+AYemDyRNXF7Y77XIBHs0ndHktj5Du5D1auXiCRD6+c=; b=imYZHgno2Lpu8SGYC0qyb5RKZE
 TTrHntFQWgU1s+H0gZVXX7fojEeRGKF3DYhfMgHh5u+ETfHFUJZacKj05k3C+t3dRVK6+uotC23zP
 /zGXhYDhCT4fcInULWpKDclSYunSQl0xp1z1UUYBa/jT50xJ0cogoxjh9kHxOhK0YUXs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ry0od-00075c-DC for jfs-discussion@lists.sourceforge.net;
 Sat, 20 Apr 2024 02:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=+AYemDyRNXF7Y77XIBHs0ndHktj5Du5D1auXiCRD6+c=; b=KvloMV0XxZj9W2tlfTOg9g7djT
 5vIh0qK0pUypRKNRA+H6V74R6kQLTodkJkwf9v0qBiWQHzb+ymXDctOdtx81sDsQuLn79rgkponD7
 VvcwM352CxaY8SMvkqA9QBzCSggxIqhNRU+z+3Wi9+aH5EAl6+GPvpyK3DMlbnH68p0da0dTfhvgW
 dNQZ2qu+ZgWeda5f5O9M7PqClrQQRmehdMq4OQuObr9eXC6NPIoWCfPniOMSRAe+JnmhDaG1dm805
 UfOWmSMLsk1EoV082P9hcK7ZoINCGA3GlBGbD9TFftJsfLgZH0MVNt5w4iWgnBjnALmy2JLkSYaMh
 Ep7lL0Nw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1ry0oQ-000000095eH-3AlU;
 Sat, 20 Apr 2024 02:50:46 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-fsdevel@vger.kernel.org
Date: Sat, 20 Apr 2024 03:50:00 +0100
Message-ID: <20240420025029.2166544-6-willy@infradead.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240420025029.2166544-1-willy@infradead.org>
References: <20240420025029.2166544-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Store the blk_status per folio (if we can have multiple
 metapages
 per folio) instead of setting the folio error flag. This will allow us to
 reclaim a precious folio flag shortly. Cc: Dave Kleikamp <shaggy@kernel.org>
 Cc: jfs-discussion@lists.sourceforge.net Signed-off-by: Matthew Wilcox
 (Oracle) <willy@infradead.org> --- fs/jfs/jfs_metapage.c | 47
 +++++++++++++++++++++++------ [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ry0od-00075c-DC
Subject: [Jfs-discussion] [PATCH 05/30] jfs: Remove use of folio error flag
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Store the blk_status per folio (if we can have multiple metapages per
folio) instead of setting the folio error flag.  This will allow us to
reclaim a precious folio flag shortly.

Cc: Dave Kleikamp <shaggy@kernel.org>
Cc: jfs-discussion@lists.sourceforge.net
Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 47 +++++++++++++++++++++++--------------------
 1 file changed, 25 insertions(+), 22 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 19854bd8dfea..df575a873ec6 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -76,6 +76,7 @@ static mempool_t *metapage_mempool;
 struct meta_anchor {
 	int mp_count;
 	atomic_t io_count;
+	blk_status_t status;
 	struct metapage *mp[MPS_PER_PAGE];
 };
 
@@ -138,12 +139,16 @@ static inline void inc_io(struct folio *folio)
 	atomic_inc(&anchor->io_count);
 }
 
-static inline void dec_io(struct folio *folio, void (*handler) (struct folio *))
+static inline void dec_io(struct folio *folio, blk_status_t status,
+		void (*handler)(struct folio *, blk_status_t))
 {
 	struct meta_anchor *anchor = folio->private;
 
+	if (anchor->status == BLK_STS_OK)
+		anchor->status = status;
+
 	if (atomic_dec_and_test(&anchor->io_count))
-		handler(folio);
+		handler(folio, anchor->status);
 }
 
 #else
@@ -168,7 +173,7 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 }
 
 #define inc_io(folio) do {} while(0)
-#define dec_io(folio, handler) handler(folio)
+#define dec_io(folio, status, handler) handler(folio, status)
 
 #endif
 
@@ -258,23 +263,20 @@ static sector_t metapage_get_blocks(struct inode *inode, sector_t lblock,
 	return lblock;
 }
 
-static void last_read_complete(struct folio *folio)
+static void last_read_complete(struct folio *folio, blk_status_t status)
 {
-	if (!folio_test_error(folio))
-		folio_mark_uptodate(folio);
-	folio_unlock(folio);
+	if (status)
+		printk(KERN_ERR "Read error %d at %#llx\n", status,
+				folio_pos(folio));
+
+	folio_end_read(folio, status == 0);
 }
 
 static void metapage_read_end_io(struct bio *bio)
 {
 	struct folio *folio = bio->bi_private;
 
-	if (bio->bi_status) {
-		printk(KERN_ERR "metapage_read_end_io: I/O error\n");
-		folio_set_error(folio);
-	}
-
-	dec_io(folio, last_read_complete);
+	dec_io(folio, bio->bi_status, last_read_complete);
 	bio_put(bio);
 }
 
@@ -300,11 +302,17 @@ static void remove_from_logsync(struct metapage *mp)
 	LOGSYNC_UNLOCK(log, flags);
 }
 
-static void last_write_complete(struct folio *folio)
+static void last_write_complete(struct folio *folio, blk_status_t status)
 {
 	struct metapage *mp;
 	unsigned int offset;
 
+	if (status) {
+		int err = blk_status_to_errno(status);
+		printk(KERN_ERR "metapage_write_end_io: I/O error\n");
+		mapping_set_error(folio->mapping, err);
+	}
+
 	for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
 		mp = folio_to_mp(folio, offset);
 		if (mp && test_bit(META_io, &mp->flag)) {
@@ -326,12 +334,7 @@ static void metapage_write_end_io(struct bio *bio)
 
 	BUG_ON(!folio->private);
 
-	if (bio->bi_status) {
-		int err = blk_status_to_errno(bio->bi_status);
-		printk(KERN_ERR "metapage_write_end_io: I/O error\n");
-		mapping_set_error(folio->mapping, err);
-	}
-	dec_io(folio, last_write_complete);
+	dec_io(folio, bio->bi_status, last_write_complete);
 	bio_put(bio);
 }
 
@@ -454,10 +457,10 @@ static int metapage_write_folio(struct folio *folio,
 		       4, bio, sizeof(*bio), 0);
 	bio_put(bio);
 	folio_unlock(folio);
-	dec_io(folio, last_write_complete);
+	dec_io(folio, BLK_STS_OK, last_write_complete);
 err_out:
 	while (bad_blocks--)
-		dec_io(folio, last_write_complete);
+		dec_io(folio, BLK_STS_OK, last_write_complete);
 	return -EIO;
 }
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
