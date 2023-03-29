Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E79626CF04B
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGI-0002cq-W0;
	Wed, 29 Mar 2023 17:07:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGG-0002ck-RW for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v9JYsFFh+6NfyNyVYGuW1Txk804ur9V9DJTJVqHfYm0=; b=VuadHECO8y8WygdBTB3bXGgkHC
 GdfhaYT+XR21IVDy9f2/sL00WmFtx3V8PHaj6zp9168Xvt3M6dM4bsgTH1Lcc62x1V/BTzSqyWsTP
 1K5pCg6OtHEob3Erx3CMg2ge3hZurMhmXFoODehMwP+ednLBuHBxChq4uPeN3/KiIbHg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=v9JYsFFh+6NfyNyVYGuW1Txk804ur9V9DJTJVqHfYm0=; b=Ljtjbv5Nd75Tpp/vrLljfWUCMv
 VzCUUz9Erq7q0FMkr9jW6Gbh3JHaz9Wt9UE49lBWr3sbGrnI709lIevLTOAV7/du1465SWNPv6GOs
 kQC1M+l5uFDb0leDN6PTo4SHb0GvRJ+cnPmospDU2k+06yVppFrLt22on6fgaAEetrOE=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGH-008aXc-6J for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109621; x=1711645621;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aE/Ow89gy2yLxstCkn4viK+sWgyzq7OT7iYTFC2IcIM=;
 b=kXLB/kNCChkwkoR4jQ9Q2t2+4L6xEXJ8Vcb8pp0eys8x2yi/hJzhRwmT
 +vffJL2XWKPXabcNsB9haBvHv/k1Tn1PPwcBKm9Lk7Ml+j/27kqBtQZd9
 w2LzCOfd6ay+HE0/pMLyqejNsVXxKHP6py8Z6864K6oWZ+mEsU03G5xvS
 7pGafJmBkEfEl5kisTR4j5P+UaYvhQlOi8wzFByUtjKuvp3rIMJczingF
 aGa2ELIOPJI7QSlgVZivY8rQ++RyNs68ZjyNHrwLClPOmKCmwG7wNy3SG
 3fZ0uYzlRJ6hfdqJmjToSEMohBdvr+hWJRlvTPyKrbO4GpIIWjZnzYHFG Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807090"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:07:00 +0800
IronPort-SDR: cp2XtRZpiaCp0EdoERHvRW50ACYs4jtW7YBMSU7KUfq2fLxHZmYMO1DpLauJ9/rhUaCJbkFTRc
 LdHeHZYrn6G4XFbW+v24xoZDy9ybRN7/g4zo/cBaLUztpYOIA78VTOgYcIf1L9hx5X4pY/o4EC
 GU9pT3le05onc7373Uq9o2AmclMh7/3p9hiyjDvZ3T7+4hrCFxD6jy7RBG0se9UmJrIkr2ye3g
 ufqBgkVaHH1OzaBDgVtU1VrrmYAUDO1H4sf9ghwLI4CwqfqJC2GpcYB+0GnbJOYqWrGZlXPTqv
 3xs=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:10 -0700
IronPort-SDR: U5CGYwW7Mew4WMH5XhHkS/wuvmKwsV1daJfGn7mZ+KLy/D/2KzvAdqeW79QUzxkDDWCslNWS+3
 hfvcVA5xa6rhSLDzb3KfH/lUhdr07i4tMiJaXo9yDb7M099aYD7m8SSm1/TGzyiWeuthdMo6G4
 1dqWHhFwukM6o56/rWlCzBDM8Yn4tgV0RKs3pHn6poLpoeq6m4TkzOJgNZqdXwKHDt6xdkbOI+
 GotM7nHfSGcs2b2MrRQzeYXxRBWgESDZAFW7lZj9grqtdnnN4x1FPIawAtJPMCytnEQx+jwiWl
 t5c=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:07:00 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:06:00 -0700
Message-Id: <aeff063d2f56092df8cae0a6e9c1a8e771994407.1680108414.git.johannes.thumshirn@wdc.com>
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
 Content preview: The floppy code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Use __bio_add_page() as adding a single page to a newly created bio is
 guaranteed to succeed. 
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
X-Headers-End: 1phZGH-008aXc-6J
Subject: [Jfs-discussion] [PATCH 14/19] floppy: use __bio_add_page for
 adding single page to bio
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

The floppy code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/block/floppy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/floppy.c b/drivers/block/floppy.c
index 487840e3564d..6f46a30f7c36 100644
--- a/drivers/block/floppy.c
+++ b/drivers/block/floppy.c
@@ -4147,7 +4147,7 @@ static int __floppy_read_block_0(struct block_device *bdev, int drive)
 	cbdata.drive = drive;
 
 	bio_init(&bio, bdev, &bio_vec, 1, REQ_OP_READ);
-	bio_add_page(&bio, page, block_size(bdev), 0);
+	__bio_add_page(&bio, page, block_size(bdev), 0);
 
 	bio.bi_iter.bi_sector = 0;
 	bio.bi_flags |= (1 << BIO_QUIET);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
