Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD67167CA
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41cF-00087m-Vm;
	Tue, 30 May 2023 15:50:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41cE-00087d-9S for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zkowtZ415fCQeJRiHjflZgyo08gZkymF9cFFxhT07Cs=; b=c5w59mdX63HkXkztz0Vunfvjt8
 tbtVPUO6BJBnKyefpe8s0KSUrbfUppW0+bGLpfYvQUeXWuKSYeSWqk/Rwhix4VOJBDMuMqmr5ytDo
 FkO++y5b/oiirjFTV/3VJE9v34ikyhovpC2DrYIPx+nRhg7ei/HEHa0uFxDegiIAADuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zkowtZ415fCQeJRiHjflZgyo08gZkymF9cFFxhT07Cs=; b=jDEKYpD+s9i88KImK5ryXgLCuM
 6tak234XNGFe5jvu3DgzevBX3fVtZHczjYrxcv9y7PcLvYmhcwFi9Vgcme0t1+rWeQ/zYoRqLOQWf
 XskK7r5zqGUY1oNt62JMj8dH1njuDHy8vA0WIisPJQl+rOc2E7R7UdO6D52JXBdPFMko=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41cE-006fvv-7i for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461830; x=1716997830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eyPQiHOzD3W2DQRKwVAI2Cbe6Umke2Yu0VLdprV7VgA=;
 b=B+xdn/zItxk6VZTLGReToDp/fwoeh2V4UxHrimaBzcC/IwHaX+uncGkH
 Gyh2pCWLdjUK4DPLr2YKTtgzJqpwkAKSVTuWT9qFRUbVVcjiRkbEsP6OP
 y5kgiTgD/GmysLEvqfTwEdD9RD6arQySKj3tQkL+dR0GRWQHcyaj+IGHm
 xmcEQw/pUmaoo8gGNMF1OstRCoFdu6HnLPLUKuPXJkDudS8zTGy6+6/Da
 +DMc2RM+5Nx26hMuMVCI7VcrLdfQhbXhkUy0RnbX13LzxlvtguWS62qp5
 Tt7Jy0LwSJmNO5mI1G8Sm3b1AOsXwtlWDec+CZMdMvA+2RkpRsV+dVUcY w==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922755"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:29 +0800
IronPort-SDR: WkESsoZFdpU/EgnalbfYnv41WRjGfk5122esCiPBJswGSR5Zt4aEGXmpY6GC62dWpqq+LW0iMr
 z6CtULV4JTW1QbTHXf47poSjMisR6Nm80loAESelr2EQNOplj4TYigId9y7xgvv0n4aEhVVTF2
 ocfuLbySgRkj6OpggxaKrAnCEMlWnaAvuXvmblAs2k1QtPYerwilRbNEV22OUxt7OftkOhRd7Z
 3EQZKPTquYmCtzbRV1Fy0pOdpawgsOI7J4qwiropUvfYftCznnzvJZ+2H/sY6tk7P/X1EpLMVb
 yS8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:05:23 -0700
IronPort-SDR: bSqBFzv7rrWvPvkE4gwhOHj9e0jpcVXnuD/Kq3xELlTSi+Nq3cUl8HGoaL0rUxB1OR25AAJdei
 TIPhTBMTndkhO2YNy8PxBhVVLv4Kla8ZXnfIi5I7M3fxa3gTd8oOlhRXj2aVcnNgmc/rxQ3lh0
 pt68H/iNv5aYOaAvAaRNX6IexlshH2MNcr7cPmRVBzj+I1Z64b2NARfsMPI8qXzvdg6WEXxV+l
 Bxa2dMoJnICTi4jECIHCBYec6Uvp0PaRuTsjD5YAUZHSr6x9Mm/SzMBT9zXRe7WaHmXxtQTl7o
 Jr8=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:27 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:23 -0700
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
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1q41cE-006fvv-7i
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
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, gouhao@uniontech.com,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Bob Peterson <rpeterso@redhat.com>
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
