Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 496306E8F08
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRBF-00083Y-Ju;
	Thu, 20 Apr 2023 10:06:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRBD-00083I-55
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ExnlLXqiP3hLS8bpFiqaYIxJLAKQF5DCX5VPxtSPsPo=; b=O193BoWaMMZXrgDK5UNg1isgIN
 PDanYAed4Pd6XR66euWHNUDjUqY1qA9G58yggnenxs2pQw6eXv7hwTnXdgCjx2QmSnWjcvcicyFmH
 jKu2VXJq66Oqo5xiCJnfSyEFvE0ZJx1dqEbXjT1J0txbAmiO9I6vRT7mOiqyxBhWOAtk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ExnlLXqiP3hLS8bpFiqaYIxJLAKQF5DCX5VPxtSPsPo=; b=Mjnglu0gLds47UE1COVT4AIUNN
 GW4Mx9rsIi9pbVBarfF9oC7/Tkqfg/Q8t1Ji6EGO5TQOzITfqQULDjwM1LkcJzaXGa2MZRqmSgVkV
 Fa3LTB3DbuXGp0/TJu+DVC2Qe8XIem2yr1qdUPlWVE4LGjnL+xy0ln7ZOMDRxfL2IOQo=;
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRBD-0002ex-HR for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:20 +0000
Received: by mail-wm1-f51.google.com with SMTP id he13so966000wmb.2
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985173; x=1684577173;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ExnlLXqiP3hLS8bpFiqaYIxJLAKQF5DCX5VPxtSPsPo=;
 b=BoDNaDsT8NLI3gmCitPqrDiEwy74hy70Co3EB8BW75oBRNAyGG/V8z6hzp77rWby/K
 fuPtTK3EmpqHQzLExT6KCF73nocVIitv0eD2NNq6OGZUklBxtIeKS0VgjDZaxtWLT8Te
 323pM0eXsmI3GQwhfum1ab6AVGV9/IwmVtPo05t+OR9Se0RYk7FITwu5veWcV65w6fJB
 zDP6025kn38f+Gp2DNxOkyvceHqvtbrY5XhMiu/N1TZdc5Ey+uahg/u0q/nF2gaq1qQz
 P3M69SaCa7nWA4Pebs/3qSl43gtf68vjJBiL3KHNVmoNkFubEAUsvq8dV1oRfbYMFKbN
 /yEw==
X-Gm-Message-State: AAQBX9cLZtYUd86bBnZmeWhvQRa5+0gUh5O+BKigK6BnviDH0+m14pHt
 pkqGVLzSBj/S/IeZfntSyao=
X-Google-Smtp-Source: AKy350Y9Lh9XIY3qybGhOCpyPMv4/qCxT9O5teS3GZxkrMtKC5XpeBENII5mka0Be7VFkgyszAIoCQ==
X-Received: by 2002:a7b:c4c6:0:b0:3f1:7006:e782 with SMTP id
 g6-20020a7bc4c6000000b003f17006e782mr804698wmk.25.1681985173032; 
 Thu, 20 Apr 2023 03:06:13 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:12 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:58 +0200
Message-Id: <20230420100501.32981-20-jth@kernel.org>
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
 that all users of bio_add_page check for the return value, mark bio_add_page
 as __must_check. Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com>
 Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com> ---
 include/linux/bio.h
 | 2 +- 1 file changed, 1 insertion(+), 1 deletion( [...] 
 Content analysis details:   (0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [morbidrsa[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ppRBD-0002ex-HR
Subject: [Jfs-discussion] [PATCH v4 19/22] block: mark bio_add_page as
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

Now that all users of bio_add_page check for the return value, mark
bio_add_page as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 include/linux/bio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index d766be7152e1..0f8a8d7a6384 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -465,7 +465,7 @@ extern void bio_uninit(struct bio *);
 void bio_reset(struct bio *bio, struct block_device *bdev, blk_opf_t opf);
 void bio_chain(struct bio *, struct bio *);
 
-int bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
+int __must_check bio_add_page(struct bio *, struct page *, unsigned len, unsigned off);
 bool bio_add_folio(struct bio *, struct folio *, size_t len, size_t off);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
