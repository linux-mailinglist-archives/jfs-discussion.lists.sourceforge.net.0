Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A97EB717F11
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:52:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KMr-0004qq-MA;
	Wed, 31 May 2023 11:51:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KMq-0004qj-7M for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sNH7pVmdygoeCZgHZmSqANM+8vLZ64wXe5n0PirP0kQ=; b=hqVxYPMlsYmZH/zN7frQYWHeoi
 i+8qOo0feWShRKn0VWs/4WkN8KtBO7E9KYWgdlyr5tI2UeCedi8UHYsR7Z05qZWx97bNCZtaAl6QJ
 xm4vQbS6v2fE/XzlcOTOMBsb0ooLNj48+WQn4T6lnzI+r2Cc1GLhRm1PHGrEYYxVmDg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sNH7pVmdygoeCZgHZmSqANM+8vLZ64wXe5n0PirP0kQ=; b=md+3E2SIRFmTQju+IXiBEash8W
 QXa0a3O9M0XKXK+BsFmrpe9tXlZ3WDvzT8xfh/XJsXqtMZjmYNSTu5NOyX68fXFKttQFLjFqq2KM1
 DUaQCz6U/4A75EJKUKAWZM+j0Wp+kwbzEfkcNl0EiUREwWLhrczb2A1JAh8XckA2/2gY=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KMn-0007Rb-DE for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533909; x=1717069909;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eNep3j+omtdw7VUEVyvSEuMvQR4DwZ3logtHWgIlxjI=;
 b=M131xzwqylep4etMGMmJe/Hq1Aa/ycLlgygK0D+UAPakdFdLUIZGSlDA
 xs6kLlCtErXoSsYKbmxGQWE7tEcUQB2omZFQjEsNtnXjfdgLcvor6RzDX
 i9V8XZAAJnX5Vup1eMxyz5kNIQ3NYpbDWsIUkD4n/HFKleHiO/g8jtUCV
 FMytGozwY+WcdfBVyPKE1+dthngZ/+YiEynbG/uB6SMD6zDdF4k/fiVCI
 qYb5vdiSX3cS0ZII6sWRq2qjwnlST8meFakBS8ao9q+cD+srzNEvMCtbx
 w07Ap1Q3kEzNE5J/T2FjKEf9fNUdBJLikpNyyeOIrRtJpvnC6LRaTUB9q Q==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="232065001"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:51:43 +0800
IronPort-SDR: 3n4s/oiDQsXRpKyvacm9uIZkLJEnHZL5pNiPKoh6c4la29BG0thX+JY10VTEVpthZkvfCNzavj
 1ur+WkF3C6HSGWFzBy7xxx7vNy0tJSorz9+kZVkPQQk9FU4TU/X6ijfx02PATH+SID55FbM68+
 RNpgT8M44nU54PyKoNgJsyVmxfZmrBDL8UkupZAah/64sn0v3jCZqz5blI3dJxrLz9/1glj5iz
 M6m1AMvSSuUdyEsdKMOnVpk2n6QSMtCpvcDoei2g0JFl5hvXqlpoPSH2bE5/PKg0xHHdkwesae
 VZM=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 04:00:54 -0700
IronPort-SDR: FCL2eubAZP5N9vA9HDK+m1l82gIsrfnKwR7xl5QF91RBemiBMgqeza4/jZiezHWUmx+A2BPvbg
 diAJW3D6qzTTjWDhUmm4+CPI/5Pg7yzgXHh3HJFIrkz3I6/YCxvrl5dZGpioD3FIrHJ11rp7ht
 I6HmAKaEKAajDqnW187jX1JXP1SwiHNqHZle9nVdQDpjjStKHttQk7X5nq4km22hnGrB8FLHbJ
 5GGj+z1T+oiCsX5btGRw34bpXv3+vXL9f6GlctCmHk5dzGi6sYWMqAROn6Jr2ed+EqoN495klc
 Cyk=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:51:41 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:50:40 -0700
Message-Id: <7ae4a902e08fe2e90c012ee07aeb35d4aae28373.1685532726.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now that all users of bio_add_page check for the return value,
 mark bio_add_page as __must_check. Reviewed-by: Damien Le Moal
 <damien.lemoal@opensource.wdc.com>
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> ---
 include/linux/bio.h
 | 3 ++- 1 file changed, 2 insertions(+), 1 deletio [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4KMn-0007Rb-DE
Subject: [Jfs-discussion] [PATCH v7 17/20] block: mark bio_add_page as
 __must_check
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, gouha7@uniontech.com,
 linux-block@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-mm@kvack.org, Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Now that all users of bio_add_page check for the return value, mark
bio_add_page as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index b3e7529ff55e..ea2d937d3cba 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -465,7 +465,8 @@ extern void bio_uninit(struct bio *);
 void bio_reset(struct bio *bio, struct block_device *bdev, blk_opf_t opf);
 void bio_chain(struct bio *, struct bio *);
 
-int bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
+int __must_check bio_add_page(struct bio *bio, struct page *page, unsigned len,
+			      unsigned off);
 bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
