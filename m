Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD5664049F
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Dec 2022 11:27:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p13GG-00046C-Iq;
	Fri, 02 Dec 2022 10:27:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+dbb76fff442e09cb8719+7040+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1p13GF-00045W-HF; Fri, 02 Dec 2022 10:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tshiIOlyizQCn3wWRqEk8o+H1VcPDbPrSjSJx6S/vZI=; b=Di3Lwwkg7ffAnFbCic84zD8Ctw
 rkeVGp0XPhCApNSvMO0d2XWf2tX0Ihbtai4Ggh5v4omLg2GUKYEVEnc5jc6v+oDo/3ALk10LrfkLq
 UCR8NdCD0cMrEx8tWGqpcbR+KJ+S9kyTrx7nSI7NTua4UTzF9PH+MRWm8et/xypvurGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tshiIOlyizQCn3wWRqEk8o+H1VcPDbPrSjSJx6S/vZI=; b=IHoJI6Po7fIDOh3lHMkOVRTdFX
 dVLHwIRoJYNZe3WP+xWo/9LknJM5FUVcRdv3a5HGUpeN7nsxhNqAxbczNHG0cVAVAamlh7H3Xf1TN
 TUZqRGQ/aiOaJqoZ9KhHfVsK/Df8EWZhcfK87qlaN3C4fhiwIXQHp6AABoj5hQ+s7hTU=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p13GD-0003Pw-9T; Fri, 02 Dec 2022 10:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=tshiIOlyizQCn3wWRqEk8o+H1VcPDbPrSjSJx6S/vZI=; b=p4T0SSAwoIWZnEozmQOSV1gt/m
 MIsRDd+GQm1I/cTGz+x3lh11gl9nlIOzHMxB4vQ1meJn45PtYaDQhPY42zKL/K405lsql7KgD71Um
 2RREPX5GNnwopdJ0PXyvfmfbM8KWrMs3PkztXKT4lZxcMAKD5EavokoI5B0Ijhx/nFCu2G26xXa/0
 CpNmv0l7/fvEHrXC2Xc4LXjaIfYob5/hQ/D2RBNqs4LR7DZR+wNPRqrCxPOPftOqV+6CBciDdnS87
 blEIGvCe0Q99ktCpoqgEH7vI3DzmeKXMGnIrjgPcWRsX1zUFMOE1orH/KBqJDWv8jUnjrvv7IzQhz
 mz06UUiw==;
Received: from [2001:4bb8:192:26e7:bcd3:7e81:e7de:56fd] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1p13Fp-00FQwZ-F8; Fri, 02 Dec 2022 10:26:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Fri,  2 Dec 2022 11:26:38 +0100
Message-Id: <20221202102644.770505-2-hch@lst.de>
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
X-Headers-End: 1p13GD-0003Pw-9T
Subject: [Jfs-discussion] [PATCH 1/7] extfat: remove ->writepage
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
Acked-by: Namjae Jeon <linkinjeon@kernel.org>
Acked-by: Johannes Weiner <hannes@cmpxchg.org>
---
 fs/exfat/inode.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/fs/exfat/inode.c b/fs/exfat/inode.c
index 5590a1e83126c9..eac95bcd9a8aae 100644
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
