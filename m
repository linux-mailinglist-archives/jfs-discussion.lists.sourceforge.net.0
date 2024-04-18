Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B0F8A9D40
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Apr 2024 16:38:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rxStx-0008RF-U2;
	Thu, 18 Apr 2024 14:38:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rxStw-0008R9-DI
 for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Apr 2024 14:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QmzrnFm2hYgFZI9nVWXU3Upsx9CwQLwwmsJrr2bs+0E=; b=Q5zXL1tlrAzj0usK9HHdaB0vtF
 +fxb0pleNuweBWvQDpKU1dJLXioOzOQPabc+izmOxNmT37WBUmTptkkd392bnlEAViU0ei4n0/Xlh
 /Gb1dqlyqmh0nedL6+XSPoD600dYx3AFQF2BYhDSPZ/4RPYIgg+9iFvjK8VWOhSNMgrk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QmzrnFm2hYgFZI9nVWXU3Upsx9CwQLwwmsJrr2bs+0E=; b=WDJHjrb40XJffL9xvf6lbvkCzy
 7hPx/3CqPX8+RR8GsbNQCLn0prYaNrvv/WBZkw+6Nw9VRbma5KcVGvtJi1wvtw/V6LEfZkvjFNCP3
 y3RVdekW/3rDlg8t/PnxWopgxPm7znaigiEb2Gi048C/PTVMG36CAn0/ZAmJI9BK+H7c=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxStv-0002Hz-ON for jfs-discussion@lists.sourceforge.net;
 Thu, 18 Apr 2024 14:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QmzrnFm2hYgFZI9nVWXU3Upsx9CwQLwwmsJrr2bs+0E=; b=ugFWRl7HzO/eGM2/AYgWdIgtNr
 W/fjYU0Ti6h5xMhS/GptgLhp5u14Ux2NMpwU3t5V9f4KlLPsuBX+MtCTOeUbTVuJn6KP2jYN2ugLR
 tOJ2i86ZZZuNPShGSlFz5lQrzw/822ykcewe3Z+L7rIL4h41P6sJliEvBfPdd0E44ikDe38yakR1Q
 wcCY4BQ0IR6iMXmqz6mmIuP3ZdPAjQ/yYzs5qgW1M/3tyH9dYg4gjQOBZEVm44FPMKptgHyENwT+k
 STlt0i1aSTNM/nxfYRY2lxRmzGam4krf3yHnRAtctKWuwGYi77D9obLiMxysjKBK+d9ApUvETBvzB
 uGcn6Gnw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rxStj-00000005X6O-2dI2;
 Thu, 18 Apr 2024 14:37:59 +0000
Date: Thu, 18 Apr 2024 15:37:59 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Message-ID: <ZiEwRzu_H3pfs5pa@casper.infradead.org>
References: <20240417175659.818299-1-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240417175659.818299-1-willy@infradead.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jan pointed out that I'm really close to being able to remove
 PG_error entirely with just jfs and btrfs still testing the flag. So here's
 an attempt to remove use of the PG_error from JFS. We only nee [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rxStv-0002Hz-ON
Subject: [Jfs-discussion] [PATCH v2 14/13] jfs: Stop using PG_error
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
Cc: linux-fsdevel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Jan pointed out that I'm really close to being able to remove PG_error
entirely with just jfs and btrfs still testing the flag.  So here's an
attempt to remove use of the PG_error from JFS.  We only need to
remember the 'status' if we have multiple metapage blocks per host page,
so I keep it in the meta_anchor.

What do you think?

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
 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
