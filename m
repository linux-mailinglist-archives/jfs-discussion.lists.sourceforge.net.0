Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 338E78A8AA2
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9X9-0000z0-8K;
	Wed, 17 Apr 2024 17:57:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9X0-0000yM-AT
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LAnZW6GCFcQwsNj6nTs+m0g546UgN80/wr24RLPyHvw=; b=Azu9GetdvTrPqfVYNlmn/cykId
 lWqKyC20+p8Ju1yTgEFfu+CTikxvZPseG4p3KdVCoOEwt21waA5Jrwx51vGz3gz9VAmXFHA8epsnA
 Aq8lOq1pjspbF5tSgN5CExL5oPGO2e7pf1B5PbPHflnMW27rKLbyaPwXLdxESR0pFNCo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LAnZW6GCFcQwsNj6nTs+m0g546UgN80/wr24RLPyHvw=; b=McCkN6nfss6HhbARScNRLvNL73
 fmeSH/MyFkaKC6s+uDFvm4Gy+AaRarZj7kbdhn3j4t97gRQs3mb1b9QhVyt6rhSmsgaOty6t5U05H
 R//uLdLflaAwS9M0o2EZVA3nWZCCF3oKZnDjgbf/6/VqY+XIO9U3hytm0Q7jOvZtHcN8=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9X0-0000lV-3v for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=LAnZW6GCFcQwsNj6nTs+m0g546UgN80/wr24RLPyHvw=; b=j5DtCS6Xx16WXXXgSfaUpeRV8y
 6gpKKTuf++yKQ7q1czBb1K3FRLW0wtQtgvxluWCQgzRbjIs/iwfM4xh2F4SlfVL3HfRi6T559Jk5U
 /ysmYPD3mwW0BOALVDbiuYuSbP5SVjRq0YSl11c1FMal+oNDFsYDC3WgRwBre7jR5Z61XzuTCMVcR
 2DrK+h/rl4qZbw9Apd58By9iC4hD8NOhtGPmsVjuIcMktQNav3d5H9lBBkth7QEHsZufrSN59zy+u
 W8heZf/HWQFnpY+unUwd85uE8WR/XV+FCzvFV6QMGeEG50hb/pAerkn6MS/XISnKB/mHtf558D0Xc
 V1gKYkIg==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wo-00000003Qtj-2Pde;
 Wed, 17 Apr 2024 17:57:02 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:54 +0100
Message-ID: <20240417175659.818299-11-willy@infradead.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240417175659.818299-1-willy@infradead.org>
References: <20240417175659.818299-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  All their callers now have a folio, so pass it in. Remove
 mp_anchor() as inc_io() was the last user. No savings here, just cleaning
 up some remnants. Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
 --- fs/jfs/jfs_metapage.c | 15 ++++++++------- 1 file changed, 8 insertions(+),
 7 deletions(-) 
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rx9X0-0000lV-3v
Subject: [Jfs-discussion] [PATCH v2 10/13] jfs: Convert inc_io to take a
 folio
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

All their callers now have a folio, so pass it in.  Remove mp_anchor()
as inc_io() was the last user.  No savings here, just cleaning up some
remnants.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 fs/jfs/jfs_metapage.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 67d5d417fe01..f03e217ec1cb 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -78,7 +78,6 @@ struct meta_anchor {
 	atomic_t io_count;
 	struct metapage *mp[MPS_PER_PAGE];
 };
-#define mp_anchor(page) ((struct meta_anchor *)page_private(page))
 
 static inline struct metapage *folio_to_mp(struct folio *folio, int offset)
 {
@@ -132,9 +131,11 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 	}
 }
 
-static inline void inc_io(struct page *page)
+static inline void inc_io(struct folio *folio)
 {
-	atomic_inc(&mp_anchor(page)->io_count);
+	struct meta_anchor *anchor = folio->private;
+
+	atomic_inc(&anchor->io_count);
 }
 
 static inline void dec_io(struct folio *folio, void (*handler) (struct folio *))
@@ -166,7 +167,7 @@ static inline void remove_metapage(struct folio *folio, struct metapage *mp)
 	kunmap(&folio->page);
 }
 
-#define inc_io(page) do {} while(0)
+#define inc_io(folio) do {} while(0)
 #define dec_io(folio, handler) handler(folio)
 
 #endif
@@ -395,14 +396,14 @@ static int metapage_write_folio(struct folio *folio,
 			 * Increment counter before submitting i/o to keep
 			 * count from hitting zero before we're through
 			 */
-			inc_io(&folio->page);
+			inc_io(folio);
 			if (!bio->bi_iter.bi_size)
 				goto dump_bio;
 			submit_bio(bio);
 			nr_underway++;
 			bio = NULL;
 		} else
-			inc_io(&folio->page);
+			inc_io(folio);
 		xlen = (folio_size(folio) - offset) >> inode->i_blkbits;
 		pblock = metapage_get_blocks(inode, lblock, &xlen);
 		if (!pblock) {
@@ -496,7 +497,7 @@ static int metapage_read_folio(struct file *fp, struct folio *folio)
 		if (pblock) {
 			if (!folio->private)
 				insert_metapage(folio, NULL);
-			inc_io(&folio->page);
+			inc_io(folio);
 			if (bio)
 				submit_bio(bio);
 
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
