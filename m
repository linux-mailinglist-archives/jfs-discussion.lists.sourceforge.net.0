Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC5B8463AC
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Feb 2024 23:46:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rVfpA-0001SW-1l;
	Thu, 01 Feb 2024 22:46:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rVfp7-0001Ry-Bl
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uY3jkLhiexqL48YQijgmCwLqm6c2z6t+bClzCpkyU7w=; b=d1CifVsgT2H67dxzjZ2EKkFj7U
 ODweGUFbJkaLbcSKyPJH/vbWYlvZMshsF3i2SgmjlRX/L5tnBTkSvRijrn5/MRm/GcRKZJ/jpUcmM
 ZLudOsP50ikomjkss0yAE8ZGWU7JiHUr3gu1auKegfN+p8/7OQz/KVshWQwvwF3oJFjM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uY3jkLhiexqL48YQijgmCwLqm6c2z6t+bClzCpkyU7w=; b=d
 hfUDmOD+nkDcKeZV3+6c7AtrApNki7d2RA/Zy+teGNR+N1y1lt3dyHSRGjq9t6nhbqOTIL0uyIlrN
 nTP/Dk/i708gLUAE8DybqvPl+chfDWEalNA6Rv0hkpINWVWTAgdAP7nuZhCru0rcy2OszWVe/o4Z2
 rvWB484HTgnU86kw=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rVfp0-0001Q0-C3 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Feb 2024 22:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=uY3jkLhiexqL48YQijgmCwLqm6c2z6t+bClzCpkyU7w=; b=rQ2iWEln8n9Ge2PpI2MGKpDmwJ
 m/DaYU9WGf/I51onKklH4m2c45fiUau1/e0myVrOr7GDa0DJ1bwB7RdOiUb5vfiHDS6WZG8cm1J+5
 k//vsahdLH9ZYY7rtRAqTirr1krwDRNGOSOihisU1QdX6XqxoqPC7I9JSZSqynkyzAzGVfItccFO0
 9BtW1iLhEiVmNsg8xRPSUOa2nH09XhyD/mzbdUktI7Iujx0sVNey6RaL3kTZ+0T3rw/6Tmq2pfpZZ
 F3ck80KwQT8btBxb0ITHF01YFE5a/EmY2nE+EG9ly7qrjfUbHpU/2QoedyhRzj5XLlsFtzzDBjL+C
 k/Qy4wYw==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rVfos-0000000H17v-41vt;
 Thu, 01 Feb 2024 22:46:07 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Thu,  1 Feb 2024 22:45:49 +0000
Message-ID: <20240201224605.4055895-1-willy@infradead.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This patchset removes uses of struct page from the I/O paths
 of JFS. write_begin and write_end are still passed a struct page, but they
 convert to a folio as their first thing. The logmgr still uses a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rVfp0-0001Q0-C3
Subject: [Jfs-discussion] [PATCH 00/13] JFS folio conversion
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This patchset removes uses of struct page from the I/O paths of JFS.
write_begin and write_end are still passed a struct page, but they convert
to a folio as their first thing.  The logmgr still uses a struct page,
but I think that's one we actually don't want to convert since it's
never inserted into the page cache.

I've included the removal of i_blocks_per_page() in this series as JFS
is the last user.

Tested with xfstests; some failures observed, but they don't seem to be
related to these patches.  I haven't tried with PAGE_SIZE > 4kB, so the
MPS_PER_PAGE > 1 paths are untested.

Matthew Wilcox (Oracle) (13):
  jfs: Convert metapage_read_folio to use folio APIs
  jfs: Convert metapage_writepage to metapage_write_folio
  jfs: Convert __get_metapage to use a folio
  jfs: Convert insert_metapage() to take a folio
  jfs; Convert release_metapage to use a folio
  jfs: Convert drop_metapage and remove_metapage to take a folio
  jfs: Convert dec_io to take a folio
  jfs; Convert __invalidate_metapages to use a folio
  jfs: Convert page_to_mp to folio_to_mp
  jfs: Convert inc_io and mp_anchor to take a folio
  jfs: Convert force_metapage to use a folio
  jfs: Change metapage->page to metapage->folio
  fs: Remove i_blocks_per_page

 fs/jfs/jfs_logmgr.c     |   2 +-
 fs/jfs/jfs_metapage.c   | 298 ++++++++++++++++++++--------------------
 fs/jfs/jfs_metapage.h   |  16 +--
 include/linux/pagemap.h |   6 -
 4 files changed, 155 insertions(+), 167 deletions(-)

-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
