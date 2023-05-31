Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F0B717E70
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 13:39:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4KAY-0005kq-Lz;
	Wed, 31 May 2023 11:39:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=508ef2a02=johannes.thumshirn@wdc.com>)
 id 1q4KAX-0005kN-1A for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eIMNShzbX4d+fuJlDQGVddQb83DiGokEGK2iaexvnMI=; b=ad1iuz2rHKtG5Q5xvS/BKc9kbG
 YYSd1UT9MRXTaWoIX4uHSQjJRfddNK8fpwYIqWXxBSIWrEafsO7zUKfva7qzForMrF4RNlvWupzQM
 fE0sgTJC0hG1pyIiSIMfOE1A/k3FdmFMXY1hVcauX5WRiVDfQj4zdSF17Oo+uUy9N1Js=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eIMNShzbX4d+fuJlDQGVddQb83DiGokEGK2iaexvnMI=; b=Q8jY/TYWS7JJx7HUBWR0wujkU7
 zElMGVzp2JolFktKrCa9jwWV1BjfumyIsVCjtzc0iRWyJ62IVICKlE5m4rXXGEfIKa46smA/C5u9Y
 fH5IiKKs8a/C+xqYSk3fKEo4WJkJp3I1FxnY4EyVgFEhqISOxRIDoAk84aMECzVygSjQ=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4KAX-0006ui-83 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 11:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685533149; x=1717069149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mcd/H07yjDNLd/X+ei4F/kInbJgAqWy0dojDfw1QWYw=;
 b=dRtbSp7Bg1FG3JEZPEpD6S9dTHliLW8OQovydNbTkrtyt4LWHize57Bu
 QSZjhamdS/Y6hSxlIzQMYHmynmV6PmQGyh9A7AmtsfKLkZX5UmITT37Gq
 hMsM9LBulXOxsJc7dBxVtHPKAY3XMqTxShTavi7OjQSSfcRy0bK93iRVc
 V8suEmDtTmf90Ok2te13zH7VbdI/L+Bvwcii1g9cxAinLq7TFth2jNxDz
 eUKST6y6xZ3I2VjVxQlE9099V5TDtValtLoRIlf+ImLbZASRPdVQrBgEK
 xUvEqJvL0Kzdrmm594YsWtJNkTtRRefc4uXOP04lBKVGmSAH+L4dZ41AC A==;
X-IronPort-AV: E=Sophos;i="6.00,207,1681142400"; d="scan'208";a="237001371"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2023 19:39:05 +0800
IronPort-SDR: +MBEYenJLkiCoR6SAsQlPHCNx/0ByV9pY8GOtutnSes9EHlZMIyjaoZMUzI0rKd+Sd37gGSlG8
 bs+oqsJ3gMP+/O5kUhqhC/b3tpmSNLHnrVjjt3atggU1D2liyV8ErYzcxaVOb5O3TzYHg+Xx/w
 lZB257W7zBpholTKSDaIBATRZpoTN5IjWPKosgYjrSSBSRplZkFdLqHTCgD3z6wzWNEm8tZ+Dv
 oizjt2TekQE0OObUk2xYy3yQBkpMicRQRPtnleuhg4kDzN3Aij5P3DazDgpCjjODQ0pOl/Oggv
 L5k=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 31 May 2023 03:48:17 -0700
IronPort-SDR: dJb/CRSP3Swr2x2jiC+paW0dnGjzm6Bz1GAlGKlca4A7q/x/ky8HuVCu7AA6VYX5uJ0Ewh5t3x
 q+iWl5HlhzQMV3D+zIls3XMo7zp44uRPShf3qZmHTVjlHtCyJhoy3EfEEf+h9hvbiHfRi/SZaM
 d9U7RaXciqVsSQr8sZoG/qgLo3wszKIv+4kHv8jpR5BKyb+/H8r/7FEY1iK6JWuO591/DsqLKl
 X5ltcT6eaJJce6CRG0s8vZd0Q95JNHPvX3nOAbDWSbgMiVFC4dhkCvQP9zoXpp+VrisQgvbaoC
 Beg=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 31 May 2023 04:39:02 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 31 May 2023 04:38:01 -0700
Message-Id: <e809b83d60d9fb0f65a8116b3e50f1432f594725.1685461490.git.johannes.thumshirn@wdc.com>
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
 Content preview:  When the iomap buffered-io code can't add a folio to a bio, 
 it allocates a new bio and adds the folio to that one. This is done using
 bio_add_folio(), but doesn't check for errors. As adding a folio to a newly
 created bio can't fail, use the newly introduced __bio_add_folio() function.
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q4KAX-0006ui-83
Subject: [Jfs-discussion] [PATCH v6 19/20] fs: iomap: use __bio_add_folio
 where possible
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

When the iomap buffered-io code can't add a folio to a bio, it allocates a
new bio and adds the folio to that one. This is done using bio_add_folio(),
but doesn't check for errors.

As adding a folio to a newly created bio can't fail, use the newly
introduced __bio_add_folio() function.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 fs/iomap/buffered-io.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/iomap/buffered-io.c b/fs/iomap/buffered-io.c
index 063133ec77f4..42c5fc0ad329 100644
--- a/fs/iomap/buffered-io.c
+++ b/fs/iomap/buffered-io.c
@@ -312,7 +312,7 @@ static loff_t iomap_readpage_iter(const struct iomap_iter *iter,
 			ctx->bio->bi_opf |= REQ_RAHEAD;
 		ctx->bio->bi_iter.bi_sector = sector;
 		ctx->bio->bi_end_io = iomap_read_end_io;
-		bio_add_folio(ctx->bio, folio, plen, poff);
+		__bio_add_folio(ctx->bio, folio, plen, poff);
 	}
 
 done:
@@ -539,7 +539,7 @@ static int iomap_read_folio_sync(loff_t block_start, struct folio *folio,
 
 	bio_init(&bio, iomap->bdev, &bvec, 1, REQ_OP_READ);
 	bio.bi_iter.bi_sector = iomap_sector(iomap, block_start);
-	bio_add_folio(&bio, folio, plen, poff);
+	__bio_add_folio(&bio, folio, plen, poff);
 	return submit_bio_wait(&bio);
 }
 
@@ -1582,7 +1582,7 @@ iomap_add_to_ioend(struct inode *inode, loff_t pos, struct folio *folio,
 
 	if (!bio_add_folio(wpc->ioend->io_bio, folio, len, poff)) {
 		wpc->ioend->io_bio = iomap_chain_bio(wpc->ioend->io_bio);
-		bio_add_folio(wpc->ioend->io_bio, folio, len, poff);
+		__bio_add_folio(wpc->ioend->io_bio, folio, len, poff);
 	}
 
 	if (iop)
-- 
2.40.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
