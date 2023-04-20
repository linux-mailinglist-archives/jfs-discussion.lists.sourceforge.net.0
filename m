Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E75F86E8F02
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRBF-0001sh-Np;
	Thu, 20 Apr 2023 10:06:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRBD-0001sU-RK
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/zlw+dyGlfnLYWyTWZyG7072cksvgegzTzOhlPnlIpY=; b=KXzMAWyAL6Atzo95e8Hz7kDcyW
 reVRuMcM66r8HQVx3d17xJ9lmUy9AtkpZ/NiYHRj/aqlZVY+6uqbNCKhdJ4rv245wkV2AdulHfboQ
 n4gGqZeqCD0emRj76ZRyklZycrAbdc67R+VN2V9Ax7o72KNvIn4UWFpPFvsMm/AAz+50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/zlw+dyGlfnLYWyTWZyG7072cksvgegzTzOhlPnlIpY=; b=FRx0rsU5sR+licbmirpEcPOObd
 BPJ3MKVxfWm9LNrESZRh9iBBsWbCbBRR1CMFa38pgJth/JenA2N0yByoNPXD55j1YgfYmOBMUGozE
 jV7RJwwajIEg1AcryOtNO3TIn+0E/ddVGkPX3o52RV3pwGPQJUN2FFZuaW9H8Cn6Vqq4=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRBC-0002ep-Ek for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:18 +0000
Received: by mail-wr1-f47.google.com with SMTP id
 ffacd0b85a97d-2f7c281a015so281290f8f.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985172; x=1684577172;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/zlw+dyGlfnLYWyTWZyG7072cksvgegzTzOhlPnlIpY=;
 b=gyYPQGh/7HV4D2ubeRCCX8Lrbth/RQuh8ZwBT3di+ZjDrh+tBZih/toDZUF9H7PlZV
 B35asIWmEWZBVRwdE3v21jqh4tUPWaPBUxC15FEyDlN8dyPWurujOiFANfgkI/f149z7
 EwMNu9uSOejoGKR1x288Udrt7v9iH7EijivWI2ckgPfVGSB9PjueszVOlHGRkdFe9Eyv
 ZzA/HRHBLoC1QvcLHDcjv1wLQIh9QyScQxMuwJOuw51y45XZxZ6W/OH44z5k3MA9L9MU
 CCWCrF2RxAoizugVk/9IY1/nneGvLReXg/KTlt/QxeSUACfd8DcC+50lQsHx6HBi8i4z
 Lifw==
X-Gm-Message-State: AAQBX9eRZM+dr940LPxl8Qf80HoqW7f9N5nZARuuybuQTEJeOuTvnOIh
 8TivVX2BBb0Yg8s4rOMKUqc=
X-Google-Smtp-Source: AKy350b4+pGxVTyaXt7ZP5FpDVVarQnYRrcgBCCIE1KFKr5Sq8P0zgMU35+ypve4Bt1qBgDPW2LUww==
X-Received: by 2002:a5d:640a:0:b0:2ee:d53b:d9ef with SMTP id
 z10-20020a5d640a000000b002eed53bd9efmr813643wru.55.1681985171893; 
 Thu, 20 Apr 2023 03:06:11 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:11 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:57 +0200
Message-Id: <20230420100501.32981-19-jth@kernel.org>
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
 Content preview: From: Johannes Thumshirn <johannes.thumshirn@wdc.com> Check
 if adding pages to clone bio fails and if it does retry with reclaim. This
 mirrors the behaviour of page allocation in crypt_alloc_buffer(). 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRBC-0002ep-Ek
Subject: [Jfs-discussion] [PATCH v4 18/22] dm-crypt: check if adding pages
 to clone bio fails
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

Check if adding pages to clone bio fails and if it does retry with
reclaim. This mirrors the behaviour of page allocation in
crypt_alloc_buffer().

This way we can mark bio_add_pages as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/md/dm-crypt.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 3ba53dc3cc3f..19f7e087c6df 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -1693,7 +1693,14 @@ static struct bio *crypt_alloc_buffer(struct dm_crypt_io *io, unsigned int size)
 
 		len = (remaining_size > PAGE_SIZE) ? PAGE_SIZE : remaining_size;
 
-		bio_add_page(clone, page, len, 0);
+		if (!bio_add_page(clone, page, len, 0)) {
+			mempool_free(page, &cc->page_pool);
+			crypt_free_buffer_pages(cc, clone);
+			bio_put(clone);
+			gfp_mask |= __GFP_DIRECT_RECLAIM;
+			goto retry;
+
+		}
 
 		remaining_size -= len;
 	}
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
