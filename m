Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECBC6F41C5
	for <lists+jfs-discussion@lfdr.de>; Tue,  2 May 2023 12:36:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ptnMs-0001cB-Pw;
	Tue, 02 May 2023 10:36:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=479dded8d=johannes.thumshirn@wdc.com>)
 id 1ptnMr-0001bm-0q for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/6KQVMVJjp0AequxTaW1iO0hSh8sKSEwU9ffPaEV4XI=; b=NN89UA6dlKBUa3CtRcN5yWI8Hj
 s9LXMG48GLLQL/1T2xyZSBen8PV3aYvMTdzs5BgD6WkjBVM/Gn0CkBFBAh03EngCX+IT4Bnzcoi7i
 3OCj8gJkNlMe+1qa6VFUr+QG+Nl3BDsMjB32Q4WxFXdnY6j6CYzx6eIhzcKNYmGkgtho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/6KQVMVJjp0AequxTaW1iO0hSh8sKSEwU9ffPaEV4XI=; b=Il46IABuWqDwuQsrupoUoE3KEr
 95kyw5TKvLh1Gms2Ma5blwVWIeiE7qPlksILXeZyq+M7buuLkc9bsdy4V4OBoyixleJkOWGzRcVqs
 /CDsOMnvl70BopZBhxCbSNnaFjgq83SZtP890JpvDuZp5+tmp7yk740nT/KoAEFoxW+8=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ptnMp-00056p-AQ for jfs-discussion@lists.sourceforge.net;
 Tue, 02 May 2023 10:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1683023779; x=1714559779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rBYMP1Pe8TwSmYGwoyghl6QR/JjrYRcvKJesaYzswP4=;
 b=EOFXDXYoQU6htOFZVW2/YxNOd9SW3L4vAtVszEPmcoupsY5dL1iywqDH
 QeBIaS+OngA3ivu/HpDIdE1AOf7naaBuok0v9FnkS9rR1mWF/RQF1Ln7X
 nxwu8PSmm8AgGx0dD9vWR6KWTxMPV7mD484/oZV5799noBHDBVVKQEg4a
 /9T27RAJMiMx9L3HAmlj37yDpDmn09NwT8QJEQzYXIi0gDpsht682KmJw
 aX2JVurgkUwxhVWCcomIEAueF8OC9ZspkkGk3x8RTyq65U1KwXXE3zULh
 evFFO/qXrGDts4zeZMgPzrxRwYgAaRcCLvb/7nYxRZMuCIe+FDgFhzIjG A==;
X-IronPort-AV: E=Sophos;i="5.99,243,1677513600"; d="scan'208";a="334136162"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2023 18:21:02 +0800
IronPort-SDR: 8hmb6//4rVu0si1wYi8ZRtqm7341qV0MEJSAvACMvZZUYUb+/6dgITbiD7u9bO4JGndEbHIsi7
 9zhm8UmXhkUTThU9F1iY/Nf0JY8rskreTKEQrtzMThHVOESAvYPgLn7Bi46l7UJ9uz+tDNLt8I
 9x4xF88lblOvzdH0bC0YfzkHvAvEkYAGANKGaPw4GR1NTAwQwQ2HV3uWbfbcsIOvNASC7OpzQk
 D0TbvSiv3xl59UKubC/0kaSIR7SXVMeVGkOw/VdtarIBqMUq+QtlYshlMGQ0VJ9kXQ44Wyr2f/
 G/k=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 02 May 2023 02:36:30 -0700
IronPort-SDR: SZmZ1SHPv3v95++GFX5GNI6yfBnql83s333Ffj/oLNOQmf9D8iy/39hpJOR20wh2bRQOn2BLgx
 JgK8optZpMM29mBuHDuYbtPMvrfJzCOPOjU1ETAscqM/qXxlIOLWAiI2L9V4G24RfZiHJtRFwb
 nHkwAJfuiGHAeRk1K8JkyFhVzb1twO5S5KKCSXFwkpHiNNZYu9hoApYEuIS5MMXDA41EViqm6d
 CXVhoNk5GYQRyxsfvtCIIoju6VaQTS+kujPXNp1hy/QiGKYe0KkAqZ3LX7HI48Z5fruOSDEpAU
 8cs=
WDCIronportException: Internal
Received: from myd008205.ad.shared (HELO localhost.localdomain)
 ([10.225.1.100])
 by uls-op-cesaip02.wdc.com with ESMTP; 02 May 2023 03:20:59 -0700
To: "axboe @ kernel . dk" <axboe@kernel.dk>
Date: Tue,  2 May 2023 12:19:20 +0200
Message-Id: <20230502101934.24901-7-johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
References: <20230502101934.24901-1-johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The raid5 log metadata submission code uses bio_add_page()
 to add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ptnMp-00056p-AQ
Subject: [Jfs-discussion] [PATCH v5 06/20] md: raid5-log: use __bio_add_page
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: linux-block@vger.kernel.org, damien.lemoal@wdc.com, kch@nvidia.com,
 agruenba@redhat.com, shaggy@kernel.org, song@kernel.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, snitzer@kernel.org,
 jfs-discussion@lists.sourceforge.net, willy@infradead.org, ming.lei@redhat.com,
 cluster-devel@redhat.com, linux-mm@kvack.org, dm-devel@redhat.com,
 hare@suse.de, linux-fsdevel@vger.kernel.org, linux-raid@vger.kernel.org,
 hch@lst.de, rpeterso@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The raid5 log metadata submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Acked-by: Song Liu <song@kernel.org>
Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
---
 drivers/md/raid5-cache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/md/raid5-cache.c b/drivers/md/raid5-cache.c
index 46182b955aef..852b265c5db4 100644
--- a/drivers/md/raid5-cache.c
+++ b/drivers/md/raid5-cache.c
@@ -792,7 +792,7 @@ static struct r5l_io_unit *r5l_new_meta(struct r5l_log *log)
 	io->current_bio = r5l_bio_alloc(log);
 	io->current_bio->bi_end_io = r5l_log_endio;
 	io->current_bio->bi_private = io;
-	bio_add_page(io->current_bio, io->meta_page, PAGE_SIZE, 0);
+	__bio_add_page(io->current_bio, io->meta_page, PAGE_SIZE, 0);
 
 	r5_reserve_log_entry(log, io);
 
-- 
2.40.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
