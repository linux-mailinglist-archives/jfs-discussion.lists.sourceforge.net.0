Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4496CF047
	for <lists+jfs-discussion@lfdr.de>; Wed, 29 Mar 2023 19:07:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phZGE-0008O2-85;
	Wed, 29 Mar 2023 17:06:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=445a3f1bb=johannes.thumshirn@wdc.com>)
 id 1phZGB-0008Nf-V4 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S+BFwWLZNY+XTztAeZgIYhwSmFf4miqDC5Fj3p8mNDo=; b=ECOlgyBUFyi3Mx+Sl0TJnJYniQ
 a9kL3CQosPt7+PTrZnPPTD2PUvxkT4lgoUdFPFtpLQUll8xIqbOEdJ1R3QT7CgdqHmeBotnY67y/0
 n9MkwKUYn5d3ugIWVOU4XeKrji+31QEC4kw2C0q6QEyIDEbIkW9vDLr+Rq6z6DUxNHAk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=S+BFwWLZNY+XTztAeZgIYhwSmFf4miqDC5Fj3p8mNDo=; b=XdKWL2cjPh+j+fgI68aDlVyZo5
 niDRsopDAleoDw5IzrHvc1yjCb55CyPtl05Bet3nf5VWMG4IST4hhCFwdiDUYS6dCVUWK5cCnGKCG
 t/3EZ319BYxQrjCvMHpbdE8vk+Ea/AVRo3JMnOlJMWrWVYAS0L9QqSWtfuKg7aXIL2Ds=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phZGB-008aXc-FZ for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 17:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680109615; x=1711645615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M6quq1m4TWQi9osOf7yGXSERsZmThGo4OIw78ZEc0Rk=;
 b=LQqaE53g6gBGm9E4XjDUtfwMdoznSgky+mtx1L5Dt1HRfVcejyqaxgZy
 GJMY4eFv3pVbsh+OpMi+H93/iJphTrJ5k6ATxnJuqPEofzB21XTuSkgIf
 CBqlZXzD1MmMJw6fdt9i6Aj0Qd41/eMgVp3OOzqmELT4slUDadiPiTSu9
 IExTpvtzKDWqgAI7AJwIVqEo5cTA1wp43mgyqUr1gPYrLpgtVZx8dKTeY
 Mu9tTWvu0xKsHMrL+tlNrmtqSzVz47VYRTHm/fV5kWBftHrKVn3IfVMrS
 otwm9RUd7Jed2G4gik+mLz93XPRU6pv7VQogQoWvPkg+429yK4D+SKn+V g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226807076"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 01:06:55 +0800
IronPort-SDR: r1O6tfTXEXqUuYNIqI9M3xLGtz6ZgkDrpqYPOj0IKFkAb1URML7r9hPTUQcZ8dwE69nYBCcweP
 xGFTBwGwJUqneljM4bFk+lna+RPfkrRHLNnBfeGYrswSjC9fxrh+0V5Bcs33XnIj6ElzgcsPz5
 7lWGvv8BOWQnw7Q1HfxlLXk5CTi0ddwMSa9KCFqgIk3G/0krWecphVBXyMY0eLPUHcTzc0f9Ua
 5yD0AfBEl0a423M9yXP5i87wqa3ndNURapPOUfUOXRzuHnWaYphdWdgjIYaHxs4FpcpxHth7Za
 f20=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 09:23:04 -0700
IronPort-SDR: EfB1mid7Yp3/W8x0cv1xCvTqB4tmpDb7gKC20U950XR4Kv25uQEBdHD2sX3z0ZSLxA8GI0cOXU
 jE1Ay6UJMQxVqHXD8lvWm2TZROkyzsfKMaMopjdSYaXULQyEClmuQw9VtaHAuYJDBQyPZUJCRQ
 vKqkM9YtA+Ksasx1R3ikQB7dJRHIW5dQWGWw/GmsLQGP/xKSrev88U8DdNIM9yoEmWmnU6huII
 pnzvTC1RT/B69S+Qs3+2aJU0lcD20LvjPRlcXyQ/bpLKfriwZ9RZdJzOSPmCY3zHV4Gxs0dMBD
 Qdk=
WDCIronportException: Internal
Received: from unknown (HELO redsun91.ssa.fujisawa.hgst.com) ([10.149.66.72])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 Mar 2023 10:06:54 -0700
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 29 Mar 2023 10:05:58 -0700
Message-Id: <ef742ee32fd0623008114e929d9a3e688fd721f7.1680108414.git.johannes.thumshirn@wdc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1680108414.git.johannes.thumshirn@wdc.com>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The zonefs superblock reading code uses bio_add_page() to
 add a page to a newly created bio. bio_add_page() can fail, but the return
 value is never checked. Use __bio_add_page() as adding a single page to a
 newly created bio is guaranteed to succeed. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1phZGB-008aXc-FZ
Subject: [Jfs-discussion] [PATCH 12/19] zonefs: use __bio_add_page for
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
From: Johannes Thumshirn via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The zonefs superblock reading code uses bio_add_page() to add a page to a
newly created bio. bio_add_page() can fail, but the return value is
never checked.

Use __bio_add_page() as adding a single page to a newly created bio is
guaranteed to succeed.

This brings us a step closer to marking bio_add_page() as __must_check.

Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
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
