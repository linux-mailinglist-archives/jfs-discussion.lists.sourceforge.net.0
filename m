Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8794D6404A1
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Dec 2022 11:27:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p13GO-0002D4-II;
	Fri, 02 Dec 2022 10:27:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <BATV+dbb76fff442e09cb8719+7040+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1p13GG-0002CR-9f; Fri, 02 Dec 2022 10:27:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y5m0F6Pyvv6Ear4bOX/of/SNS6Ys875CaEmxQ7Nl5xY=; b=TSXeKckZi3s7Dmc0PAsGtYc4pp
 UW7V2zyx5c6AlvOP5azTSB//Hje81OZgLRYBXC7JTsF12MHhIbfnFVkX+xco6e9o6qizr0VqQorwy
 9P5Xr+h28CTJpw7Tne68rR9vueXturzGibqyyb5+FShv0PhfuyqpFaPMmTH+m1A2re2I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y5m0F6Pyvv6Ear4bOX/of/SNS6Ys875CaEmxQ7Nl5xY=; b=CM7kaOFDW0m4rzIdl20PVeIhyT
 eJ3Am7OsON+owbo2WSMj0msv57aP86P1nhkPkCm3RDIp4tIkxBSuekWL9PUzZJ84M0Kifvejglhff
 osWq8lXV4PsOUpCRvkd2AwHmqCPMLq+BFZ8C/yFYMZlqB2TdHsVZnmay0k6ky61b2IkY=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p13GE-00429C-93; Fri, 02 Dec 2022 10:27:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Y5m0F6Pyvv6Ear4bOX/of/SNS6Ys875CaEmxQ7Nl5xY=; b=Dq2jBfetFtoC66mXgk3+Xi4fJB
 OTRUGmBgVVpn1WO6TuOtU0AvCG7tltCOVBprltqtRo0PhfqAR8CZlF+NoEYBsEW2Tfi23xSxmP4wd
 ZsjsuwuUAXvUD13OJKFPZDIiCzUociRfJ0XicdWQbJmVrYMpYudWbWBMrDTBmv8TSc+s2xzAHENgd
 Wr5Blr873CIIAO+BgZ/IU+xMnGLdir5vOnE2G64KSxlCvzT2SAvcP9MNleg60o6xMcFVr50vr+xOZ
 vsJs5T3nX0hj1/xsaid0ChvYBqR62W97UI9prrX8QkRtZMVWGPJvqqiD1fbD3ClunUd23iQtM9z8S
 mZnZMvXw==;
Received: from [2001:4bb8:192:26e7:bcd3:7e81:e7de:56fd] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1p13Fy-00FQzp-DD; Fri, 02 Dec 2022 10:26:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Jan Kara <jack@suse.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Dave Kleikamp <shaggy@kernel.org>, Bob Copeland <me@bobcopeland.com>
Date: Fri,  2 Dec 2022 11:26:41 +0100
Message-Id: <20221202102644.770505-5-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221202102644.770505-1-hch@lst.de>
References: <20221202102644.770505-1-hch@lst.de>
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
 Content preview:  ->writepage is a very inefficient method to write back data, 
 and only used through write_cache_pages or a a fallback when no
 ->migrate_folio
 method is present. Set ->migrate_folio to the generic buffer_head based helper,
 and stop wiring up ->writepage for hfsplus_aops. 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p13GE-00429C-93
Subject: [Jfs-discussion] [PATCH 4/7] hfsplus: remove ->writepage
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
Cc: jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 Johannes Weiner <hannes@cmpxchg.org>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

->writepage is a very inefficient method to write back data, and only
used through write_cache_pages or a a fallback when no ->migrate_folio
method is present.

Set ->migrate_folio to the generic buffer_head based helper, and stop
wiring up ->writepage for hfsplus_aops.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Johannes Weiner <hannes@cmpxchg.org>
---
 fs/hfsplus/inode.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/hfsplus/inode.c b/fs/hfsplus/inode.c
index aeab83ed1c9c6e..d6572ad2407a7c 100644
--- a/fs/hfsplus/inode.c
+++ b/fs/hfsplus/inode.c
@@ -170,12 +170,12 @@ const struct address_space_operations hfsplus_aops = {
 	.dirty_folio	= block_dirty_folio,
 	.invalidate_folio = block_invalidate_folio,
 	.read_folio	= hfsplus_read_folio,
-	.writepage	= hfsplus_writepage,
 	.write_begin	= hfsplus_write_begin,
 	.write_end	= generic_write_end,
 	.bmap		= hfsplus_bmap,
 	.direct_IO	= hfsplus_direct_IO,
 	.writepages	= hfsplus_writepages,
+	.migrate_folio	= buffer_migrate_folio,
 };
 
 const struct dentry_operations hfsplus_dentry_operations = {
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
