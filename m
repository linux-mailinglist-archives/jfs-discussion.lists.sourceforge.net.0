Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0215627237
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 20:25:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouIbO-00047f-6X;
	Sun, 13 Nov 2022 19:25:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouIbM-00047W-Mh; Sun, 13 Nov 2022 19:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MEfXNy0oYvg+oByXyXaf2fLih3PRNTBnoHWoUbGvyo0=; b=KNchJzNkHkjdEPUg6JmTdP9g1B
 DLKuC98jWe4tTMbesNDva9wscydVxm/FRkw3g9dIWUTIzI1NJc6kyTIBRMOkiFySKtjhk13H+8/jQ
 TqdP6MRINykOg91bwsntDNr0+hf+hSiTGZ9SoAXhT9DCT5U7CjYln7vdvZpC4EZqjPuc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MEfXNy0oYvg+oByXyXaf2fLih3PRNTBnoHWoUbGvyo0=; b=gr84DapNNjKMp+tA9BgxdgCYJI
 VOnq2UiDUHbjHAqEWNc5MnwqID4kMPOcAkDOaT6PFPkWXGE+WMTuXBO2AUG61Pw0+n8NWFOK/3K9h
 HSbkys1cfJET/IsmdKh2O2q+atlUCvnRcPRhfeLfdEbJyxBbT5N5KE6w47fpEjICJngk=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouIbM-006xpR-4s; Sun, 13 Nov 2022 19:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=MEfXNy0oYvg+oByXyXaf2fLih3PRNTBnoHWoUbGvyo0=; b=1CYlSCKTrhaufOIQITLboWc3nv
 5XP8UaQ6updySgkzvHd+U0qG7p63m8ky3bOXtD/C5Lv62v2DvM+6ycEE2NyriXXCT8GlQRzLkqwHl
 PjPioAVEb5Yi1VFqlE9lmvf0ARj8+YcM96t2AnpdL5Xial7ovi4MPfSFEzQBZMV/phYO54KwQiuAa
 jrzM3eetiPkSNibuVO6DW7XDWDELhJbeCrOOgoSz5vfvh2lTcMcq9ewYxCv8wljb/FihZUdKoZqRd
 /jeBjIMEvgKWGdgnNgGodWrmTB6NEAkqivpO9lhBFpdyHBPdRoYsNw6dKFJScAZk7eCy9QCvG7ZiI
 tKo1bOOw==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFrP-00CJu6-H9; Sun, 13 Nov 2022 16:29:32 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:28:59 +0100
Message-Id: <20221113162902.883850-7-hch@lst.de>
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
X-Headers-End: 1ouIbM-006xpR-4s
Subject: [Jfs-discussion] [PATCH 6/9] hpfs: remove ->writepage
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
 fs/hpfs/file.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/fs/hpfs/file.c b/fs/hpfs/file.c
index f7547a62c81f6..88952d4a631e6 100644
--- a/fs/hpfs/file.c
+++ b/fs/hpfs/file.c
@@ -163,11 +163,6 @@ static int hpfs_read_folio(struct file *file, struct folio *folio)
 	return mpage_read_folio(folio, hpfs_get_block);
 }
 
-static int hpfs_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, hpfs_get_block, wbc);
-}
-
 static void hpfs_readahead(struct readahead_control *rac)
 {
 	mpage_readahead(rac, hpfs_get_block);
@@ -248,12 +243,12 @@ const struct address_space_operations hpfs_aops = {
 	.dirty_folio	= block_dirty_folio,
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio = hpfs_read_folio,
-	.writepage = hpfs_writepage,
 	.readahead = hpfs_readahead,
 	.writepages = hpfs_writepages,
 	.write_begin = hpfs_write_begin,
 	.write_end = hpfs_write_end,
-	.bmap = _hpfs_bmap
+	.bmap = _hpfs_bmap,
+	.migrate_folio = buffer_migrate_folio,
 };
 
 const struct file_operations hpfs_file_ops =
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
