Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 190DD6D024D
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 13:00:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phq0X-0004Ta-Sj;
	Thu, 30 Mar 2023 10:59:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=446327cdf=johannes.thumshirn@wdc.com>)
 id 1phq0W-0004T4-B5 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NvLJF7eTLo27RNoKIJRG6qSoRpaf2jS02f120/4JtBs=; b=dBdoyuv2dP6+XjfgHSLdVIhx1k
 6v28c+NEUJc1ra0KVehCnq9/R/W1utL3s0FjBVliii7Z/tfuHRrdytt1EyodjuDzZkS5DMEjc6gvu
 MD+zhTVsnLAOj3RUjd+uuFCGeiTQTwc0MoAg2OI2lYFcsVuMYZuq68zb/RZ/UHMb4+CQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NvLJF7eTLo27RNoKIJRG6qSoRpaf2jS02f120/4JtBs=; b=TTbF1qUxYZateMDPGjV8eYiCxA
 ATr2oOPpPMEd7vXAkgYo8iVWmHVmRhRREtP9ZYbq1Em1hcrvSLQd5FKyFYoSPw2RhwkYqSCNFDN1E
 D10NTBxrHbUoPLWEny08LVwI2HmC7BlcQ3ohrNCxnmXmmbzxrOoGg3QgNwfeCEwxAk5Q=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phq0U-0007Q4-Rg for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 10:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680173990; x=1711709990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Kw/gd8mi4cp3C+0+JmkC18fkS8wJMSIrrh7WtKkZNvs=;
 b=muR/JrtaN66rO3FDE3Pfw19567nwGi96vf7wIb64MyBWSEpwaf5EYZkZ
 5y1FNrA8rJluKumG1Ryer3is82UoOqwQfRNGT58jaglHdTU5PgPW7v/Lf
 82fdWxywmDhT310mnrcuEuF//qsKleGcSN7XGOcT2Bmz0JhPwm+m5G1jd
 +G4eBcX4wbDa+zmnmT2eyO6A2E8KdUBDblM+RzBf+qITzO9mAJKvMfyv7
 J2GaU78EDTymWQTi3SxjXAFzekdxVcsdtCM6vWt/C3AUvhNZrpDD7DrOy
 4n6KLitZNWrWcr28x6CHRZ1m/rv9Z52OCC4JuHSKz2JKbUa8jIjgKEQMA w==;
X-IronPort-AV: E=Sophos;i="5.98,303,1673884800"; d="scan'208";a="338948109"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 18:44:23 +0800
IronPort-SDR: Vokpe2wCQ6+YYGRMgnoNIGjeHbeGPaC+fgPJU5rRp3JG2lGr8ZQ19kfh9dKRo6dfiLfAQXbaiz
 +ngn78Jwd3ZTTzHFQ0MuSrjUGF01HxZNt0NL9IPWJBNCS945aHw7PKxif6NEgsIJ/gAy3IG5WG
 2pcO4kle6couvCCBcTA7IlSLHVfH+s/0g0QhIbDWzCEV8AOKJQy36qGqwQcQDB5xJTPNTR+wt7
 x3hHow221J0ahVxj+y5BqiTkFdsX+XKWkxsIB3uSUVLlYnQiUh0/OQs9WLeTq/IYRUahRieVCQ
 UqY=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 30 Mar 2023 03:00:31 -0700
IronPort-SDR: V9njnv+t+GuKggx1vZa0T1MyyD/4iSSXEJKOary+Bq17fidU3Wq1CXNYZJCw9uLZGgQvn++tes
 OUuz4YBad4EEj5SCwfzseRk61pTGeIXQTJ8sWWZ6C/a6IojWDHpOIMFR1kBlWwqA9+1RZimaU2
 9ugMrtf5vwEtfAfHMV1SAmH0gL4ClOl0L1H4690JPAzrH+EYrtPzKQsIBiaqdN4IhpHVhohUHn
 t7AtVhCoScM7RNoNSFn3XL939XSpDOx7ZCfy1+MZ2oQUID6IQmdyOsZrB+CvmCXJX8/vdquFwu
 xWc=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Mar 2023 03:44:21 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Thu, 30 Mar 2023 03:43:48 -0700
Message-Id: <d406d7e205f7c7e701275674f77c7e21b93ae7a5.1680172791.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680172791.git.johannes.thumshirn@wdc.com>
References: <cover.1680172791.git.johannes.thumshirn@wdc.com>
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
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phq0U-0007Q4-Rg
Subject: [Jfs-discussion] [PATCH v2 06/19] md: raid5-log: use __bio_add_page
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Mike Snitzer <snitzer@kernel.org>,
 Ming Lei <ming.lei@redhat.com>, linux-raid@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>, Hannes Reinecke <hare@suse.de>,
 David Sterba <dsterba@suse.com>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The raid5 log metadata submission code uses bio_add_page() to add a page
to a newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
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
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
