Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B0C717E6E
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:39:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KAZ-0004Z1-4i;
	Wed, 31 May 2023 11:39:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KAX-0004Yv-Vr for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zkowtZ415fCQeJRiHjflZgyo08gZkymF9cFFxhT07Cs=; b=IfFQ8hE3naOFrHqKH1wFlpTS24
 FHK7Eb6eAAUbFRtNJ4QFj+MNsAlA9i4xfMtR+jWStSvDKNxWT5PUPHypo+ojcLArNv5lzBw2oxbPx
 th3ZUy/6YDDhiXeCtpLmrPAbkGOSv6JA9a3VV3DBjEjPsOlVETDuRNtqt2kMaX9P/GKQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zkowtZ415fCQeJRiHjflZgyo08gZkymF9cFFxhT07Cs=; b=I3MliJxqVvJfSA7kDdFXi2HYqq
 N2pIz8rVX8NR4vJrWLtMeGPhDwV/1MbH5G1nJTzM/DLJrWGZ7fEPKuFJmlgfd3NtYscAcvMLxMMIb
 R8OiP/i66fLDn6C8CFSJ7i1Flc8fFd45BTt/rfSEEdJFKBDdjLWV5oSoEmoPIc4o/ygc=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KAX-0006ui-Sm for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533149; x=1717069149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eyPQiHOzD3W2DQRKwVAI2Cbe6Umke2Yu0VLdprV7VgA=;
 b=WlGgD9PpWn5Hpy5IkaET63wxg3zrfRH5WPNFOaN0SCQbSrUVHJn3bjEB
 uHOFi4xS7net6z2fTOqq5DYJia/I/VTphNmaFtq2oQToxfuu9aQwLgKAr
 kijyznwttvd9hd7DJIno9q1Z6peZiR6NbAsP/8hTF9O6EQfjrv8IYVX3+
 CZ0ut7Nw/ZyCDS2BCqitwacQD2Fhkyci2qfkMnYgBbgUWU95HCFCeMHe+
 N7sOvqsZNvzWy3I6BDkmyeHLSIF51DQDSmpyunu2MREaN5gFFseinyHUR
 3Y3Eor+zKFi58YJ+oiTxSL+Z/bbm8XVOU8s2GOmNRgO9awRBRxDqVGjDN Q==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="237001375"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:39:08 +0800
IronPort-SDR: Pr/8KWzYEz/HHnTg1d70CI7K+0LvhrLrjEkIYmp7DzteScFC0SxXvB60WNdZFRYgq4KN5tqjJz
 mJbwhKbMqXfdCzFHtdCCE2C6ZltGgafNhZAtBGb5XNanPk86v1brIJLf5UlKlTzJ13E9nyWZJX
 UGHAqIZDAcKJjhEmHACOapDXXd0GfwULgJj2zpequhOx9pUJbWMKcrKoCzahQwk6lcLS3IItys
 CDyspvOTOrcvrBSnmbud2qbZupE3US2LETy6xOkObqHz32sFRq9ELdvWZw1Fjaq8Oo5I9pEgiS
 ML8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:48:20 -0700
IronPort-SDR: 8+Hdbq9JLo3j5INsLQlm6RtixEL95tqPyWSgg+3x81yQ5YpWjxlpDvvFf8C2gDpDL46OYeHMF7
 m502e3zSOaUbGvCXIe7yKR9yL0BHb3HBowtYM+/iT7iBMmtUUi7PSQ4hTrJAnGBjLnu1CVA5te
 bypZvx72taZMiH6TrSz8fb5NFkjFwSjOlPGNDGHmkMdbexVoR2mJv4XBGnJ7ALe50hf08OiFnB
 2J/tij7jzk4b7zRp70+No61r07ArBbAE7p376Qn5n8sBRZOrXcPJAPnX0eqzkQx6QywpRwQ1xb
 Wag=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:39:05 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:38:02 -0700
Message-Id: <3d45098a7640897cbace54713efe10d88b74c160.1685461490.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1685461490.git.johannes.thumshirn@wdc.com>
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now that all callers of bio_add_folio() check the return
 value, 
 mark it as __must_check. Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com>
 --- include/linux/bio.h | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
X-Headers-End: 1q4KAX-0006ui-Sm
Subject: [Jfs-discussion] [PATCH v6 20/20] block: mark bio_add_folio as
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

Now that all callers of bio_add_folio() check the return value, mark it as
__must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index 4232a17e6b10..fef9f3085a02 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -466,7 +466,7 @@ void bio_reset(struct bio *bio, struct block_device *bdev, blk_opf_t opf);
 void bio_chain(struct bio *, struct bio *);
 
 int __must_check bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
-bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
+bool __must_check bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
 int bio_add_zone_append_page(struct bio *bio, struct page *page,
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
