Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 003F864049E
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Dec 2022 11:27:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p13GH-00077F-Tr;
	Fri, 02 Dec 2022 10:27:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+dbb76fff442e09cb8719+7040+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1p13GF-00076o-FV; Fri, 02 Dec 2022 10:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y5ud92nQf37ZqSh+JetkXlw12So9y6VeRppDRV99M7g=; b=Sta8KBa3xIE99NU6klPmK2HGXt
 CaWXVtdMQVUnZ5RkhJjDrTnzBrynWlJTBHXdX+1lMcGH/uMMb2DIEKb9GYN9oAgn3OgWiUjWY5Auu
 2h2qb7ibXIygTky6b8qnCJE//mWo60QJXMgHG5N7XZrtP+RDhTvV343TGMb754BFqKZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y5ud92nQf37ZqSh+JetkXlw12So9y6VeRppDRV99M7g=; b=g
 anOIl3IjqcWYTok2coCLViKdZP1TnK6r/+cb5HGE2GWJMf46Rsqpni85g2MplyUb0ZXVKhC0z1jeN
 MaujVxoy3E4mLF4m2t37VUI0y3zHRmyH3Kw3i9vLmKNFWXNbGe3IZynILv5cNuK7QhSc0EOPHhmyp
 1f+lUP7svZ1O2pOY=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p13GE-00427M-8z; Fri, 02 Dec 2022 10:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=y5ud92nQf37ZqSh+JetkXlw12So9y6VeRppDRV99M7g=; b=4zgnIMqUuuHUVJitlEUYYYmcM3
 kEsixiasYAjMMM5btmQIU+Zpfae0Lkl0d/VgRiT0cVctnlluIqtGna14M5iCcdN3h0Ew0rEik2/4d
 fWLNknQ18SZSE/Ly9TVNlqNGRO7s5sTCSBfJlT7VDUzcKA0Co24ispszFFmX9PbeFYIIvjvYcYeGb
 eXqTyL7EYkd/JrlE2RK/cLP9EYCvJzudmk+wc84VuY/nGJtsLrD/ZASRSmRcHACAq/9RkrB2A6BWX
 5K/UGcRKqwfqzpiJbFmUFmGLlYSyg/Tovfe8z9j/3QLyGCwXe7Ppu+pk6A13jwtUAULbBrtWXHVe1
 1/EZJ7Ow==;
Received: from [2001:4bb8:192:26e7:bcd3:7e81:e7de:56fd] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1p13Fm-00FQvi-FR; Fri, 02 Dec 2022 10:26:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Fri,  2 Dec 2022 11:26:37 +0100
Message-Id: <20221202102644.770505-1-hch@lst.de>
X-Mailer: git-send-email 2.30.2
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
 Content preview:  Hi all, The VM doesn't need or want ->writepage for writeback
 and is fine with just having ->writepages as long as ->migrate_folio is
 implemented.
 This series removes all ->writepage instances that use block_write_full_page
 directly and also have a plain mpage_writepages based ->writepages. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
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
X-Headers-End: 1p13GE-00427M-8z
Subject: [Jfs-discussion] start removing writepage instances v2
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

Hi all,

The VM doesn't need or want ->writepage for writeback and is fine with
just having ->writepages as long as ->migrate_folio is implemented.

This series removes all ->writepage instances that use
block_write_full_page directly and also have a plain mpage_writepages
based ->writepages.

Andrew, can you pick this up through the -mm tree?

Changes since v1:
 - dropped the ext2 and udf patches that Jan merged through
   his tree
 - collected a bunch of ACKs

Diffstat:
 exfat/inode.c   |    9 ++-------
 fat/inode.c     |    9 ++-------
 hfs/inode.c     |    2 +-
 hfsplus/inode.c |    2 +-
 hpfs/file.c     |    9 ++-------
 jfs/inode.c     |    7 +------
 omfs/file.c     |    7 +------
 7 files changed, 10 insertions(+), 35 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
