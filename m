Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB8A547F0C
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Jun 2022 07:38:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o0cm2-0001nw-Qg; Mon, 13 Jun 2022 05:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+6ef1cfbcd5439e194ca7+6868+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1o0clt-0001ls-2V
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zp2A2WsdHhKodTSMNz93mFV0bupP5ggkN3XKeFjb+k0=; b=eToFQ3kMy6P38rbMR1HDVOsYQg
 e+FAaEBaR7VQfInUm8dejPlk4aHZh2mepXluztzypCbPeE/K8c0ZGhyPQZAvh2q9BH8duT0CAdgks
 +Bv/CZBKn2VSrf4GNAOqZutC9MnvEpDRhwkIz3lJmgybtoNBTpLrHn8RcJ8DDHbYecXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zp2A2WsdHhKodTSMNz93mFV0bupP5ggkN3XKeFjb+k0=; b=diyqBb+PKfA2Q+E40oY23W60ni
 nxioKJesjUmiwYbC2IX+CJrqGWHDz+1NL32oubr0hBqy1OPFNjvV5HfqUgTEj8enUor/AqfaqXaOy
 0zMmEn2Ng7xu4IU7/7W1xOIjHK1kLwjDfO0nvipqQnRVHkiwGFC6FNqRtT6hDiCGugxg=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0clk-00028t-4L
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Zp2A2WsdHhKodTSMNz93mFV0bupP5ggkN3XKeFjb+k0=; b=TkFyl6H75fM8c9tKEtfeL1KjsG
 CaJ7Oa0Qby+KbEh93MbSGeNt6+Hb0Lsv4whlxvXNFQru8rZdWgVQPCWbmlNxFDK/doxGYWpgCjkIL
 FLoWBjKj8yg5+LWJwsn1xbEpvaKsIcE/n//P51Nh0sVCcD74niLAOC9BL7tfa+CpEE4KGhniOxYlu
 korHNvCyxqqp1We7PbToGW9NGxeC6/ymAX43zRsxTYdeEX4ESxpkpstlYzG5NSojl0Ndkcmjojn6h
 1yVZl0stpkYwXy3332y+rRPyZmpO8UQu0QDJCe7Ldx6GgbaIjPwdXs3UPLTipev2ydkLedaXeggZl
 ss3HGNUA==;
Received: from [2001:4bb8:180:36f6:f125:c38b:d3d6:ae6c] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1o0cla-001V6O-Kt; Mon, 13 Jun 2022 05:37:35 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date: Mon, 13 Jun 2022 07:37:15 +0200
Message-Id: <20220613053715.2394147-7-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220613053715.2394147-1-hch@lst.de>
References: <20220613053715.2394147-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: No one calls mpage_writepages with a NULL get_block paramter,
 so remove support for that case. Signed-off-by: Christoph Hellwig <hch@lst.de>
 --- fs/mpage.c | 22 ++++++ 1 file changed, 6 insertions(+), 16 deletions(-)
 Content analysis details:   (-2.2 points, 6.0 required)
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
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o0clk-00028t-4L
Subject: [Jfs-discussion] [PATCH 6/6] fs: remove the NULL get_block case in
 mpage_writepages
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
 linux-ext4@vger.kernel.org, linux-kernel@vger.kernel.org,
 ntfs3@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

No one calls mpage_writepages with a NULL get_block paramter, so remove
support for that case.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/mpage.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/fs/mpage.c b/fs/mpage.c
index a354ef2b4b4eb..e4cf881634a6a 100644
--- a/fs/mpage.c
+++ b/fs/mpage.c
@@ -636,8 +636,6 @@ static int __mpage_writepage(struct page *page, struct writeback_control *wbc,
  * @mapping: address space structure to write
  * @wbc: subtract the number of written pages from *@wbc->nr_to_write
  * @get_block: the filesystem's block mapper function.
- *             If this is NULL then use a_ops->writepage.  Otherwise, go
- *             direct-to-BIO.
  *
  * This is a library function, which implements the writepages()
  * address_space_operation.
@@ -654,24 +652,16 @@ int
 mpage_writepages(struct address_space *mapping,
 		struct writeback_control *wbc, get_block_t get_block)
 {
+	struct mpage_data mpd = {
+		.get_block	= get_block,
+	};
 	struct blk_plug plug;
 	int ret;
 
 	blk_start_plug(&plug);
-
-	if (!get_block)
-		ret = generic_writepages(mapping, wbc);
-	else {
-		struct mpage_data mpd = {
-			.bio = NULL,
-			.last_block_in_bio = 0,
-			.get_block = get_block,
-		};
-
-		ret = write_cache_pages(mapping, wbc, __mpage_writepage, &mpd);
-		if (mpd.bio)
-			mpage_bio_submit(mpd.bio);
-	}
+	ret = write_cache_pages(mapping, wbc, __mpage_writepage, &mpd);
+	if (mpd.bio)
+		mpage_bio_submit(mpd.bio);
 	blk_finish_plug(&plug);
 	return ret;
 }
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
