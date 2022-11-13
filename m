Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E191A62715C
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 18:55:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouHBx-0007TX-VS;
	Sun, 13 Nov 2022 17:54:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouHBw-0007TK-6G; Sun, 13 Nov 2022 17:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/xbu9xiQdaag/9GdE14AqAfcPfZ9nZ+wREMF3PN8ikU=; b=Df7Gwvy+NvhNemn92xVEtCYEu9
 4ZPCRjtwa40CSMY7Pad1wCgRZOutCu+wHL7jUEGzShwCsbnfMhr4810fNkyahuX/DGCMDf2ZYKls2
 AeV+4IvYz7tAthkrDmX4Eh9DrNLC9vCfm1PTQC9DTI/hmqPw3OhWYmr0BRUqXQvQKYrw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/xbu9xiQdaag/9GdE14AqAfcPfZ9nZ+wREMF3PN8ikU=; b=kqaoR4qg5mpXi1Lyw289Uednhz
 2GnivR9N8CwU/J1bLMEIdYSXYApcmxVsVpi9e61bGob+gGNqIYlWITjg3F42IDBPsUQgUDhHWKCN4
 TvQIhX0mXsrzH8RDirJ7B0vujQYqp0DsORIh+ITopAKvHjwshRdXBpRzUjCmLKODUv2o=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouHBv-0007V7-Eg; Sun, 13 Nov 2022 17:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=/xbu9xiQdaag/9GdE14AqAfcPfZ9nZ+wREMF3PN8ikU=; b=Zdpc2dMybytlRvYwON8XlABzCT
 ZMfpsLeusVZ3QKHsCMwKWFO9Kwn7VhCbwu2g9CJFiOBfB/nzdGc+nfgQ9xpO36CHzKpU6jM0cchyh
 pbaQsfIve7JTynTdwYGSBhgPZO0FafO0tSHF9tAYmPF3i8SqE6hX8HrPpqztnI3RRCUpK9DkD4VUr
 1aj4zcLV/It6mFMhS5W+SfkPikRRlQ7xGOLE+wKOfXMk7dFIEhgNFSrOuVtOxWsgD767oZT9xMQXC
 cABDK5122PBv5+NWwmfZb9tVH4upC9nkFTq3ex30hA8xLr6rkvyv1S+XCEj+yyKm/6mT8eS+5ijTx
 pdomIdRQ==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFrD-00CJp5-7o; Sun, 13 Nov 2022 16:29:20 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:28:56 +0100
Message-Id: <20221113162902.883850-4-hch@lst.de>
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
 and remove the ->writepage implementation. 
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
X-Headers-End: 1ouHBv-0007V7-Eg
Subject: [Jfs-discussion] [PATCH 3/9] fat: remove ->writepage
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
 fs/fat/inode.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/fs/fat/inode.c b/fs/fat/inode.c
index 1cbcc4608dc78..d99b8549ec8f9 100644
--- a/fs/fat/inode.c
+++ b/fs/fat/inode.c
@@ -194,11 +194,6 @@ static int fat_get_block(struct inode *inode, sector_t iblock,
 	return 0;
 }
 
-static int fat_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, fat_get_block, wbc);
-}
-
 static int fat_writepages(struct address_space *mapping,
 			  struct writeback_control *wbc)
 {
@@ -346,12 +341,12 @@ static const struct address_space_operations fat_aops = {
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio	= fat_read_folio,
 	.readahead	= fat_readahead,
-	.writepage	= fat_writepage,
 	.writepages	= fat_writepages,
 	.write_begin	= fat_write_begin,
 	.write_end	= fat_write_end,
 	.direct_IO	= fat_direct_IO,
-	.bmap		= _fat_bmap
+	.bmap		= _fat_bmap,
+	.migrate_folio	= buffer_migrate_folio,
 };
 
 /*
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
