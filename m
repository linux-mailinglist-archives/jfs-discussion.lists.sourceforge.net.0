Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 810FB62712D
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 18:14:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouGYz-0004Np-ME;
	Sun, 13 Nov 2022 17:14:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouGYy-0004Ng-1w; Sun, 13 Nov 2022 17:14:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1VC7GrQaMZNbkdOyDmdF6TZukkUpzM8YbBGwowHmIU=; b=KArAxBEHW3f7mhR0tUNmGwJWvm
 uptvlUx5X1rKMPf30hkNFrJOUhU6iKEd6T/v9Tg6JwrTa0JEDnFUdRuMma+72SI0jjjH+oaAzfiaR
 ATVMyOpe0COU9Xh0yHMfcc46n0n6+jkwTKPCys2naCTZI/sUzurJoj0Sp0AY/W9AeJ+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d1VC7GrQaMZNbkdOyDmdF6TZukkUpzM8YbBGwowHmIU=; b=FpXFeLLGETddNwuDbtEcJ27XuP
 p8NGS3HL2NKmSenmrrnOK1EZFzOdcdDRhYNgtRi/hPmDgQuf9W4MQ9LnzLzL5kn1EIiYV/KB1DkH7
 9WSbYnZgdkg1vb8HwOWLpLwYrjiVrq38quy8aNKnP7UKMRx2/2L1sduKGqpJi6IzXQ2M=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouGYx-0005oP-GV; Sun, 13 Nov 2022 17:14:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=d1VC7GrQaMZNbkdOyDmdF6TZukkUpzM8YbBGwowHmIU=; b=vR2Urw0mBBapzzTe+ueUjxIcY0
 Olt8+7T4BHw+h4YYCYE28AfjUTK6KSXgjUNvFMF/cmF0x/SDDKAKBik7JeJNB3hk5Ij/4zY/sb7gp
 yfsEo+ErnNnXsbVrPMQhy7zKjBT9bpHmYGUFOh/sFVFF0DAOWtuD+RUHdn5B80Ft2T/6v5qm15H/7
 P0+sCUGI+u4iM+v5TLUgUFyeDIh426tTZEO/p/akvkKG1E21tuVTNqVxXFnDAcvN+N7dKSZfgpHoR
 B4oxYYk8vVaZcWWkAfypcY4RCswZTj1zxhrBiOcPSXylEvUYj0wdK5RVg/QvdvkPtJbdunpGgS+gb
 b3qp9j2Q==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFrd-00CK5A-Ob; Sun, 13 Nov 2022 16:29:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:29:02 +0100
Message-Id: <20221113162902.883850-10-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221113162902.883850-1-hch@lst.de>
References: <20221113162902.883850-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  ->writepage is a very inefficient method to write back data, 
 and only used through write_cache_pages or a a fallback when no
 ->migrate_folio
 method is present. Set ->migrate_folio to the generic buffer_head based helper,
 and remove the ->writepage implementation in extfat. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ouGYx-0005oP-GV
Subject: [Jfs-discussion] [PATCH 9/9] udf: remove ->writepage
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
 jfs-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

->writepage is a very inefficient method to write back data, and only
used through write_cache_pages or a a fallback when no ->migrate_folio
method is present.

Set ->migrate_folio to the generic buffer_head based helper, and remove
the ->writepage implementation in extfat.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/udf/inode.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/fs/udf/inode.c b/fs/udf/inode.c
index dce6ae9ae306c..0246b1b86fb91 100644
--- a/fs/udf/inode.c
+++ b/fs/udf/inode.c
@@ -182,11 +182,6 @@ static void udf_write_failed(struct address_space *mapping, loff_t to)
 	}
 }
 
-static int udf_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, udf_get_block, wbc);
-}
-
 static int udf_writepages(struct address_space *mapping,
 			struct writeback_control *wbc)
 {
@@ -239,12 +234,12 @@ const struct address_space_operations udf_aops = {
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio	= udf_read_folio,
 	.readahead	= udf_readahead,
-	.writepage	= udf_writepage,
 	.writepages	= udf_writepages,
 	.write_begin	= udf_write_begin,
 	.write_end	= generic_write_end,
 	.direct_IO	= udf_direct_IO,
 	.bmap		= udf_bmap,
+	.migrate_folio	= buffer_migrate_folio,
 };
 
 /*
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
