Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F2862717E
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 19:10:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouHQX-0000gs-4N;
	Sun, 13 Nov 2022 18:09:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouHQU-0000gi-Sg; Sun, 13 Nov 2022 18:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=scMCwkPRF8Nb8DbgWIgHz66Xl/jY6KIfqEEGjQf+P/U=; b=dtnl+PUE5HBk2O+aU1OAR6QT9F
 n8QDT13LQ/yDSZj/NRuA9EAWMiA0WVaT+rIPtRhJrfc+HSOqiq244VfNv/58awcfn6ibnYOPxCKlp
 OG9DI+oxRUsTWTirDKXe5LM4bzU+JZrnbsC6yir1DreGD8v6y6BPscfeSPGdLVhr+qwc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=scMCwkPRF8Nb8DbgWIgHz66Xl/jY6KIfqEEGjQf+P/U=; b=NSXKKYQcGcGzF2xybc2OYa5VFb
 JLVDXi2ePBXxM2whZ5pj3MoWsUgBAjDLVj4rslp5sQRJoftRrHY4WlAc6QxeRU+NdET7RfzJOkXLh
 Jo8GIJUzDzIZd92i5/L+Q9m7uPCovAspMx6yKbLSLO4Z2pwmJESYudTnBKcC/s4Suess=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouHQU-006vac-61; Sun, 13 Nov 2022 18:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=scMCwkPRF8Nb8DbgWIgHz66Xl/jY6KIfqEEGjQf+P/U=; b=dZaZtRFdFNTJOY1FQNyijDu7jO
 H93jBvSdtSrsZP6OEyZrMhY1VbI0CUpwlTsPpjDi+4lMAIL+Y4nj9p0RfOwK76YPLCYCt/1KwRRC3
 mZ48JB/P7VnrTuDpgyoQX0CkNGnijcfT9NIM+zn4TAFb9MK+otp7w8IWEAt5belywKsJadLtrTwKC
 5ogGIWtuIUx0hXNZbzkIc8f1O4z0MBzf1hvb0ROX8Xe+CQDlO7RbLOBqjH5j1gQ19+z+Zpat9BGDr
 FQac6xjD5NdZXpmfjfrNsG6sAx+Sj2tz3i+V05uvUNmWDZI7+6l9AoSFZwsUufAKr3RT/N5rfcils
 92Ydrxtw==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFr8-00CJnt-Dv; Sun, 13 Nov 2022 16:29:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:28:55 +0100
Message-Id: <20221113162902.883850-3-hch@lst.de>
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
 method is present. Signed-off-by: Christoph Hellwig <hch@lst.de> ---
 fs/ext2/inode.c | 6 ------ 1 file changed, 6 deletions(-) 
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
X-Headers-End: 1ouHQU-006vac-61
Subject: [Jfs-discussion] [PATCH 2/9] ext2: remove ->writepage
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

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/ext2/inode.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
index 918ab2f9e4c05..3b2e3e1e0fa25 100644
--- a/fs/ext2/inode.c
+++ b/fs/ext2/inode.c
@@ -869,11 +869,6 @@ int ext2_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
 	return ret;
 }
 
-static int ext2_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, ext2_get_block, wbc);
-}
-
 static int ext2_read_folio(struct file *file, struct folio *folio)
 {
 	return mpage_read_folio(folio, ext2_get_block);
@@ -948,7 +943,6 @@ const struct address_space_operations ext2_aops = {
 	.invalidate_folio	= block_invalidate_folio,
 	.read_folio		= ext2_read_folio,
 	.readahead		= ext2_readahead,
-	.writepage		= ext2_writepage,
 	.write_begin		= ext2_write_begin,
 	.write_end		= ext2_write_end,
 	.bmap			= ext2_bmap,
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
