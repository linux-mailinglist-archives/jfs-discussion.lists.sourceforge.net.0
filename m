Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C64706271F5
	for <lists+jfs-discussion@lfdr.de>; Sun, 13 Nov 2022 20:10:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouIMz-0003wc-O0;
	Sun, 13 Nov 2022 19:10:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+5e9d9a7f9455f7bb8c66+7021+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1ouIMx-0003wS-VZ; Sun, 13 Nov 2022 19:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5EEi8cInv3ks31I/nmTl0wJaf2VmtmozgKaSoblZ/nw=; b=BCLBHb0pSAMivc1QjCIPD0Cgk6
 wQl76K/iJmPegHGo5WEgrM3PTzQEN5eO+39gmTXEqioYaJvxthzxlW9IUrJg4YxsQNS2purmS39Vo
 09DQoimnHAgJZwyLwsRLvCuM/2wc0Y4BtxJxgVXon9Ly6WOXxTWeo3ymC7eJi64YyvzQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5EEi8cInv3ks31I/nmTl0wJaf2VmtmozgKaSoblZ/nw=; b=FxgtLP3I9X5+NqvDQIIBUtXzCQ
 mjI3nLKVVmL2dCJiHyl85he/58YmilBGNJ9KSySmHvYf3XCGMZEH47foIlvH9pIbjHFj1D0lhObQA
 lOYUemBQ35BzL1kY6pEPKXPqSB/VhUwA+h6E5EnLj2rba589RD3g3pHqVeI9UCLtrwsU=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouIMw-0001a0-9y; Sun, 13 Nov 2022 19:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5EEi8cInv3ks31I/nmTl0wJaf2VmtmozgKaSoblZ/nw=; b=1SbIPs1iFU+7TJOgzkiJf2RvBs
 2XzmwVKtUH+kZqH7A36H1Wbg+vKnJpDNlb6xKtvuTlKG0eGjPoQQYRvlscMAAocgvR6VMPofTIG2D
 C+y5XrFdah5UyaOY7msF15XC44ocxoaKSrFQ6FttO4KIK9nTS4cuGeLqvpIl9ulpzUdcM4c+JMwjM
 V8FaL9blLKhDvLC8WvpLfuXFxjXC9wudXB9FmyTMvzWE6wkwNl+IkzupEJSkEGn6t5dX2vBO8ZlRk
 HQdfmuqFBmta5GLulUNuImMueBME4ZGS+MBcQ/xhhfaXZ0G/j/xK5VJycJsTzRVisDdUNap2eB7Ql
 vz3UMr+A==;
Received: from 213-225-8-167.nat.highway.a1.net ([213.225.8.167]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ouFrH-00CJqO-HX; Sun, 13 Nov 2022 16:29:24 +0000
From: Christoph Hellwig <hch@lst.de>
To: Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Sun, 13 Nov 2022 17:28:57 +0100
Message-Id: <20221113162902.883850-5-hch@lst.de>
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
 method is present. Set ->migrate_folio to the generic buffer_head based helper,
 and stop wiring up ->writepage for hfs_aops. 
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
X-Headers-End: 1ouIMw-0001a0-9y
Subject: [Jfs-discussion] [PATCH 4/9] hfs: remove ->writepage
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

Set ->migrate_folio to the generic buffer_head based helper, and stop
wiring up ->writepage for hfs_aops.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/hfs/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/hfs/inode.c b/fs/hfs/inode.c
index c4526f16355d5..16466a5e88b44 100644
--- a/fs/hfs/inode.c
+++ b/fs/hfs/inode.c
@@ -173,12 +173,12 @@ const struct address_space_operations hfs_aops = {
 	.dirty_folio	= block_dirty_folio,
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio	= hfs_read_folio,
-	.writepage	= hfs_writepage,
 	.write_begin	= hfs_write_begin,
 	.write_end	= generic_write_end,
 	.bmap		= hfs_bmap,
 	.direct_IO	= hfs_direct_IO,
 	.writepages	= hfs_writepages,
+	.migrate_folio	= buffer_migrate_folio,
 };
 
 /*
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
