Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E73878A8A96
	for <lists+jfs-discussion@lfdr.de>; Wed, 17 Apr 2024 19:57:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rx9Wz-0003NO-D9;
	Wed, 17 Apr 2024 17:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rx9Wy-0003NA-E9
 for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=368AqJWBal9TUQCrUQFqs/NdTKLLVAvptgY7mzFVvjc=; b=J8y1gKUd7p0nVwXgD1GlRuwh5z
 ULpp+UJU60+OovFkE5YqkyHOoLPxQMaNIKD6epMl96JJs/2pcdcFP6HCFHLIxcphVAK9eCik4VOw1
 5stmu3F6R4blsnoiV7pryeiy5NaosCUZoMfveakEw7PGiq8IC1j4ab4mQ/oBcvy1qg5o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=368AqJWBal9TUQCrUQFqs/NdTKLLVAvptgY7mzFVvjc=; b=l
 PuAwB1VR8b5SM9MBMIP9Z8TFQEWU4qMPXLnWm5Zf6yUBBghRJBB5sCFnpWJfLQf0Q46pHqFcESBnF
 qVseD8QqqUp+RWm6Vf8tww4Hj+uf7WFip6WrcP6T0gs1Q15rBA+wXnDgAXJLMAQ1SgQd33Ed4vXlZ
 Z9sP+b2s8Jd7PVwA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rx9Wy-0000lK-Bf for jfs-discussion@lists.sourceforge.net;
 Wed, 17 Apr 2024 17:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=368AqJWBal9TUQCrUQFqs/NdTKLLVAvptgY7mzFVvjc=; b=qIO3xfIyPpkuK2l2RyiBv21xIs
 tvZlS98dv77eWMXSrElKvZCuecb9jw6gUbCU70TOTH7+J+90Y8HRJre2Lr1GUsngTJGQDRv250U+6
 uo4CVS11Av2kdpz1zFiOaIzv5QgPT1eK4DsaUF01rFRkzh83OsKnUsKSOf5zZeG517u8IBlg10WmW
 wqcfygtVoKs2qVJ+iqpxYqNanPBwCVDT2u8aZG215fsUnn7Y+v0tlzlLU81YGW+MgX1cZjPxq3BZu
 13qp//0Y2Z4t/HJiGo+Wkq7vF0bNG65eryB5k5P7HY1btn4ok9yDnjP2R4iqHynsntm+iZJgAcNKF
 u+XUY7iQ==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rx9Wm-00000003Qsf-3GW3;
 Wed, 17 Apr 2024 17:57:00 +0000
From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed, 17 Apr 2024 18:56:44 +0100
Message-ID: <20240417175659.818299-1-willy@infradead.org>
X-Mailer: git-send-email 2.44.0
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
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [90.155.50.34 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1rx9Wy-0000lK-Bf
Subject: [Jfs-discussion] [PATCH v2 00/13] JFS folio conversion
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

v2:
 - Fix build errors on machines with PAGE_SIZE > 4096

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
  jfs: Convert inc_io to take a folio
  jfs: Convert force_metapage to use a folio
  jfs: Change metapage->page to metapage->folio
  fs: Remove i_blocks_per_page

 fs/jfs/jfs_logmgr.c     |   2 +-
 fs/jfs/jfs_metapage.c   | 299 ++++++++++++++++++++--------------------
 fs/jfs/jfs_metapage.h   |  16 +--
 include/linux/pagemap.h |   6 -
 4 files changed, 156 insertions(+), 167 deletions(-)

-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
