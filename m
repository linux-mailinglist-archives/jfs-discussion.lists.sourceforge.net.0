Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6856547F0D
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Jun 2022 07:38:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1o0cm3-0000t7-1d; Mon, 13 Jun 2022 05:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <BATV+6ef1cfbcd5439e194ca7+6868+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1o0clp-0000sM-2A
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yp9JrU6zBzJaajQeIlP0lIblv6A5iD96YhS/6T2BaJk=; b=CJsSStwZJxepX1mNZXmisw3oqH
 c3b0/oAtJWYFdXECPCbk7bD/0DqJaz95r5EW6SYbEX5MVDLZhMugAF79DOCj45R/CpbciUg/PSUQD
 TCqDdUMYnE3pxHIjOIJWY0yGja/i4oPUQcKmZgGvwxmeSjSEh69E3M7dMvHWfEtFrdKg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yp9JrU6zBzJaajQeIlP0lIblv6A5iD96YhS/6T2BaJk=; b=k9Yxi4B1jaR4I0iOO6b3Jt9naF
 ZeW5pd+f8Yd+J8eGhx3lDAfeBMHaGnBNGXJINPH2kS93QfRyRtn2zSZxbQYrZy3L6rEW2NHh4fYlL
 pyE0DxE4wBK3iUkj+B7EhYSB0DQCG3LJcIvYBaeyGBw6HL6Besr+QuONxo9cqahbuNuo=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0clh-00027m-E5
 for jfs-discussion@lists.sourceforge.net; Mon, 13 Jun 2022 05:37:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=yp9JrU6zBzJaajQeIlP0lIblv6A5iD96YhS/6T2BaJk=; b=Y/73mhRjxh+61P5DLuz7lHovuq
 M1/hC+K2lvahuhqkr8BptlKW2A+SI1Y8T3ZNEopswkuOV+Wt+ZlpkKSS3DJtCIm1mFUOnu1BwcFIf
 LdKEB2IQ0KC/Js87SKRnBky++ypliWGmpIXhfO2qF7aF586BTl9Pl98CjUs+VxEn9UvLjrikEnxbL
 AV6uhep3+E8hgHTmCYl9KMNkULkv4vGti7/qF9lD62v6KktovyOpPW3QwoK4SWW8HDVfefoxBXGWB
 MQwh0eUHnpEN8fNeNRN80eLYB1/EjMrE/VL414q54BRa24sjkbaiAqEkqOCmukvBYyA6Urw1CLH/P
 GwBe1V3A==;
Received: from [2001:4bb8:180:36f6:f125:c38b:d3d6:ae6c] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1o0clY-001V5w-1n; Mon, 13 Jun 2022 05:37:32 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>
Date: Mon, 13 Jun 2022 07:37:14 +0200
Message-Id: <20220613053715.2394147-6-hch@lst.de>
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
 Content preview: All callers of mpage_writepage use block_write_full_page as
 their ->writepage implementation when called from mpage_writepages (although
 for ntfs3 this is obsfucated a bit). Just call block_write_full_page directly
 instead of going through the ->writepage indirection. 
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
X-Headers-End: 1o0clh-00027m-E5
Subject: [Jfs-discussion] [PATCH 5/6] fs: don't call ->writepage from
 __mpage_writepage
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

All callers of mpage_writepage use block_write_full_page as their
->writepage implementation when called from mpage_writepages
(although for ntfs3 this is obsfucated a bit).

Just call block_write_full_page directly instead of going through
the ->writepage indirection.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/mpage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/mpage.c b/fs/mpage.c
index 31a97a0acf5f5..a354ef2b4b4eb 100644
--- a/fs/mpage.c
+++ b/fs/mpage.c
@@ -624,7 +624,7 @@ static int __mpage_writepage(struct page *page, struct writeback_control *wbc,
 	/*
 	 * The caller has a ref on the inode, so *mapping is stable
 	 */
-	ret = mapping->a_ops->writepage(page, wbc);
+	ret = block_write_full_page(page, mpd->get_block, wbc);
 	mapping_set_error(mapping, ret);
 out:
 	mpd->bio = bio;
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
