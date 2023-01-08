Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 634F566171E
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Jan 2023 17:57:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pEYz3-0003QI-Gj;
	Sun, 08 Jan 2023 16:57:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+58c3238fb6e66237551a+7077+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1pEYz1-0003Q2-VY for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n6RpjOdLAh3obh1YrtVlLsrD/ixSNbLSLNkGemSOvQw=; b=HKyE2QN8/PoE7RHz4Cowt8KdPt
 nJLhFUj8E5f0AF96CHqGNUhLmkKsqJVXXoRUvk43pRdG+DHkDew8PFnhFe50gH2j+WUV516ELWn0K
 FIw3Xupj2sYG967r5dSyLtQ1LugP6AhyCZVQMcOqLnGTRsd8lrw1a1cBO+GGRGV77KmU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=n6RpjOdLAh3obh1YrtVlLsrD/ixSNbLSLNkGemSOvQw=; b=V
 8wgtCAzH06tfSolrWkaLT1YADtHRlhu6YeGQZWiMhjBrGtOeIf7V0AhOAEHaxS1eD/ZCaTbnIwOpe
 77Cvv2unQRISweEZiRbHMqdY9cKxIrAei8JYoj6lEZ435efSMlK/NjIwH9+vIdmBHUI2jh9Oi7gkC
 brwgH+QaYTN7SN58=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pEYyy-00AOMh-Dd for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Jan 2023 16:57:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=n6RpjOdLAh3obh1YrtVlLsrD/ixSNbLSLNkGemSOvQw=; b=Tplevrq0ZXmD/12xpMEYpMkDac
 PbPaoxYOWR4aUh46qukYYZiFJY5/zifkTJnuWRA4Mi8AcmWcLyOYRWr8gqJ4u05mryKVzansHNKxM
 obMID6UuA/yndMNoIlVywMjiEU5hkA3R2ZeFhqCfQ4fxJrp1Nrwey5MC17pZ2F3DSa5M+m4iUoH3M
 1lMnjRF0s5/FNZaJaBUmaL9a8vzGE56rcAmXPIJyAd0+z+MpttizMi7V6AYhVwxj1atl+9lARZwK8
 BlPSlWPN6ZYEWSrsFA6Hxc7vYrW3HrPbdOrGd7h3KzkdK3isaTmzoLOSxULnZXjxe5vN4BUcjhpwj
 mAGkrozg==;
Received: from [2001:4bb8:198:a591:1c7c:bf66:af15:b282] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pEYyV-00ERqE-Hb; Sun, 08 Jan 2023 16:56:48 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Evgeniy Dushistov <dushistov@mail.ru>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
Date: Sun,  8 Jan 2023 17:56:38 +0100
Message-Id: <20230108165645.381077-1-hch@lst.de>
X-Mailer: git-send-email 2.35.1
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
 Content preview:  Hi all, this series removes the write_one_page API, and it's
 folioized implementation as folio_write_one. These helpers internally call
 ->writepage which we are gradually removing from the kernel. For most callers
 there are better APIs to use, and this cleans them up. The big questionmark
 is jfs, where the metapage abstraction uses the pagecache in a bit of an
 odd way, and which would probably [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1pEYyy-00AOMh-Dd
Subject: [Jfs-discussion] remove write_one_page / folio_write_one
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
 jfs-discussion@lists.sourceforge.net, ocfs2-devel@oss.oracle.com,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi all,

this series removes the write_one_page API, and it's folioized
implementation as folio_write_one.  These helpers internally call
->writepage which we are gradually removing from the kernel.

For most callers there are better APIs to use, and this cleans them up.
The big questionmark is jfs, where the metapage abstraction uses the
pagecache in a bit of an odd way, and which would probably benefit from
not using the page cache at all like the XFS buffer cache, but given
that jfs has been in minimum maintaince mode for a long time that might
not be worth it.  So for now it just moves the implementation of
write_one_page into jfs instead.

Diffstat:
 fs/btrfs/volumes.c      |   50 ++++++++++++++++++++++++------------------------
 fs/jfs/jfs_metapage.c   |   39 ++++++++++++++++++++++++++++++++-----
 fs/minix/dir.c          |   30 +++++++++++++++++++---------
 fs/ocfs2/refcounttree.c |    9 ++++----
 fs/sysv/dir.c           |   29 ++++++++++++++++++---------
 fs/ufs/dir.c            |   29 ++++++++++++++++++---------
 include/linux/pagemap.h |    6 -----
 mm/page-writeback.c     |   40 --------------------------------------
 8 files changed, 122 insertions(+), 110 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
