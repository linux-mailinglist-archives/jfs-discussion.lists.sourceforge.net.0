Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F94D6E8EFA
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 12:06:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppRB8-0001rf-9l;
	Thu, 20 Apr 2023 10:06:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <morbidrsa@gmail.com>) id 1ppRB6-0001rK-LH
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JN1Y2bvJVpq6/q4dmcPnKZ0rBsOm/7Q8Ad5f4nAyRoc=; b=YXrf/ePESNCwapVx3Jn1KwCkUb
 4Fhx41QVLk61DVrvv3Og0LRuFkDxOABRQJuNm7xNDeEFbvGMMFO6lV2h0aub40U1ZF/9nUYeOY9Gf
 RYLYeBuFajxxqh2AP3+UN+nbpI/kGoFSZy7lPBcyiXwDIjeGvxq5FUwmC9pFVmbyjX4M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JN1Y2bvJVpq6/q4dmcPnKZ0rBsOm/7Q8Ad5f4nAyRoc=; b=Lj2CMOWNa8vQ+vnYxs+uMjhBPd
 mbK3Lygyn58vCUTBKZ33VgU0EFOKE+OqWNFBhXq/opiNc0INN7/dOZSZkJR3FEt+R+kx0ace7gpO6
 ejuxh5qcRQKkJ1M4yIpYfKRgOoWndFqgHjn1/6lPt0KxK+Jzj7k3mxJyRYOlWLjM49Kc=;
Received: from mail-wm1-f45.google.com ([209.85.128.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ppRB5-0002eP-7O for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 10:06:11 +0000
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-3f17b967bfbso14827595e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 03:06:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681985165; x=1684577165;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JN1Y2bvJVpq6/q4dmcPnKZ0rBsOm/7Q8Ad5f4nAyRoc=;
 b=lpTnQPm3iGO6TPEvUnjFJ4ehcc4PKGdwLmPMfHilyPP9Vcz4pw3cBCpoLPleYDpBzD
 OoQ/OAuXlly0SauI4Fuw6ON5iRmXMKwYFcyIj0LiboRgyEtcpJXm0PvkTCjhzJgBeLDd
 dMpkQkS9Do7lWQJw8kL7cklqf31YveFiBFxIVL4rF6/bRwulLBusrXkIby5P8nECzTWa
 VviO5Dmro3GkLpmMVHI+h9Pp8WakMZlo6Vpg8SWPngB2UuB9iMP4EyEhpNx4/OhDayuv
 z4mbW4rbxsxBVMbNYdenuj26B4WabvWHgRSoMHDCcOcQ7VxejCkvIkjhBP82LSu7KTUs
 sWaA==
X-Gm-Message-State: AAQBX9dpcCjNPCQ6pztF9r3/d+fOMzNVsZfquMf9sn/RGW5/+2UEM5iP
 cREV2JNZgwVt0u1kxGOc0hvECkPT2ws72WxU
X-Google-Smtp-Source: AKy350bZO9H6VdEX4U511+f90s6OY6x4jbtQEdcc2xOoFywxWKRM3Dh+QbBQ+ZMvXg8fuNS0QB1TpA==
X-Received: by 2002:a5d:58d3:0:b0:2f0:583:44be with SMTP id
 o19-20020a5d58d3000000b002f0058344bemr1030678wrf.0.1681985164633; 
 Thu, 20 Apr 2023 03:06:04 -0700 (PDT)
Received: from localhost.localdomain
 (aftr-62-216-205-208.dynamic.mnet-online.de. [62.216.205.208])
 by smtp.googlemail.com with ESMTPSA id
 l11-20020a5d674b000000b0030276f42f08sm201410wrw.88.2023.04.20.03.06.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Apr 2023 03:06:04 -0700 (PDT)
From: Johannes Thumshirn <jth@kernel.org>
To: axboe@kernel.dk
Date: Thu, 20 Apr 2023 12:04:51 +0200
Message-Id: <20230420100501.32981-13-jth@kernel.org>
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
 Content preview:  From: Johannes Thumshirn <johannes.thumshirn@wdc.com> The
 zonefs superblock reading code uses bio_add_page() to add a page to a newly
 created bio. bio_add_page() can fail, but the return value is never checked.
 Content analysis details:   (0.5 points, 6.0 required)
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
X-Headers-End: 1ppRB5-0002eP-7O
Subject: [Jfs-discussion] [PATCH v4 12/22] zonefs: use __bio_add_page for
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

The zonefs superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Acked-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 fs/zonefs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/zonefs/super.c b/fs/zonefs/super.c
index 23b8b299c64e..9350221abfc5 100644
--- a/fs/zonefs/super.c
+++ b/fs/zonefs/super.c
@@ -1128,7 +1128,7 @@ static int zonefs_read_super(struct super_block *sb)
 
 	bio_init(&bio, sb->s_bdev, &bio_vec, 1, REQ_OP_READ);
 	bio.bi_iter.bi_sector = 0;
-	bio_add_page(&bio, page, PAGE_SIZE, 0);
+	__bio_add_page(&bio, page, PAGE_SIZE, 0);
 
 	ret = submit_bio_wait(&bio);
 	if (ret)
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
