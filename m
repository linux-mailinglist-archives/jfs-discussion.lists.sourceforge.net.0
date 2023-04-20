Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D62076E8EF8
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRB5-0006tz-NG;
	Thu, 20 Apr 2023 10:06:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRB1-0006tM-Sx
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KLQcibH4QQVSvQQ/bVwiqZIZ4Gz6ywI38VTMDoqxjbc=; b=huI0xTA5cmjYxWrK1TnoOlWT2/
 APETcvT/2WekvsSEI+svF1PlmwsNbrWNxL1Vyki+Cmn/MJOG4BrtG599Vp0TIz8Zk5HGhtCGUUvTr
 YQybLr0sUJ7eKk4a8ZhXIXQF347Gc7StgvpGG45Vz30M+vPAY5APSnCLAr3TYvW7NsYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KLQcibH4QQVSvQQ/bVwiqZIZ4Gz6ywI38VTMDoqxjbc=; b=NVRVy2JqOVIekQn51OVvRO3bDA
 LvXfH7qtK/P5fVdMKI1aoWX0Nl1VZES57BglLHB67j46wha9c/zbQgaODyXqWkOP8p8WEXYRI2iQn
 R1pLm23jY8s/8I+YEcEAR6BdwDgk15ul5OCuPfYdLeHH83Qzxa7o2J26aHf/LwckPEUs=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRB1-00DROd-Ic for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:08 +0000
Received: by mail-wm1-f41.google.com with SMTP id
 5b1f17b1804b1-3f09b9ac51dso15223805e9.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985167; x=1684577167;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KLQcibH4QQVSvQQ/bVwiqZIZ4Gz6ywI38VTMDoqxjbc=;
 b=MiDSm/HXZzAHh1s45mEHco9I2n5uRHp1VSRajt8YqVgfsyRhi2DniA74UMaT2OSjQ8
 A+4jv0JOY9RWShI9iRlGg1hTR0Iw67X9kBB7XtL7AaVwbUoOAfDqA9Tmf1122b1ThKUM
 2a8aJ97y7C6S76f8trnhm50XkOT4I5Tk0glOBabZhJj6WDb6sqPxIsjFQOcfEb4bd8w5
 Aena83wJFeQG9O/NH6v8h2MTr5EEdiU8y+qs/3kOL3DaDEkL8H4qtVgCuKN6Feodt4No
 wHGwsfBHwMxSbX78WvNXJRHRf1O/U5qyOqedyOSZJRr4M40M21eI/fVmhDyik6VGELgd
 TKWw==
X-Gm-Message-State: AAQBX9fDfr+EpOtc07B8KRwKGVafaPiJJ0RoRoePSlTN+cG03OPQStV9
 Lj+5MqJTUBRzChd1zeNkHwE=
X-Google-Smtp-Source: AKy350ZcFFlxF5q3NJunushXVpPXUYuiC4N/We+M7gafEQiS6iroYF7bHjMp40rssazkY5tuAvcmdQ==
X-Received: by 2002:a5d:4603:0:b0:2fa:a8ad:c49b with SMTP id
 t3-20020a5d4603000000b002faa8adc49bmr929488wrq.1.1681985166988; 
 Thu, 20 Apr 2023 03:06:06 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:06 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:53 +0200
Message-Id: <20230420100501.32981-15-jth@kernel.org>
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
 floppy code uses bio_add_page() to add a page to a newly created bio.
 bio_add_page()
 can fail, but the return value is never checked. Use __bio_add_page() as
 adding a single page to a newly created bio is guaranteed to succeed. 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRB1-00DROd-Ic
Subject: [Jfs-discussion] [PATCH v4 14/22] floppy: use __bio_add_page for
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

The floppy code uses bio_add_page() to add a page to a newly created bio.
bio_add_page() can fail, but the return value is never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
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
