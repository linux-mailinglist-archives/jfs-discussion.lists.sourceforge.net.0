Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A63D6E7BA8
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Apr 2023 16:11:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pp8WO-0005IY-KU;
	Wed, 19 Apr 2023 14:10:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1pp8WM-0005IG-1e
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KLQcibH4QQVSvQQ/bVwiqZIZ4Gz6ywI38VTMDoqxjbc=; b=FpKqzUwzFI4kdYzRYVEHAmTOya
 +ZghwKhFWS+EZ/UFAjonVKv/vJx7Apcf+xubxejSarDTYdwgWNTGVUADTWCxq3vagcklVDAJfpk+1
 VcB6aZbRFC9XFxi8R+hWCJLEok1GMNnHYl/nyr7ZPsxOq8KewO2i54DoBxrxNhX5scq0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KLQcibH4QQVSvQQ/bVwiqZIZ4Gz6ywI38VTMDoqxjbc=; b=gGdrW+Ld6T+U+EkjrFXGgvuYU1
 NDpyWP2UZ155EpjCueWBxhXkazFRLrgegCCeArSkO2hyw5fBWW3Et88N/Cv6ED1VPfrIaGVCtBvjA
 Y4BlDDBiBw40aeJ2Kvss5nSxXF7DlAKgUYrCvl2RHnK8Ak46gvEtE83Q7zcXjqI9mbrM=;
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pp8WJ-00Cc61-Dv for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Apr 2023 14:10:53 +0000
Received: by mail-wm1-f42.google.com with SMTP id
 5b1f17b1804b1-3f18123d9f6so3364085e9.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 07:10:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681913451; x=1684505451;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KLQcibH4QQVSvQQ/bVwiqZIZ4Gz6ywI38VTMDoqxjbc=;
 b=bEKX6SJnrWORanRRQPPjoophvuaYsnqaE4iQbHeADS8i4+ablC/nsKg3dZ1phXdxWt
 d38RjJDSH4GCeWL6TzS096QBUkagWrKwOI5l+C0I6R3BZv+2ECkBfR1E3f07Tva2En7+
 wnp1ECpN7lL7YpDJhsCmF/7JlEtbQwQzc13qxraMC6bJbADTt8KqEPwoRAPhwRDnruZo
 NuxaG3d6ldEN/OmI/Cdt2+QNAguRNvJJL0lY/Tch9M1URJ/fsPv+cfhNqG/AX++MG1qQ
 /r51VQ6nVwm3S6k/CZsI5IBJIrNJp6VEqJi83d3kDV330NtnOJefrprmPeHXfmLJLJBm
 KxYA==
X-Gm-Message-State: AAQBX9dnRR2Nc5ejpQJn1vBFFmk/xTAb/Zl1GvgHyYgjt5ZUyOF18g7j
 +pSvectEXJYJRCVFZikgnQA=
X-Google-Smtp-Source: AKy350a8pHXX4xoTqjmCp8VzLpP9Mr6nWBR11mzOBYZ2TpzRIUZcgG4OmK15TMBBeqCZ8wsfO4biJw==
X-Received: by 2002:adf:df05:0:b0:2ce:9d06:58c6 with SMTP id
 y5-20020adfdf05000000b002ce9d0658c6mr4762888wrl.53.1681913450788; 
 Wed, 19 Apr 2023 07:10:50 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-204.dynamic.mnet-online.de. [62.216.205.204])
 by smtp.googlemail.com with ESMTPSA id
 q17-20020a5d61d1000000b002faaa9a1721sm7612089wrv.58.2023.04.19.07.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Apr 2023 07:10:49 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Wed, 19 Apr 2023 16:09:24 +0200
Message-Id: <20230419140929.5924-15-jth@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230419140929.5924-1-jth@kernel.org>
References: <20230419140929.5924-1-jth@kernel.org>
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
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1pp8WJ-00Cc61-Dv
Subject: [Jfs-discussion] [PATCH v3 14/19] floppy: use __bio_add_page for
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
