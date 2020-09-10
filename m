Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEA92655B2
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 01:47:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGWHv-0007Aw-Sd; Thu, 10 Sep 2020 23:47:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kGWHv-0007Ac-5n
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3NRZ9mRuxVTkFoTUITZkJOzyjhC6Qf6X2z+v5c8zFFY=; b=Rl5o64OSjtM7oW5dUXpYAX9eWf
 7qC1+oa59GKS9Kp/QkycZLGqsqWFJ3Ba+7pVFzlNQyA0kvBFQqeW855Fs3CJp2yLZeVUYhdSEoN2D
 T+SpzqXJj1lr+Af0BSg7kq41c4BfRbBGjH6E+iAFmrBWUpvorjqR7Z2JBdSTPEMgwlVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3NRZ9mRuxVTkFoTUITZkJOzyjhC6Qf6X2z+v5c8zFFY=; b=OFAT/61DmVQbWE/wjwwyJmAiZD
 PzLOamx4XZ2+4BkwGNVc5ARXaFZuO2A6UIDSYO+IFpHZLlek09nZ9AQd87wErhaalG1oYaiGBbQ8F
 dB6W9dmGDYh5tIOu4hko9tcKOZS3ZOwasS+/VHZbjOkJdJjno0xtD2o+TF3QI9mY3LY4=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGWHr-002tyw-94
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=3NRZ9mRuxVTkFoTUITZkJOzyjhC6Qf6X2z+v5c8zFFY=; b=U6Eiw1+IKNIsYaYA2AEGILmHrz
 PPcx6lFKYWh+MzdSvdtztkRCnjxTRGpduRr6Lz9fTvzQuCPeekEoWn5dpT6Hx3tzH7SCWN/eGR2T7
 hJLOKSon0vdgI81lB0F47cOLLz5HyCU+ZqSaetOU7rpiBJF29UWS4huKWeYGmJLia30sxDEBKRv2P
 HEnCPWb705zyAUDNdNoOiS8YU6B4tDmlyobyUQP0e7XDIQLCWN4UQ/U1mEkCgJmo3g7/M+FJbLyEf
 LkRpbbEgaqEUeDJZlK4rJe5eFs1zfkSLLUE8JBdljlFbX+q4izqTZ3aoEmt4NIvJtpYF8spSK7fO5
 DaZfVUKw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGWHV-0001RZ-4x; Thu, 10 Sep 2020 23:47:09 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-xfs@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Fri, 11 Sep 2020 00:46:59 +0100
Message-Id: <20200910234707.5504-2-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
In-Reply-To: <20200910234707.5504-1-willy@infradead.org>
References: <20200910234707.5504-1-willy@infradead.org>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kGWHr-002tyw-94
Subject: [Jfs-discussion] [PATCH v2 1/9] iomap: Fix misplaced page flushing
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-nvdimm@lists.01.org, "Darrick J . Wong" <darrick.wong@oracle.com>,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Dave Chinner <dchinner@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

If iomap_unshare_actor() unshares to an inline iomap, the page was
not being flushed.  block_write_end() and __iomap_write_end() already
contain flushes, so adding it to iomap_write_end_inline() seems like
the best place.  That means we can remove it from iomap_write_actor().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
Reviewed-by: Dave Chinner <dchinner@redhat.com>
Reviewed-by: Darrick J. Wong <darrick.wong@oracle.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 fs/iomap/buffered-io.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 897ab9a26a74..d81a9a86c5aa 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -717,6 +717,7 @@ iomap_write_end_inline(struct inode *inode, struct page *page,
 	WARN_ON_ONCE(!PageUptodate(page));
 	BUG_ON(pos + copied > PAGE_SIZE - offset_in_page(iomap->inline_data));
 
+	flush_dcache_page(page);
 	addr = kmap_atomic(page);
 	memcpy(iomap->inline_data + pos, addr + pos, copied);
 	kunmap_atomic(addr);
@@ -810,8 +811,6 @@ iomap_write_actor(struct inode *inode, loff_t pos, loff_t length, void *data,
 
 		copied = iov_iter_copy_from_user_atomic(page, i, offset, bytes);
 
-		flush_dcache_page(page);
-
 		status = iomap_write_end(inode, pos, bytes, copied, page, iomap,
 				srcmap);
 		if (unlikely(status < 0))
-- 
2.28.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
