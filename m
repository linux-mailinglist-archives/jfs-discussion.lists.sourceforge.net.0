Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC85B015A0
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Jul 2025 10:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SWBGMZOTLwzHxrlmQenS6/GyI1uKX7oQ2xhHY1gKqwo=; b=cNH2tqnFzoqFfeagUG9J/SCO60
	s778/6X3cbTq2afs3/8sLhFHpSoGC0d/1dBqNHdyDoaRD30dNWOUoSSbHY3P5kqGg8qPSuPgDGZW6
	6ktnToU24/KdkScpfnLqJDUrX51Mixtiw0f1HhR0MgehZX9X+bRg6FEMif9qyUYZ1c9c=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ua8s6-0003Q2-Gc;
	Fri, 11 Jul 2025 08:12:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+ed71352b9bc4c4c95692+7992+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ua8s5-0003Pt-GF for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 08:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9CS94hPZvpZLiiQ/WqJuGH5NCajA9Grfb7MRFbzw+CA=; b=evm5OY3wotT3fjgwQ1F529dFYN
 0t7IUrzBDNDDn7wh2tpD11KKzfSeJiHqoqQ3/VoVkeLWkUYbV0c1qJHITobxeNkxExbbZ/JeRDbcC
 jBzXQXaKSJeW0XncOBpPCqwHQpxKAg5m60szUTBsmMTqjHOzhOU1pwcbFS/g2WDIHcqg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9CS94hPZvpZLiiQ/WqJuGH5NCajA9Grfb7MRFbzw+CA=; b=e
 pSAzrAYMyLaY3sOqlGU0SAKTD97/UQaThILj7Bz8DwScvXSYh+Sa027My2UK1PcKnWRzhkfuotBQw
 TZusTOcWjdoqxi7bdU6f1iMjvAcuNHdfaRH9w9c1ibg2rjiZkgH0B43kYCnZDyjAVdN85j2U+t7Ul
 uYXEGsDHp8tPN4PI=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ua8s4-00047k-Qo for jfs-discussion@lists.sourceforge.net;
 Fri, 11 Jul 2025 08:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=9CS94hPZvpZLiiQ/WqJuGH5NCajA9Grfb7MRFbzw+CA=; b=M0W4GiHl+I5Qzj1y+CBJW0pIAh
 3EP2U9CPwDPrE3lkmeDv31J8bgaTcE/2LBz8kL7UOrZ1S4+m2dAl8F6jVxidn6CAVxrI3ZuALLiut
 JzJhmjk8/DAFds4/yzfKtnxUqAdeJAgLEDsHvWxIkW81NJkPHvc1JkubyLJJ/Gkqb4sF8k3uvk4wN
 0rcKwcXq8TkeSqAI3OJ1178GJHyvsby4E2Ko2fccfS7wsleocAIQA+V5PwWedkP+UGpvG2OEVk5bv
 gSpQXfQ9I6rS+675qWZ1d+05c/kYtpuhqc9JYrQBlddxbwMwtZUhfRmwBuxgtox0lSws4gFDBcRcM
 adM5/8sQ==;
Received: from
 2a02-8389-2341-5b80-d601-7564-c2e0-491c.cable.dynamic.v6.surfer.at
 ([2a02:8389:2341:5b80:d601:7564:c2e0:491c] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1ua8ry-0000000E5ug-3vXC; Fri, 11 Jul 2025 08:12:35 +0000
To: shaggy@kernel.org
Date: Fri, 11 Jul 2025 10:12:32 +0200
Message-ID: <20250711081232.564776-1-hch@lst.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Stop using the obsolete write_cache_pages and use
 writeback_iter
 directly. Signed-off-by: Christoph Hellwig <hch@lst.de> ---
 fs/jfs/jfs_metapage.c
 | 8 +++++--- 1 file changed, 5 insertions(+), 3 deletions(-) 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
X-Headers-End: 1ua8s4-00047k-Qo
Subject: [Jfs-discussion] [PATCH] jfs: stop using write_cache_pages
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
From: Christoph Hellwig via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Christoph Hellwig <hch@lst.de>
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Stop using the obsolete write_cache_pages and use writeback_iter directly.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/jfs/jfs_metapage.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 9029cd216912..b98cf3bb6c1f 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -421,7 +421,7 @@ static void metapage_write_end_io(struct bio *bio)
 }
 
 static int metapage_write_folio(struct folio *folio,
-		struct writeback_control *wbc, void *unused)
+		struct writeback_control *wbc)
 {
 	struct bio *bio = NULL;
 	int block_offset;	/* block offset of mp within page */
@@ -550,10 +550,12 @@ static int metapage_writepages(struct address_space *mapping,
 		struct writeback_control *wbc)
 {
 	struct blk_plug plug;
+	struct folio *folio = NULL;
 	int err;
 
 	blk_start_plug(&plug);
-	err = write_cache_pages(mapping, wbc, metapage_write_folio, NULL);
+	while ((folio = writeback_iter(mapping, wbc, folio, &err)))
+		err = metapage_write_folio(folio, wbc);
 	blk_finish_plug(&plug);
 
 	return err;
@@ -813,7 +815,7 @@ static int metapage_write_one(struct folio *folio)
 
 	if (folio_clear_dirty_for_io(folio)) {
 		folio_get(folio);
-		ret = metapage_write_folio(folio, &wbc, NULL);
+		ret = metapage_write_folio(folio, &wbc);
 		if (ret == 0)
 			folio_wait_writeback(folio);
 		folio_put(folio);
-- 
2.47.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
