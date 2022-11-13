Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EB9627119
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 18:02:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouGND-00042l-9r;
	Sun, 13 Nov 2022 17:02:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouGN9-00042c-B7; Sun, 13 Nov 2022 17:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5b0HJs6BQQ2q0Kk5NRtkmifAYyqmzj66xADh1qM10M0=; b=J4spHwcq7LaKzwVbta3qV4Axq7
 DKaRjNOkLU9lGfsCaLQYHXrfMCb2VHS1K0I8DcvSZZ4FroA9rNJ2fKdBbhwSFFBXjL8jfzn5QMVPn
 g/ARXoa2onQOOjJTkTjbPyPaCMtS7XHbp0/UNKkMNzseBlTzbb1hnqBcRT3C9h20WW0E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5b0HJs6BQQ2q0Kk5NRtkmifAYyqmzj66xADh1qM10M0=; b=CcxLI8J+4rx2HhLV4h1ZNYMMNb
 mVGlvL3TdRjepcz3KdcM+wv+n2nTbBV3k/530cyxiMAdNP1EDfmu3K3r5b51LjJmr68aaowimPzeh
 bNScs7jGaafReKvYpB+rcUdzfT9H0VrgZUTegjd+S/IAZ6TLNM31BP4/9DS4G083KSoA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouGN3-00053P-Kg; Sun, 13 Nov 2022 17:02:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5b0HJs6BQQ2q0Kk5NRtkmifAYyqmzj66xADh1qM10M0=; b=KGgZVJw+zfxpaLBuhQjRpHNEYn
 10b8xdf3xvPFTiPuWr1zXm+4e+1+9Milh54Dzt4O/GuaWAVilFEiAvWu+wkdn3bFwnb4Q11uSLIrd
 0EuYf5pAvNmhIJN9X3+rcL9wzs8lBEAclVOfiFxKEmOp4hsxiMNcGoji1TeYzgaBo4kpirTcC02AZ
 Szw8ic2CR+yHIghaQGROTusREc56h/Ozn5JBc4l85U2JToj1xU53uwDNLe2NyNH+wLdZwzic2GQlA
 5+pWB5gWan9ujAYVO57mZe/hVhpQrC+TwgbQhYX9n4citW6+c86b3rCQ459lmbZslOI02aUu19r6G
 /2FcORkA==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFr4-00CJnJ-EB; Sun, 13 Nov 2022 16:29:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:28:54 +0100
Message-Id: <20221113162902.883850-2-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221113162902.883850-1-hch@lst.de>
References: <20221113162902.883850-1-hch@lst.de>
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
 Content preview:  ->writepage is a very inefficient method to write back data, 
 and only used through write_cache_pages or a a fallback when no
 ->migrate_folio
 method is present. Set ->migrate_folio to the generic buffer_head based helper,
 and remove the ->writepage implementation. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1ouGN3-00053P-Kg
Subject: [Jfs-discussion] [PATCH 1/9] extfat: remove ->writepage
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
the ->writepage implementation.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/exfat/inode.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/fs/exfat/inode.c b/fs/exfat/inode.c
index 5590a1e83126c..eac95bcd9a8aa 100644
--- a/fs/exfat/inode.c
+++ b/fs/exfat/inode.c
@@ -345,11 +345,6 @@ static void exfat_readahead(struct readahead_control *rac)
 	mpage_readahead(rac, exfat_get_block);
 }
 
-static int exfat_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, exfat_get_block, wbc);
-}
-
 static int exfat_writepages(struct address_space *mapping,
 		struct writeback_control *wbc)
 {
@@ -473,12 +468,12 @@ static const struct address_space_operations exfat_aops = {
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio	= exfat_read_folio,
 	.readahead	= exfat_readahead,
-	.writepage	= exfat_writepage,
 	.writepages	= exfat_writepages,
 	.write_begin	= exfat_write_begin,
 	.write_end	= exfat_write_end,
 	.direct_IO	= exfat_direct_IO,
-	.bmap		= exfat_aop_bmap
+	.bmap		= exfat_aop_bmap,
+	.migrate_folio	= buffer_migrate_folio,
 };
 
 static inline unsigned long exfat_hash(loff_t i_pos)
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
