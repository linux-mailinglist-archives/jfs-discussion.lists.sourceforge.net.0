Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7BD6CF05B
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGa-0008Pm-TZ;
	Wed, 29 Mar 2023 17:07:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGZ-0008Pg-6e for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GDJ+FA6jm0FuzkoAjCv9Foq+v6LVPc682g0yuduBtNI=; b=hGaP9AmposaGek6FYzK12L33Na
 ghz4ggrxfpCV2bVp+/gLkhnL5knSLm51+7jewA/f09pE0fCmKKR5lYInQXjl/gRhc+2+v61nJFG5e
 RDadFoD3t3A+ixKXSzx5/4on2AHOjOwC1wbjAnpzhyZh90P4OKdrhPRa58Y84YnOBf3E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GDJ+FA6jm0FuzkoAjCv9Foq+v6LVPc682g0yuduBtNI=; b=h2QEPn/5a9czGKLzdqd2rcuyRN
 SrAaTFEWt4lwJoQi2sjhC9yXd1pzPAikK80AQuLKVMnVjdNtq/6EEkafb9o/0m9WMDvqYXDmLL23K
 vKZJb7zCGQFgGbZaHVGHOLoN5niH7jbnlfEgumWhYerzvQozM0nBQWMNXftpsvlONWRE=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGV-008aXc-Re for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109635; x=1711645635;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=25kvrOzZLFw61mLSH/q2oY93aAmAj3Hgw8SlB4MjMEs=;
 b=BksIfeiFb5/iBCjl8Y5ZuJ/miuJWxxYvaqoN2H6KKSt5kKN2szt9rh52
 7DybsF+QDYl2iAPDHrZu065dnY8Jd/k8hvkEnOKp9lHEsm+/YFtNhVBaF
 rgtz8B9IY14kv9MlcS5NnhfX1Yuu3zkLorWpm8DxKLmE0Xr7+WwPweZi6
 UymwK8ukPdjP90P/WzdbDxb8y2MB9ZzROK7+/sm23FWvkK7ww0xS54kve
 EGd4OtZxNvqgHEoJ0LDxRDXPyio9HCGjhPAiMW5dek4p7bBINUdVGMnP2
 8Gp6rICN7bj6zdVUht1Luy4ryGdzxdJDmBF+pRkZKC8Z9ppER1GaPyLYD g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807126"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:07:15 +0800
IronPort-SDR: FCYwxyLY+5lEVYafKpYxGZw3D8GAT/gSwMy9dYAanSWfvt8V6BCJE0tKoOySZl+ilpfIFJ1HAD
 BFQAlDNxrNwPQYlwBmp2Gc1xrsyef2z2mwkdkB0us7qHgQw2j7cQaElwpETkegzGgcAFtT2KL8
 7cNtM+Hi67qGREGXtnFCRR6gmqSfKQ+9O2K9LypqGfBWm2yK147KUPolSgwrvmMmM3dVG9/7Wd
 mda3WTU7sm5FxiXkyGIUtarDnIFtmkQ54/kTouTHl7XJT7kk4xESInjz8QG7gD6fLoC/oXp7A1
 WMw=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:24 -0700
IronPort-SDR: 8RmI6zmAOTXFtW/2/SG8J8KNZRYzrAFRJ4uNnILqTeeXG066nahjBZoS9n+NN5J3vTZ6r4tTp4
 tgf7Xeh71IvP+ShrkeXh87FE6UCEB3t5gJLO+7c48mDUod+PtEXFK6+gNDb9SNHaMZjGaFFZq5
 oSS15Elmdtz3zYQl0pCPbsA+5iw4KtmRTEhmlTSesmM+hPv3lcg9UKEZ8wbUNW7w/THKtkgzir
 PeuIpe63rdIdw98aKHJN1lP5OhNWW5Tro+ygbZuffnM7QyFj0xiIF2ZERO387ULFLAsv0/t4Fc
 XtI=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:07:14 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:06:05 -0700
Message-Id: <350bd9c62ce575267a2b38625ab767c332429bc1.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now that all users of bio_add_page check for the return value,
 mark bio_add_page as __must_check. Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com>
 --- include/linux/bio.h | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1phZGV-008aXc-Re
Subject: [Jfs-discussion] [PATCH 19/19] block: mark bio_add_page as
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
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Now that all users of bio_add_page check for the return value, mark
bio_add_page as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index d766be7152e1..0f8a8d7a6384 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -465,7 +465,7 @@ extern void bio_uninit(struct bio *);
 void bio_reset(struct bio *bio, struct block_device *bdev, blk_opf_t opf);
 void bio_chain(struct bio *, struct bio *);
 
-int bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
+int __must_check bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
 bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
