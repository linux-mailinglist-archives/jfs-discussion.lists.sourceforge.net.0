Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F432543604
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 Jun 2022 17:05:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nyxFO-0003iz-UL; Wed, 08 Jun 2022 15:05:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+ba9ae8ab3d8ecaf97ba4+6863+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1nyxFN-0003im-Pp
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zp2A2WsdHhKodTSMNz93mFV0bupP5ggkN3XKeFjb+k0=; b=bnEFo5/++MYO2MuSOe3oNmynLG
 fuZXhWdHm7xMJfbSbncm+o86iPfX9s9ybrMhugDPNsP0nG9I6xo2KIOl/9vOezX6/dUcvaZ9PifYA
 GDtG+mZkpnjuByG+pCOChyw/O+Jc8dUY7wWQAuPwqpCSmiNqmQ1dvtArGFyp7LTMnjOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Zp2A2WsdHhKodTSMNz93mFV0bupP5ggkN3XKeFjb+k0=; b=Xnp7M/lwdxTm+R38oza7dGMPOo
 4ZIBk7hkNeSiE2Dm7pztzDC+/5zQaE4s8+LHYuvREKyV70ibITz9mjMc57e6zKrkk9p3a/BsXrDGR
 REP2cwTDPyJ9szHoiTLAiu+9G5Cx41Z3x+uqgqL87UC74WSsa5m6xlLGKgULx7121PsQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyxFI-009y7A-7h
 for jfs-discussion@lists.sourceforge.net; Wed, 08 Jun 2022 15:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=Zp2A2WsdHhKodTSMNz93mFV0bupP5ggkN3XKeFjb+k0=; b=M3VEhBOzxJlUiCP//pboxh+Xrb
 txStpypjpT6314mFPtaihGuyqKQOMKJ1V0ZzdQuEScNXtXZJDvYfa5u8Jdih0CWPuVaKRPqcqBtBd
 Yy6DIPGnttIBEYTUxelFkme+8q2P9aARzov2wtGuqohwb8+jmGEkpXos4IqKexzl1KdHp6omxtV+Z
 kJGMCGGwF8+IwSfNUAWMPgQXRO7U57IuE5ZxRzTaRywm+33PuknwtQjXr48/06zj8i1RtOWSKPESF
 7a3Rp5uR+3cndEP685MoUKLv2oXet+Bj9cpNWM3IDarrjGUqT+b6Al+nMxGn4u3bC3BvCfonmb/nr
 cBIIDgHQ==;
Received: from [2001:4bb8:190:726c:66c4:f635:4b37:bdda] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nyxF8-00DtMl-0X; Wed, 08 Jun 2022 15:05:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ext4@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net
Date: Wed,  8 Jun 2022 17:04:51 +0200
Message-Id: <20220608150451.1432388-6-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220608150451.1432388-1-hch@lst.de>
References: <20220608150451.1432388-1-hch@lst.de>
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
X-Headers-End: 1nyxFI-009y7A-7h
Subject: [Jfs-discussion] [PATCH 5/5] fs: remove the NULL get_block case in
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
