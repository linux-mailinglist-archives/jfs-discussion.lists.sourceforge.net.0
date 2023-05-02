Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A506F41C0
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:36:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnMr-0001bt-VO;
	Tue, 02 May 2023 10:36:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnMp-0001bX-Fk for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TksHOnJypDZrr5KaC2Siyq1TxZim9ijHgxo9PaGwkEc=; b=KIUcr+3meocvHbiaDTSYBnhFIK
 3ED/kMeFC7HPabypSs24KCnR8+N0UbpAzfqYgmZePRLlQjXHQlrlZIvrKf8iQz1ZwO3elyQy6X7eR
 bSrpfnk85kVQrE8Rp7cIt7oIBciiyPhMc+hZ3GTZQKPMozUIvcvVqYN4c9DAohfANkUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TksHOnJypDZrr5KaC2Siyq1TxZim9ijHgxo9PaGwkEc=; b=OeU0vgvUW+gC7nHzlgIHHg5VFu
 dZ3Ge3k72JGKc6FxqZHU0gEh8LcyjkjIoWBofgLp7gyPzDPj7pbQKxsx9VY8RmysvQwaXOVcalxnE
 gXpXqeErdzEKtNLfqHi+T8cCxtxCKjF5ibwTeiV2e+lpWCtZ51AtSBfHMlMynWusA2EU=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnMn-00056p-W0 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023777; x=1714559777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Es62g6k1ZlWhgSA6WjwLlc4pXpvWcgAwLvB3w8C65Gk=;
 b=YTNl4QPWE4VJnNhFnPQ/8SUwBzW3cEjPp+M2r37fCM/X++RIthokjlyG
 /Kx2ONXSlKUymjCdhq1XxngRqomHOqeFEV9vm0/5tOYlcbggto3Mf6w5F
 YQGYVWwOF7PC5PrbcAm+QTxPuWMKMoQ4HXF+f4nD4HuMxHtvY/z9C2m6N
 cLZaIOmxzdacpzaayUj7rN1dQfRbZZaJW/DmYzgPYywhuP60zAgoLL0Tz
 700pXVQJ2V+qtlMaXvkodZ3xXmnhhY/6nS8CQOWWtOvxL6qIljC69oH+Y
 Gh5X6zaPnGmtRZHn/BR9szX12rPFbbYJuOPyp/g5uLgn+Wx4dX+6UDcxE Q==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136154"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:20:53 +0800
IronPort-SDR: K6+zoBdgR/aSByK40GcNZDfyegNXAirK7p8CAIPse6B6/wN/CaKFxJzf8M3s4/+5XDvoqOmJ/3
 tih4UdFq3IGvouDbeo3blEWsrdolipvyrUIypn2uVPSDf99rZLRrLuVjoicMznTwh0oDxfWxpL
 kaZ7YxIRWSV4Xx58gT+L81MI8EhO5va19F76bmsrIf6s9DYUOUPrQw5ZYv0TyucXOtdXLzwgS+
 sYIempksD1TNM+ZF1hno5smTsE83A5/uDtQAyjVTog8GEp+OkWJYGHGqDbUHPR63ihFdYFdFDw
 ghA=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:21 -0700
IronPort-SDR: lZvLJJNtit6YaDaRBpAoPeA+okMXi1NgBhcPxuv1Yj1Ti6ZR/qtMcFmyzA1CfeQK9Pm52oQ4UX
 KijqLwLr15wFCQ51AUQnZWWjgtCohUdv1nJi/CHpIu+F1EOxkUvPsh0Om8NjYgSZly+8KyWjI/
 xdAuOSlf0xZugpuHVN61JlWiVSWBV5uiFwn5N8ol3vENfCoFPsM6Ej5IFQDNt6Mdr8+XUfaqOo
 w1LhiCL74i+xYwatkvZWipXL1PHg3LZseF9wsfZrOCmoMv39jP9sPSI7W2Kyr6m8JvTNnzZ1Kh
 VWM=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:20:50 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:18 +0200
Message-Id: <20230502101934.24901-5-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The buffer_head submission code uses bio_add_page() to add
 a page to a newly created bio. bio_add_page() can fail, but the return value
 is never checked. Use __bio_add_page() as adding a single page to a newly
 created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ptnMn-00056p-W0
Subject: [Jfs-discussion] [PATCH v5 04/20] fs: buffer: use __bio_add_page to
 add single page to bio
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The buffer_head submission code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is never
checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/buffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index a7fc561758b1..5abc26d8399d 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2760,7 +2760,7 @@ static void submit_bh_wbc(blk_opf_t opf, struct buffer_head *bh,
 
 	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
 
-	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
+	__bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
 	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
 
 	bio->bi_end_io = end_bio_bh_io_sync;
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
