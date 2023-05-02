Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 883596F4151
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:22:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptn93-0003zX-2x;
	Tue, 02 May 2023 10:22:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptn91-0003zL-Do for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=20BG3wIDL9Q3MFadR7Fa3ixcmZlwE0i8XJQOcgEaokY=; b=Psi1O+gaTdv+eOBIigf+aO3vVW
 rkA4BHMyr5ncaP1c+05y68xm92ZNJgBeBuHS4EE2gEmu+35KAxzxguQUZfTicgjfpR9RPjQaX3CiN
 sKtDHyTNYVV7JSegwq8V2y/K8zs+auPHJE7rkUIHDTMAq63i73qf9XtSLaPjnX2YdX4U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=20BG3wIDL9Q3MFadR7Fa3ixcmZlwE0i8XJQOcgEaokY=; b=WwTDZ0noizgT66t2au0ScD7oYC
 UaiD02gGsgZM34C08cm2ht3naSXyjmeYQts/MBrkfhdJMfc5v9XoHunr+osIxCzWDEo5Tg+JE+5Xi
 cRH5Vz7bmkbMygIufyKL/aHvziEHtV7aVvuE7I5VEsmK0brpv5kzo2530Uw4Pf5wRoeQ=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptn91-00BQek-6F for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683022923; x=1714558923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6dks1limiAqVSjbOuL3QnwGTUxz1Vyw7q9Fmd54YaII=;
 b=Xbc0OtiEJhIC1j3pzkw/ECGIpZ+sesk75kzeKY+Mb05zIOEN7G61L0KW
 6q8z0WSqWjAh7CTMFbR8YMUKtTnC3OSkRnJqO4L1gGHuZXyyKomcHg6rs
 o/QtuDsLpMJUmzWBeru1+w7gkwJC6hWz0/6b7bFscaIU8wVswkNacZ9Az
 33uEL/X/ErtRO/UcmL/9YYJyCMIbgN3QwXAttJBHxx8LM6lzIu5TkreoF
 P+wCNBpxTcLzygVCM46/vjr/stmwCJuP7XnL0RBZbqth5/9/XYw+3iEho
 o2q1TnV+s7bPo8IJoy/uk9jVtU4uV+igAM5ZyQtuTaSxh4HEFQesooRSd Q==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="229597992"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:22:03 +0800
IronPort-SDR: OP/FpYxj5mySQJU6af/pGHZrfSIJcQWK350e//rCqOCqIEQ6BGB3+8WOkc2qYeP506l8Diqubn
 l0/bmOck7P0hXSzUNAlsUpo51E1aRM5U7FgD4XwZkOT9Wo01xGojZ+5TQhnYoQBSI2T4R0BlPJ
 Km+PrYnp+2BziPm0I3Ajhk7bXPeeVlYhJYUCH0aWx9MNOHT9Je3UEnDKAJn/3g0IkwQQlBpcaG
 85IxBXZ+Agi1V8vWUmOF2vc6/+SjSwv8Hf43+9mHKHzCc1LbopQGAOKirbAU+tzGEd78j0Z8/8
 y8E=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:37:30 -0700
IronPort-SDR: TXRvj4xGS7bs358T8JG44prCEdQDntGn6p0l+szUnQQoKJ/zDUjD7hIPnB3WnqR6eTNxy9YLTk
 XRVgfqPge2tLXX9S3JBmh6cFtTa0a693VSeDeLsqNSigQnxtFdohY1ax9DQgKdHPBtM4lfEiTv
 Zjg5Y/0Mwg7HWndmnbK/j/QEahj/maRXY3CFUHrYGs0T63rGwDf3VFa2xZKPr+8lNUgMWnCebU
 hTXKsOGNGJGduWGl5A13GiLONk3DA+8Ged0SvyX7QurqVHjtBsMs2BE1hlpq5qA4aMSbZ6U+Xr
 NI8=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:21:59 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:33 +0200
Message-Id: <20230502101934.24901-20-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
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
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1ptn91-00BQek-6F
Subject: [Jfs-discussion] [PATCH v5 19/20] fs: iomap: use __bio_add_folio
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
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
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
