Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C6A6E8F14
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRBJ-0005fB-CD;
	Thu, 20 Apr 2023 10:06:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRBH-0005ei-DO
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R6+NeAX2XCjGoXZTYs/vHx8pZBcBY0nCsbbwup4DNoY=; b=VcfL4n2c4TEe/Gj73OMWzvvyQq
 dUxD6Bhw8D5a3CQyrFVbPFTf+5oB9VaHZCie1tNfZlneQ/X4+S1vdTsYXfrnDDZEzI3OJ2ummTrIu
 BldYJZGWFIWJkHU+0OG69t/WlN32hkFbuYiSDdek6p7NBN96u7A6Y5RV4gxmHZAl4WPs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R6+NeAX2XCjGoXZTYs/vHx8pZBcBY0nCsbbwup4DNoY=; b=htlYaehjxHQvVyJGH9PgbdY760
 5HL3Ym9JuXs+I7OJCBAX1W3Ba8SIpBSaXOt8PSnLuyqu8njITJiw3IAWhfIrZNmOAdGIvJtLMQ2T0
 FdkBjrFCHqDeq+sZxoO55qwxpmG18lgfu+ISHZ82DvzcdK2OnneIht3PR9HcPHWX8C8c=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRBF-0002f1-VZ for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:22 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-3f180510299so3406655e9.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985175; x=1684577175;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=R6+NeAX2XCjGoXZTYs/vHx8pZBcBY0nCsbbwup4DNoY=;
 b=ecIEOPK46Ljdqe69+zAG+vC+yMVX1BahnYp/tKIXhcbZCIQk8DqoPs2LkfGeLpJtor
 CRM212jE2i7J9Ln447cy6QklhqUeKME6DYlq9rteSKTAHjyRTbLr/xY69CvGKcwrPg+O
 FuszaSJe+tf2e2vEOB7huPNoKKcr41kpbkoCKsn1O3EKcxI1qv9Jcfk5RdiLJUe5/ZQO
 bO4qoykZT/rUSvxzsmUoN+sTneru9P9kkt1OFLPi7e71Au6SWt836VcIup5cmKKYRHO2
 cbGzurG+7DxhudeNbecyt83QOpawerAqriKtJZYMcXS9kg8B1kGDsmMhSBorrvROa8Ha
 wQGA==
X-Gm-Message-State: AAQBX9caIRCi7rFR7eZnn/m79ZfkmxoTwa4LWkAyzntigAHjl/nX1Skw
 mJIcCRMkOheSEMQ+EbgH5c0=
X-Google-Smtp-Source: AKy350aN3PsOr81dbQugpISlk+yjR+a+4/2N8Qu7GaXUJdAVlidoOhFCKUKxX0oN92RzWan4aBS9aQ==
X-Received: by 2002:a5d:5957:0:b0:2f4:3b2c:1b2e with SMTP id
 e23-20020a5d5957000000b002f43b2c1b2emr951041wri.31.1681985175440; 
 Thu, 20 Apr 2023 03:06:15 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:14 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:05:00 +0200
Message-Id: <20230420100501.32981-22-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230420100501.32981-1-jth@kernel.org>
References: <20230420100501.32981-1-jth@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> When
 the iomap buffered-io code can't add a folio to a bio, it allocates a new
 bio and adds the folio to that one. This is done using bio_add_folio(), but
 doesn't check for errors. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.47 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRBF-0002f1-VZ
Subject: [Jfs-discussion] [PATCH v4 21/22] fs: iomap: use __bio_add_folio
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
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, linux-mm@kvack.org, shaggy@kernel.org,
 johannes.thumshirn@wdc.com, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-fsdevel@vger.kernel.org, dm-devel@redhat.com,
 hare@suse.de, dsterba@suse.com, linux-raid@vger.kernel.org, song@kernel.org,
 hch@lst.de, linux-btrfs@vger.kernel.org, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Johannes Thumshirn <johannes.thumshirn@wdc.com>

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
index 6f4c97a6d7e9..473598b68067 100644
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
@@ -546,7 +546,7 @@ static int iomap_read_folio_sync(loff_t block_start, struct folio *folio,
 
 	bio_init(&bio, iomap->bdev, &bvec, 1, REQ_OP_READ);
 	bio.bi_iter.bi_sector = iomap_sector(iomap, block_start);
-	bio_add_folio(&bio, folio, plen, poff);
+	__bio_add_folio(&bio, folio, plen, poff);
 	return submit_bio_wait(&bio);
 }
 
@@ -1589,7 +1589,7 @@ iomap_add_to_ioend(struct inode *inode, loff_t pos, struct folio *folio,
 
 	if (!bio_add_folio(wpc->ioend->io_bio, folio, len, poff)) {
 		wpc->ioend->io_bio = iomap_chain_bio(wpc->ioend->io_bio);
-		bio_add_folio(wpc->ioend->io_bio, folio, len, poff);
+		__bio_add_folio(wpc->ioend->io_bio, folio, len, poff);
 	}
 
 	if (iop)
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
