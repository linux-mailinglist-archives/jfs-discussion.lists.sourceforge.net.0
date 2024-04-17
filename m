Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B06558A8A9B
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X5-0003Ok-AY;
	Wed, 17 Apr 2024 17:57:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9X1-0003Ny-IN
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tuAP8Pj11A6vSLLksQ3sdzEDeykXyvIK9phb2ySpPEM=; b=AdpWs/PMzKRxS+6UFnY0CYqGmf
 CL3j0vWCogR/SgyKHVngqpOnvlcms7hkt46AL7vqP06N4wBA7EHl+JlaTzTT5+FD07DtxQos+dejx
 W75R0/pxqdlmr/2iH7YnCfJ54gDhiBPoLB6hami9kBkq1YjsRnPHZv2pSRcoYHznsBcM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tuAP8Pj11A6vSLLksQ3sdzEDeykXyvIK9phb2ySpPEM=; b=RASr7oVoRVLuChGO2mRlv9VEaN
 O6FrzeW0qfS1eNousBInD/pfXg0IEJl/9lzhlknQl+ybmJWGE4XMpQLbvTHxHAX0FNkKVdjrwLJ1k
 j2NBlG/mugxkynx6194eiIUyLjyn7+KEHNpWfny6nOWUk/efmucb1tmzsixdu/YISrwc=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9X1-0000lj-EZ for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=tuAP8Pj11A6vSLLksQ3sdzEDeykXyvIK9phb2ySpPEM=; b=vgcdcrxBtHehy2RcT2TwJyfETJ
 E/z8u0bmwPu/oXYtLIDVeNhVOh/PUwR2G39v7IibHpQ3ugGAfsXUCempOsHw9DSV19xo+Ez2GlGK/
 Htm8CLQNS3MUUnROGh1dLGBeXsKPzgOiiuZT709kDd0XkoLUq+B1wrfiyQpeilGtG0h9k0zAGWiOy
 D9ZHjRhb0+U+2ikdBj10dbP75RkJLF/pUEuPHI8XO4nPjaAr5OIzfDwaIIfufk2YlXA+lo0w8fc1k
 E7DeKeYZx/63gkfigLNodpMoY5wnkMqYKwBg145CThoIJWgR/J5eWigeo/25e/x40nL15isAlzW8I
 BWnO3Yag==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wm-00000003Qsh-3mnh;
 Wed, 17 Apr 2024 17:57:00 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:45 +0100
Message-ID: <20240417175659.818299-2-willy@infradead.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240417175659.818299-1-willy@infradead.org>
References: <20240417175659.818299-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use bio_add_folio_nofail() as we just allocated the bio and
 know it cannot fail. Other than that, this is a 1:1 conversion from page
 APIs to folio APIs. Signed-off-by: Matthew Wilcox (Oracle)
 <willy@infradead.org>
 --- fs/jfs/jfs_metapage.c | 35 +++++++++++++ 1 file changed, 13 insertions(+), 
 22 deletions(-) 
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rx9X1-0000lj-EZ
Subject: [Jfs-discussion] [PATCH v2 01/13] jfs: Convert metapage_read_folio
 to use folio APIs
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use bio_add_folio_nofail() as we just allocated the bio and know
it cannot fail.  Other than that, this is a 1:1 conversion from
page APIs to folio APIs.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 35 +++++++++++++----------------------
 1 file changed, 13 insertions(+), 22 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 961569c11159..8266c43ec728 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -266,14 +266,14 @@ static void last_read_complete(struct page *page)
 
 static void metapage_read_end_io(struct bio *bio)
 {
-	struct page *page = bio->bi_private;
+	struct folio *folio = bio->bi_private;
 
 	if (bio->bi_status) {
 		printk(KERN_ERR "metapage_read_end_io: I/O error\n");
-		SetPageError(page);
+		folio_set_error(folio);
 	}
 
-	dec_io(page, last_read_complete);
+	dec_io(&folio->page, last_read_complete);
 	bio_put(bio);
 }
 
@@ -469,20 +469,18 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 
 static int metapage_read_folio(struct file *fp, struct folio *folio)
 {
-	struct page *page = &folio->page;
-	struct inode *inode = page->mapping->host;
+	struct inode *inode = folio->mapping->host;
 	struct bio *bio = NULL;
 	int block_offset;
-	int blocks_per_page = i_blocks_per_page(inode, page);
+	int blocks_per_page = i_blocks_per_folio(inode, folio);
 	sector_t page_start;	/* address of page in fs blocks */
 	sector_t pblock;
 	int xlen;
 	unsigned int len;
 	int offset;
 
-	BUG_ON(!PageLocked(page));
-	page_start = (sector_t)page->index <<
-		     (PAGE_SHIFT - inode->i_blkbits);
+	BUG_ON(!folio_test_locked(folio));
+	page_start = folio_pos(folio) >> inode->i_blkbits;
 
 	block_offset = 0;
 	while (block_offset < blocks_per_page) {
@@ -490,9 +488,9 @@ static int metapage_read_folio(struct file *fp, struct folio *folio)
 		pblock = metapage_get_blocks(inode, page_start + block_offset,
 					     &xlen);
 		if (pblock) {
-			if (!PagePrivate(page))
-				insert_metapage(page, NULL);
-			inc_io(page);
+			if (!folio->private)
+				insert_metapage(&folio->page, NULL);
+			inc_io(&folio->page);
 			if (bio)
 				submit_bio(bio);
 
@@ -501,11 +499,10 @@ static int metapage_read_folio(struct file *fp, struct folio *folio)
 			bio->bi_iter.bi_sector =
 				pblock << (inode->i_blkbits - 9);
 			bio->bi_end_io = metapage_read_end_io;
-			bio->bi_private = page;
+			bio->bi_private = folio;
 			len = xlen << inode->i_blkbits;
 			offset = block_offset << inode->i_blkbits;
-			if (bio_add_page(bio, page, len, offset) < len)
-				goto add_failed;
+			bio_add_folio_nofail(bio, folio, len, offset);
 			block_offset += xlen;
 		} else
 			block_offset++;
@@ -513,15 +510,9 @@ static int metapage_read_folio(struct file *fp, struct folio *folio)
 	if (bio)
 		submit_bio(bio);
 	else
-		unlock_page(page);
+		folio_unlock(folio);
 
 	return 0;
-
-add_failed:
-	printk(KERN_ERR "JFS: bio_add_page failed unexpectedly\n");
-	bio_put(bio);
-	dec_io(page, last_read_complete);
-	return -EIO;
 }
 
 static bool metapage_release_folio(struct folio *folio, gfp_t gfp_mask)
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
