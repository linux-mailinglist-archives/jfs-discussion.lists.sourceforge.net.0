Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA976E7BA5
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 16:11:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp8WL-0003N1-Gb;
	Wed, 19 Apr 2023 14:10:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1pp8WK-0003Mg-JF
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XSziFxMRLlc78BEY3ZIcArKRUqB+ur0VzFu/o2eWTQg=; b=jkJHMUmwhHHOpJIcTHjuJu5wiM
 XQPnPmexpQyWW+Wc5MJhX63om7trk5LLweh5Q78os5IMnJj4EXW6nN1fS6S9K6xSTaH799IpJM/4s
 tRomRum50xGcoaekAEr0SbfhQQohoq5NW7oQQKe61vIVPcz8hTR+N8C1DnG8x3ALSxOE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XSziFxMRLlc78BEY3ZIcArKRUqB+ur0VzFu/o2eWTQg=; b=WVjqhjKN8Z/+tV5XXEzW+Yg106
 RgHvZP4/GK37BOQnNXKhIEPw2aIFRnPYPeRMtMwaBWOE37FmYmrddJ0b5qMsasM3jU3AS2rwFQ+jf
 1hPvCW3SNTAXirXV6k428wI75HQNEUfWzksQbSj9VqjpQAU1EEfBk/f02i1JRsvGoJOk=;
Received: from mail-wm1-f45.google.com ([209.85.128.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pp8WH-00Cc69-91 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:53 +0000
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-3f178da21b2so16031265e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 07:10:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681913443; x=1684505443;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XSziFxMRLlc78BEY3ZIcArKRUqB+ur0VzFu/o2eWTQg=;
 b=CSN72zvKK2k7+a4cjBMIX+8Quvq13ptAhcsSxsRmv/xbWSL+ejGBXarXpNqB5WFZ2g
 iouErwCmz6M1DE5/t/TkYFjTH5+fLpiTZfecrELC9Dz3kz68A4w3MTvUz5B0Pib84X3V
 bvN6sg9tdJUd1/L0DeI7sPSPUC63yjjiIUPIqkcbpciv0m+1YZz/EL6Gf0cr9YTqp0qE
 +42YZslPmOVU9fjG3eCVBpaq4yhieIHZt9PTp325tvAd0LfVEn7WNHzS4L6C96LrHkxf
 PBWkRhXEOyk+4F0DUcT3/6AnkBrDOVjMU67z/XQfxSFf3s2EWaHBBs/w/HrmGp0KwSXz
 W0Jw==
X-Gm-Message-State: AAQBX9eqrwAYGXk7AUbM89oNTjTE0dippZDGl2kcNQnKeWxBC/Qw18kw
 AmH+o7KGrSUpnMa2VyynQ6Z3KWk5TNMvYrfU
X-Google-Smtp-Source: AKy350ZNLghyp21Md4xzCnKC/CZ1jD7PS3tRxkpm7/A6UV4bbe7dKQsIepFwKTi5j5wXVP+SbzJYCg==
X-Received: by 2002:a5d:6a45:0:b0:2d3:bde8:9ff with SMTP id
 t5-20020a5d6a45000000b002d3bde809ffmr4938443wrw.34.1681913442744; 
 Wed, 19 Apr 2023 07:10:42 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-204.dynamic.mnet-online.de. [62.216.205.204])
 by smtp.googlemail.com with ESMTPSA id
 q17-20020a5d61d1000000b002faaa9a1721sm7612089wrv.58.2023.04.19.07.10.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 07:10:42 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Wed, 19 Apr 2023 16:09:19 +0200
Message-Id: <20230419140929.5924-10-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230419140929.5924-1-jth@kernel.org>
References: <20230419140929.5924-1-jth@kernel.org>
MIME-Version: 1.0
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> The
 btrfs raid58 sector submission code uses bio_add_page() to add a page to a
 newly created bio. bio_add_page() can fail, but the return value is never
 checked. Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.45 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pp8WH-00Cc69-91
Subject: [Jfs-discussion] [PATCH v3 09/19] btrfs: raid56: use __bio_add_page
 to add single page
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

The btrfs raid58 sector submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 fs/btrfs/raid56.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/btrfs/raid56.c b/fs/btrfs/raid56.c
index 642828c1b299..c8173e003df6 100644
--- a/fs/btrfs/raid56.c
+++ b/fs/btrfs/raid56.c
@@ -1108,7 +1108,7 @@ static int rbio_add_io_sector(struct btrfs_raid_bio *rbio,
 	bio->bi_iter.bi_sector = disk_start >> 9;
 	bio->bi_private = rbio;
 
-	bio_add_page(bio, sector->page, sectorsize, sector->pgoff);
+	__bio_add_page(bio, sector->page, sectorsize, sector->pgoff);
 	bio_list_add(bio_list, bio);
 	return 0;
 }
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
