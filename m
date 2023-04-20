Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CD06E8F11
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRBI-0006vY-Iw;
	Thu, 20 Apr 2023 10:06:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRBH-0006vO-G1
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bdnAdvAKJlDAz7pM0pp8Diurpm3+TR0sCY4FonfaEe4=; b=ibrhkAiGfuwmZLi8t7MD49Za38
 KIujjG8O5EDpsCVAzU1AMwtzWWy7X9wNvHX7d7koCiBEVMCmJaRWsi2Gujc6qeufY0ZgnVnyiaxXD
 SdShvdk/G/QmppDyYBr1OLPLdNTLPnHWcZ5mgcomRjVOVGMn/DzVaRsPK18AWf/xmCg0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bdnAdvAKJlDAz7pM0pp8Diurpm3+TR0sCY4FonfaEe4=; b=N1aP67Xdq+HzHt6vtx6nP1f0+i
 vPObHh1nLJ3QOTCqf5bWSiDn+TsyB+n0RH3xO1haYDV1b7EYbQcPbbyWsnxLMcaC8p5PG9ZItMK2t
 Dt0hc1Yladx5lRFkZ9buq21waW/VrFzksyqZkME6fXHxDXyvQEmekhbbUV5J+/HDFU+U=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRBH-00DRPt-5p for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:23 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-3f1728c2a57so5546335e9.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985176; x=1684577176;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bdnAdvAKJlDAz7pM0pp8Diurpm3+TR0sCY4FonfaEe4=;
 b=IUkhNxwhaDDbMoA/X4vtcZEgp4cJ572HtZsEcvdYUfe0T5gZO6aiwaMoCQ42Z14gcY
 5ErPONQ5jHCKJOnVmJAJIYJXqV68vVfv0QKoJmnrPGhihe5Zd4rYLyackCUHhKjW2fCt
 ukrLmfhkICxJc30MlgZ5VYhCs3YZx9k6F+IV0FwZcn5BUFtgpsl04+IVY0DCqdV5+1+e
 YQBuNIJxHj+Sq9vTsiVftQHtiQA1x8iNiNC8Y/eatgIfEFOPmvZ4Ui1thFI1/6LzYew2
 N9EJkXZem+lt+2qEFr8kmM8h8rovTxmv7L7GmjnF/9cVJS+m6ZCAlEhZNA2C6HM2zxtT
 ec9g==
X-Gm-Message-State: AAQBX9e6XT4/JqUI9x6NLyPOdc7S3Al+G92khTvfYPSXFcetYcotjnyq
 YvBYjohovMD45WXbOzFnSmRDH8gcKvSXOLuA
X-Google-Smtp-Source: AKy350bs2gtzNI5cB6yEjD27bAOubU763Pln69XpJllBqakY/TYBXJ5mOXnM5tQ2B75UHodvDIFK3A==
X-Received: by 2002:a5d:6dcc:0:b0:2fa:43e7:4a32 with SMTP id
 d12-20020a5d6dcc000000b002fa43e74a32mr694948wrz.66.1681985176558; 
 Thu, 20 Apr 2023 03:06:16 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:16 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:05:01 +0200
Message-Id: <20230420100501.32981-23-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230420100501.32981-1-jth@kernel.org>
References: <20230420100501.32981-1-jth@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> Now
 that all callers of bio_add_folio() check the return value,
 mark it as __must_check.
 Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com> ---
 include/linux/bio.h
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRBH-00DRPt-5p
Subject: [Jfs-discussion] [PATCH v4 22/22] block: mark bio_add_folio as
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

Now that all callers of bio_add_folio() check the return value, mark it as
__must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index 99fa832db836..36cfc091caed 100644
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
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
