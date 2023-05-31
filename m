Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BAF717E71
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:39:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KAa-0006tR-L1;
	Wed, 31 May 2023 11:39:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KAX-0006tF-Bq for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XqmW/pWhr1cgDEAd3F/aGuYlTwkOFNTZjCl2H81a0pc=; b=YHjm6Sx0U0zjVw+iUG49w2ijqt
 HN6OtuV6/iz5YPnXrtS4+csnmck4NlTpOi9XNb6UsRNCkFTtuEoq7KjEJ/kPAWgnLi+Zk/VsyJQlm
 1ibFe66zWHyTWKv5lm+JbRIUZ7fZb71SoQ3b209ZUN7bjoIhl72zXXF7jGHe4OAKG+fM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XqmW/pWhr1cgDEAd3F/aGuYlTwkOFNTZjCl2H81a0pc=; b=fiZKf/bGvr7mwChYsb46hywWcc
 G2KzXmB0BqLzLjzcdEz1KWIoXx7pOwCP6K0eT3NMsc7VdHA7XWzNzN1yR0sWRwQgq7lNaoB0NXcYf
 gYWpU6T83osQMAh8K46hOfvNHZiiOdQsgWWfTfBIZsi0Bs45rOe4CnE4argvU+bWYbu4=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KAW-007PkV-Fe for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533149; x=1717069149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wr+M2zDQXb1A/M8JUY7t1USwG0IIo/LDQXKOrkxoR08=;
 b=gQyIAPviEKNaDhmXA6xu8Nl5r3ua+jhqichULDIz9JAmRdCfPi5CWtFh
 p7M72cajKCXzrIAtG6v34Jfn9UleIYVb6QjxxGaO1EQ0WZThsZyB9i5hY
 6JBzRV9NC6A9260gqN7cFBqBQbEAJuXTimQ+Qpx5uXTgEKdG9k38vIFoS
 kF++1Pfka5EKsTVJn/WBsBDp83akusKF/yi6BlXm2ADAKQlP4iDCMHOTI
 Sh0LrRXF6LsJUXC6Zh1l3nchpsp0+XNmpVEDVksVTElgr/ljjaBfecofE
 q/mhOCO3mhyIdUD/j2G8XpZwgRPbzZGYzrJJPCbCRM+BcpX2wnW5yD0uG A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="231984531"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:39:04 +0800
IronPort-SDR: e+2UELR6UDtU40GdfajAYZSnST9YgJKd1DYsQdoY+HQuA/v2Rdo2O7k5S18Qipghkl48NxHClh
 6ogc+HwH81rezfRXS3YCRJreoIJs2/RzVvt0GIKMQYwCT3+nW4yRhpaVYF2Joxr7/AijAPh4fW
 XAQc/TGavbXaEKtJFyGLmUy8AV0Qhy9iQUXkK39pZ2Kelzo/jyWHcMpVfugVV7dNQcgbJHb1Dl
 Wut/A0yp0SXaA9QF0FIWlcJdecQnWNhw+eOSXPf11huXeBfkdnPJnURhlZQ5ibKrxgWJQwNHPV
 avo=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:53:55 -0700
IronPort-SDR: VJ08qUvBBlm2uu9hs/cZuyamvbvzMbT3A3EHWmIRgbc+cJHBrAIYMTdlEWrKhyoITK08FhTkyQ
 l+iw050glHjEt2egUvw3bNuMSsPCNurUyjLrjBgEWsu+M6I+o9MK1gWM8ilhkO5AvnSeE3xR72
 xFoYuRpaKdWSngwzTEoeeTBGfU2C9PVmbG/EA1GYXlSvIw8fo4g1tgqEU2Pl/u9NhKGabl04AM
 c8/JZSOIv+RYUb8wzoM9BYqu5e+KHgwvBnkDL5H+YNbNM1/fbNxj7oHPYXhOpaD+L4rKX6AA1n
 VeY=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:38:59 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:38:00 -0700
Message-Id: <5a142a7663a4beb2966d82f25708a9f22316117c.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Just like for bio_add_pages() add a no-fail variant for
 bio_add_folio().
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> --- block/bio.c
 | 8 ++++++++ include/linux/bio.h | 1 + 2 files changed, 9 insertions(+) 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4KAW-007PkV-Fe
Subject: [Jfs-discussion] [PATCH v6 18/20] block: add __bio_add_folio
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
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, gouha7@uniontech.com,
 Christoph Hellwig <hch@lst.de>, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Just like for bio_add_pages() add a no-fail variant for bio_add_folio().

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 block/bio.c         | 8 ++++++++
 include/linux/bio.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/block/bio.c b/block/bio.c
index 043944fd46eb..350c653d4a57 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -1138,6 +1138,14 @@ int bio_add_page(struct bio *bio, struct page *page,
 }
 EXPORT_SYMBOL(bio_add_page);
 
+void __bio_add_folio(struct bio *bio, struct folio *folio, size_t len,
+		     size_t off)
+{
+	WARN_ON_ONCE(len > UINT_MAX);
+	WARN_ON_ONCE(off > UINT_MAX);
+	__bio_add_page(bio, &folio->page, len, off);
+}
+
 /**
  * bio_add_folio - Attempt to add part of a folio to a bio.
  * @bio: BIO to add to.
diff --git a/include/linux/bio.h b/include/linux/bio.h
index 5d5b081ee062..4232a17e6b10 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -473,6 +473,7 @@ int bio_add_zone_append_page(struct bio *bio, struct page *page,
 			     unsigned int len, unsigned int offset);
 void __bio_add_page(struct bio *bio, struct page *page,
 		unsigned int len, unsigned int off);
+void __bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter);
 void bio_iov_bvec_set(struct bio *bio, struct iov_iter *iter);
 void __bio_release_pages(struct bio *bio, bool mark_dirty);
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
