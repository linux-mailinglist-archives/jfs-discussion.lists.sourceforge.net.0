Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7027167C5
	for <lists+jfs-discussion@lfdr.de>; Tue, 30 May 2023 17:50:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q41cC-0008Aq-6H;
	Tue, 30 May 2023 15:50:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=507b913ec=johannes.thumshirn@wdc.com>)
 id 1q41cB-0008AO-17 for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eIMNShzbX4d+fuJlDQGVddQb83DiGokEGK2iaexvnMI=; b=Tb5pxm7Kp+Z7XB2tkkaTDm9aZ+
 rs25ygIKp/195cNXWfInNqwFx/wNdpNAjh+vmqc3wR3cCLBkEHgOs5PP/9SmVZpn3d7S1YfIEjAiF
 MNRaP77jMlLa4yTyKoAFgftZ83yYS9AkXOF5C9tmWyxRbBr120CXp6cRT7IptXoqKvXM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eIMNShzbX4d+fuJlDQGVddQb83DiGokEGK2iaexvnMI=; b=SyhAPC7+DHLp1QckzH2S23sJ55
 sgS3XvfYWAysCvH6SDbqucaRXs+/lfaU1AGb+H0Jbe6gzih7i0o+F2E1INt2GOKM/JcyuuB+KNOB4
 HD7XWmE2cRun/hun+fNeRjmKuaBVavwtlBrdG1iGzVcruEeVeGWlsE2oIsD8EfvJrSOE=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q41cB-006fvv-Bj for jfs-discussion@lists.sourceforge.net;
 Tue, 30 May 2023 15:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1685461827; x=1716997827;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mcd/H07yjDNLd/X+ei4F/kInbJgAqWy0dojDfw1QWYw=;
 b=PTZkcIk0KtnwDwSQzUA7nqgARKxDH+YKYBnkqf/ALRMRXVT07PPikqN4
 KQ8IpwicrfANfCP+b8hpkuFVi3xYOdWxdx96rlvdo52GjR6Sb6E+ms7X/
 +dCch7tY8qR9g1vdsz6MMmESBoOw+V6ozahzCBYAHyL1gQD4n1yMwzLYs
 Xo5LHtuPaM1fATdmtWFp2CrXVTBlN4dWrdry4o4hEoQjd3lpejFKU67H6
 VUZD0ogC0fxxirPiGlMSEzuUF26Ayt30/PTdGEmUSfcilyW5+ckcfE/Zb
 UMDeFUyvv/ZnCROHy9wxbC26ty0bB6SIsHZ9B+zRYGpr3gHqkeid+t8jI A==;
X-IronPort-AV: E=Sophos;i="6.00,204,1681142400"; d="scan'208";a="236922750"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2023 23:50:27 +0800
IronPort-SDR: DzCLfR7OLRMA5+qxgmEUMoC8r84IegrbTod2umgeL4bCweZteqEsuVGWrVBkueSOLpKR4u6uSm
 wC47vy+H917Yw0EmlnlUhHtBYIdFHqEStJQ+UB5EW9BfcH7grOL4tnfAEWp7Z7INjglZo3fVbY
 bwRO6k5uPtvY1VQT+6FDyjk7tLhSfmECW73vReKe2aK4UOzxthYAJLCtDLNDziP1mO6KzoH1+7
 jsyCOwrM+VjxqhHo5ul9chgGdSG4qPkndDOG3HuFR2PuXUMoMT2DBLJjXT+0gYqCS3WjVOeFD5
 D+w=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 May 2023 08:05:20 -0700
IronPort-SDR: vm077LYPjNAgf5XlpecJ/3icJc5CMvd0lv/Avf1qt9Q/GL6TJkcMXRi6IgIjrnSc7COF5QrvoM
 rybn4aIsk3ovkS/odxyg0sJi8dTutwPKjZDfzTgOQd2shRAOUl0eyZW+AxMzq0gSSpTLt0zblr
 UlT5/9heJdPYSEr71OD35L2+mnxp5yfUxAvMikvD+47W4RcDny9nyhyoPmkkZUZCDcFsZlAdtd
 Z+zkSGqfSgcxDW2nlTOB+X8K7FgyMtw8b3N4WfdZtYRGEapJ7oDAz61v2TGB77bpv7441w8fn/
 igk=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.6])
 by uls-op-cesaip02.wdc.com with ESMTP; 30 May 2023 08:50:24 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Tue, 30 May 2023 08:49:22 -0700
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1q41cB-006fvv-Bj
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
