Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A196E8EFB
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRB3-0005bG-Hn;
	Thu, 20 Apr 2023 10:06:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRB2-0005au-3n
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UHB27r2VAJYtptv/DszRuaYXLzHwMALFS99ixQeQIrk=; b=H04dC0bdTlH0VQaGSGFCT4QtrY
 9kFoGx7Lcoqphlc/9129htQI15ppAoSbnNCJhHpZNlyUm01ODZG2bnqmKTCJyfzE2GeWwtEr42eAM
 OARL3x2ffzbuImTWhFe96yBS/sXXleoBwi/tCQ6OfWuiDzG3MZF6uszu60lV/TVaiwyQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UHB27r2VAJYtptv/DszRuaYXLzHwMALFS99ixQeQIrk=; b=DnKb59yO3kNZYnkP6hnXTwyJ2b
 +t65GHBOrzlUapDIdw/1/Zc4QXAmOaaO3AOrWV9zIMm6Bg5u1Ph0/4ymGzLaFVqQPBeU8HdoiZwG9
 M1GMXTwEZvABVjjsxqEbNGXWcF8Rch7kFqSo7pCYr3weHjyur9vEKMK+GzIZEg/Dc2dg=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRB0-00DROk-LV for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:07 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-3f178da21b5so3657705e9.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985160; x=1684577160;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UHB27r2VAJYtptv/DszRuaYXLzHwMALFS99ixQeQIrk=;
 b=GCPe+5N8/ubtCQEJpIXLCt8+1MUOb6PZpe66qpYaZ1G3dXPwWWJu3YF4/Haglp0Txs
 cgqRPNa7FV2JAE/kLpPSLmneXqiDPYu86RNesdTqGWHTwtJCNExrFbRFiG/1I3ZW5v1C
 t6ZxmCgXEsAMt+su2Z7qGOdbXICvMMck+1KDKn8n8NgS0wTy7xMuGrbnf7z2FME2l8Nc
 twTaZwo2vtLigCRkWzFfQovdd8SYX7d7oS5EaBWdNQkKdgY2UibHz253e9j9mZM8Rb+i
 4KRq0zARo6duqWsXgRMr7TCU34Dv/7t+4upblLHDGTrCCyhPfZCgnQVVb1aX+TCwRJO0
 dFYA==
X-Gm-Message-State: AAQBX9etMFDkWf+9uQ8E3coJtxPJh+91+Ie+XcJKOsJiNSjHQZeIbHZ7
 oewbriPKFBSrA1//C+dLK4c=
X-Google-Smtp-Source: AKy350YxSTxTnEZJlt1GVQL88IhbsHQlCxv5AUQ75S1ft6jRo+CEl5H+9DfaCVJ+16oh6uYY4md1jA==
X-Received: by 2002:adf:f209:0:b0:2f5:ace2:8737 with SMTP id
 p9-20020adff209000000b002f5ace28737mr903415wro.32.1681985159938; 
 Thu, 20 Apr 2023 03:05:59 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.05.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:05:59 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:47 +0200
Message-Id: <20230420100501.32981-9-jth@kernel.org>
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
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> The
 btrfs repair bio submission code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRB0-00DROk-LV
Subject: [Jfs-discussion] [PATCH v4 08/22] btrfs: repair: use __bio_add_page
 for adding single page
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 dm-devel@redhat.com, hch@lst.de, agruenba@redhat.com,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, willy@infradead.org,
 cluster-devel@redhat.com, kch@nvidia.com, snitzer@kernel.org,
 ming.lei@redhat.com, linux-block@vger.kernel.org, rpeterso@redhat.com,
 hare@suse.de, dsterba@suse.com, linux-raid@vger.kernel.org,
 damien.lemoal@wdc.com, song@kernel.org, johannes.thumshirn@wdc.com,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Johannes Thumshirn <johannes.thumshirn@wdc.com>

The btrfs repair bio submission code uses bio_add_page() to add a page to
a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 fs/btrfs/bio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/btrfs/bio.c b/fs/btrfs/bio.c
index 726592868e9c..73220a219c91 100644
--- a/fs/btrfs/bio.c
+++ b/fs/btrfs/bio.c
@@ -224,7 +224,7 @@ static struct btrfs_failed_bio *repair_one_sector(struct btrfs_bio *failed_bbio,
 	repair_bio = bio_alloc_bioset(NULL, 1, REQ_OP_READ, GFP_NOFS,
 				      &btrfs_repair_bioset);
 	repair_bio->bi_iter.bi_sector = failed_bbio->saved_iter.bi_sector;
-	bio_add_page(repair_bio, bv->bv_page, bv->bv_len, bv->bv_offset);
+	__bio_add_page(repair_bio, bv->bv_page, bv->bv_len, bv->bv_offset);
 
 	repair_bbio = btrfs_bio(repair_bio);
 	btrfs_bio_init(repair_bbio, failed_bbio->inode, NULL, fbio);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
