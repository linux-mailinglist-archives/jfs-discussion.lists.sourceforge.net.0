Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 963D56404A4
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Dec 2022 11:27:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p13GX-00078F-IY;
	Fri, 02 Dec 2022 10:27:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+dbb76fff442e09cb8719+7040+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1p13GH-000776-Is; Fri, 02 Dec 2022 10:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fqr9TW+rT8ValeXLVFOQSDtrNHXsSl7u56JKe2jXztI=; b=Vg7rqYPbAfJhFopty2dLZ+6Hwd
 i4/yREQEzptMnEqB00WWBw1/mANCb1y+8cPScOWmxFIiTda7qwcupiH2boZBR3J/RPNGq/q7eafUE
 qkihF/Vv4K/SzymF8AXxfyeNSAl8VW1MvaN8vrIZwahvz04nqYD1750x6yQZnH4uBtkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fqr9TW+rT8ValeXLVFOQSDtrNHXsSl7u56JKe2jXztI=; b=NWcyuwTV/Zvh4PpxC5hfPVY54M
 ETsayC++kNNUpfsE0Pj67gKSXqDH2/DfQj76qD17v1azsJzF88rGEAACQAKszRiUAaFKQXewiY2ih
 947TZOQ1Sulh/ydN9CQ386HE1u0gz/Fso2axoEmYZq9zigZMfGFvyMUoXcRJe50OALW4=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p13GG-0042AY-DX; Fri, 02 Dec 2022 10:27:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=fqr9TW+rT8ValeXLVFOQSDtrNHXsSl7u56JKe2jXztI=; b=TWvEKxe1hgaqaar0S3SdimrN6x
 CCDVFmRGCM1ggNXnG5FjJDcpDBjli7i4LD/ks900zzcj1gTmSm5Gec8vrJIJc0FAdbCn/oPYdx6Zt
 T05aBcXid3fSpkehDIgr1ssY1DY7NeoCM6NTgkF8Vti6BYts/hcAO9azLBFkGAkL3ItNAnApvXXyu
 BZ5KwzzO58NFGMAbVIIZUWGmHki7aOK6zFx1KMBI5NFt2H8SHg5srWFPDo3CeaHU/T3xDokLMAjJ4
 ueFDVhrzFEEHXF9JZhYku8gRMyvySJf07CcRonjhN0xseuAoTI2jGFX2ZwGLSf2ZqyQh893fl2rar
 sG+xo6dA==;
Received: from [2001:4bb8:192:26e7:bcd3:7e81:e7de:56fd] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1p13G4-00FR2o-7h; Fri, 02 Dec 2022 10:27:04 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Fri,  2 Dec 2022 11:26:43 +0100
Message-Id: <20221202102644.770505-7-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221202102644.770505-1-hch@lst.de>
References: <20221202102644.770505-1-hch@lst.de>
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
X-Headers-End: 1p13GG-0042AY-DX
Subject: [Jfs-discussion] [PATCH 6/7] jfs: remove ->writepage
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
Cc: jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 Johannes Weiner <hannes@cmpxchg.org>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

->writepage is a very inefficient method to write back data, and only
used through write_cache_pages or a a fallback when no ->migrate_folio
method is present.

Set ->migrate_folio to the generic buffer_head based helper, and remove
the ->writepage implementation.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Acked-by: Johannes Weiner <hannes@cmpxchg.org>
---
 fs/jfs/inode.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index d1ec920aa030a8..8ac10e39605081 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -264,11 +264,6 @@ int jfs_get_block(struct inode *ip, sector_t lblock,
 	return rc;
 }
 
-static int jfs_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, jfs_get_block, wbc);
-}
-
 static int jfs_writepages(struct address_space *mapping,
 			struct writeback_control *wbc)
 {
@@ -355,12 +350,12 @@ const struct address_space_operations jfs_aops = {
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio	= jfs_read_folio,
 	.readahead	= jfs_readahead,
-	.writepage	= jfs_writepage,
 	.writepages	= jfs_writepages,
 	.write_begin	= jfs_write_begin,
 	.write_end	= jfs_write_end,
 	.bmap		= jfs_bmap,
 	.direct_IO	= jfs_direct_IO,
+	.migrate_folio	= buffer_migrate_folio,
 };
 
 /*
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
