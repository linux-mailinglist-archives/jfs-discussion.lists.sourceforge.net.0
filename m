Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE56D2655B9
	for <lists+jfs-discussion@lfdr.de>; Fri, 11 Sep 2020 01:48:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kGWI9-0006Ir-Qu; Thu, 10 Sep 2020 23:47:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1kGWHv-0006HI-6S
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gATiEIJ5yym8gDZW7pIpWvARxJPI7Am+GdMp2jh+5MM=; b=bflgUYO0A/KNZWymMaKUIta4Tx
 494WFESL5Tm4tNVSiDc9E6jcCnHQZ7yCvuwl8Ag5kuFprm0XJeBaaD/NKbdKcU4r9Nk8dktyTP67b
 o6Ek1MiPGMTGBcpwb57qSq+zLmBVDVvEkB8ddlAqCy52d58NBm9PKypGxpFPMO3z7Rog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=gATiEIJ5yym8gDZW7pIpWvARxJPI7Am+GdMp2jh+5MM=; b=a
 rzwS5KNC+rlNRm1S6EG9hf8T/DQeZjq+9N+mMaBGHpsh9yFVnnsNxRJCg4PWDortNfZoY3t4NuB9Z
 B231XEvOze84NrffB+/jUpchKARehcMZO3+UWuPzGHXWUqI5O9SqNikppuKWXrD6DlXBG2AbqE7UJ
 9P14XBau6w6qIblI=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kGWHp-0037H8-Hg
 for jfs-discussion@lists.sourceforge.net; Thu, 10 Sep 2020 23:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=gATiEIJ5yym8gDZW7pIpWvARxJPI7Am+GdMp2jh+5MM=; b=NU+A3j4UiyhwWUqTbemQKJ7NoT
 bJbdq0iulAfED6zqYzsugnRZeP4UFzoCZXBTUxe3UU0nxN1pxpDgbXamafmx7vgty1r6sztkFceoc
 uhCtLXWHHlRk8UEarcpLejYVsKtGgEDyGzsi1+3zAjHhmygjlNrGDioIz9zRv1FhKFM6KhSKpk31W
 9giPinWY+QjDf/q+iQqddSd89v8Xi9iu/rSoc6Qc49vUBRfO7hQxKyAA3RwyRbQ3MzGLfQgWh0J7X
 BFCVnyNyY/g0MCXWFxTQJUOtq/pm5rcIOT9stXwsB8VLtzKhCFJprAB/2wZXJI9/bYGDR9edkQMRp
 lHM6Bawg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1kGWHU-0001RW-R5; Thu, 10 Sep 2020 23:47:08 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: linux-xfs@vger.kernel.org,
	linux-fsdevel@vger.kernel.org
Date: Fri, 11 Sep 2020 00:46:58 +0100
Message-Id: <20200910234707.5504-1-willy@infradead.org>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kGWHp-0037H8-Hg
Subject: [Jfs-discussion] [PATCH v2 0/9] THP iomap patches for 5.10
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
 Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

These patches are carefully plucked from the THP series.  I would like
them to hit 5.10 to make the THP patchset merge easier.  Some of these
are just generic improvements that make sense on their own terms, but
the overall intent is to support THPs in iomap.

v2:
 - Move the call to flush_dcache_page (Christoph)
 - Clarify comments (Darrick)
 - Rename read_count to read_bytes_pending (Christoph)
 - Rename write_count to write_bytes_pending (Christoph)
 - Restructure iomap_readpage_actor() (Christoph)
 - Change return type of the zeroing functions from loff_t to s64

Matthew Wilcox (Oracle) (9):
  iomap: Fix misplaced page flushing
  fs: Introduce i_blocks_per_page
  iomap: Use kzalloc to allocate iomap_page
  iomap: Use bitmap ops to set uptodate bits
  iomap: Support arbitrarily many blocks per page
  iomap: Convert read_count to read_bytes_pending
  iomap: Convert write_count to write_bytes_pending
  iomap: Convert iomap_write_end types
  iomap: Change calling convention for zeroing

 fs/dax.c                |  13 ++-
 fs/iomap/buffered-io.c  | 173 +++++++++++++++++-----------------------
 fs/jfs/jfs_metapage.c   |   2 +-
 fs/xfs/xfs_aops.c       |   2 +-
 include/linux/dax.h     |   3 +-
 include/linux/pagemap.h |  16 ++++
 6 files changed, 96 insertions(+), 113 deletions(-)

-- 
2.28.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
