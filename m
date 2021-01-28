Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A3C307620
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000SD-7N; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51VJ-0002Y4-Cd
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=op7v6nvJVjd3jQjn5hbBOUkOhf76RIPcf/2tXAk1w0I=; b=EyHYpPT8rb07RFsJKCn3O+QT3w
 +Ng9fgbNShv06lMBKeL3uFWDx2eDbLr1VcD6t18KCOrxpWZdvc0q1X0X7tAA4qSyTZswnn7+zX92w
 RH2842rS/tF6tjuyQdR02Ke4rslFHrXzSMR+RCefQty88LAkNan/9/rtoquDbje8umV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=op7v6nvJVjd3jQjn5hbBOUkOhf76RIPcf/2tXAk1w0I=; b=lRqwRBDQ7ecLkNscOm9C9PKUlO
 9fAG6R0XT7sM48ZwrUntjLQrU9LlAuPVo7yiWaPsR5ebhsRvaMpaJ+2wLzq4eQMFOGMq6WLFdU1T5
 5SqpeNBIR0gjGg7PL2oHVxhTiHvhp1N5Kev4P+di9eUb7MXob2YSEGLzU7iswllancjQ=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51VA-00DWJf-2h
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818039; x=1643354039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wUwjN0vBouMAu1m5itQWMc9ceGIiyWjYqyXKNeHEsnQ=;
 b=UMR4u6W+HedQkH7xQ/3/xdjSBzmjHwrLcQaqz+egjJ5Eiqf9mAzrPiOv
 kr4eK+PMwwzNro9KOfAQEkuOxTx9DFqDTU2pcPUtKCZzKsP5b2LADC+KU
 kT5W0EJMmeLGxLr8ivZ9CTAGsADkZt7l4pe58rSq7gVynXjG9S0x6wMMH
 XLHCPqpYkZrOmPI7yY7aDbnoFphU1zYVoFysGEx4z90JZhoLpSJi7PLfJ
 ElRBO1rUD5q2e4s2uAnBuIOrWes6ZloD4iL50u7cU5pQfSkilBfm+nuMu
 /Pgo2gkx/85yiouc1+nLjn8luWJHOYG8UCNcp+WhNOspMw2SOcxybhYIn g==;
IronPort-SDR: 2jAk2V6y64PGJjVCHHg3kSGp1wkb2KrJohmGeWy5vUr3lmj4Juiz4eQlvLgROM7e5U7iq5a6/l
 zL4ZuyrIztq1Qe7SZRb8/xfoJNeF14yOm8yscjUrmxXRj5wuB4/jbDUvp44ePb4gTRTnbvE9hB
 hI3AjSC9U5YyGDvQx9Dveg++z4WpAJ/p3Kqq0ejFuQQmZVMwtG3tOVgEJkKRQuMyWCrca4d+Lp
 Ewg0LUjKOOlrZm+ge9IEwRcXbHfoh9fMEKI9UJppWh9teXwIOV6fub87Eie7gU+KQIx6qdw/HB
 LVw=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517379"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:13:54 +0800
IronPort-SDR: V9/bvWojVMyiWWZFhWxszxZ5qDwA4knvezI5JSRtxlx6QYsX8GxleGC4RhNEWTH1SY3ERN5B2g
 6KWgevic6vUV1Spn1YUsCRhVzOuEqO7hGIQ0lUwavFAWC/+wHpql+jdXRfq6De1NWsN/7LCTGy
 d7eDulDYiOO8TsCnLmQIL3ouaBx9M91b8ljfoz3Phwl7VWeZI+mxwtb1aOcWULS7wc4m0dZi/s
 TVULl4uGQu4c9sv2u9y0xcgWMMEIeybZc8epux7y83JHjgBreMehxvmeDaVr6oAsZpyWRbCrPM
 qaHpnGKtCdaoBJsWmf/oc4Nj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:58:14 -0800
IronPort-SDR: pB2cXSth9j9iO8qI9kro9aUnzxe7uC+CM4R5ezhi5mkNe3QJ3MeSZh+GGUOxW9ROBr/hgtgk35
 3kQYC2KUTB+4qbQnoUg89GyqXiUICL6Lbb6/fLgPHrp+IuvY60iwR3VPtR6IrHib1STZYvjFII
 G0U9LFUNwbOn5ju9S5MOKHMAKhFoQxnYNKdJKA68HgaqnFN4j9YRc5HgIY3H1XVVcQBHwY13od
 d8yfo6WXgScVxvO/+aDCj5bBUi8Qq8LHMuAKgJFuukK9k/tSzy9sPaWEv7Xl8jluo8DC44HSzF
 bXE=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:13:54 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:14 -0800
Message-Id: <20210128071133.60335-16-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51VA-00DWJf-2h
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:44 +0000
Subject: [Jfs-discussion] [RFC PATCH 15/34] fscrypt: use bio_new in
 fscrypt_zeroout_range
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
Cc: shaggy@kernel.org, sergey.senozhatsky.work@gmail.com, snitzer@redhat.com,
 tiwai@suse.de, djwong@kernel.org, gustavoars@kernel.org,
 joseph.qi@linux.alibaba.com, pavel@ucw.cz, alex.shi@linux.alibaba.com,
 hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com, sagi@grimberg.me,
 mark@fasheh.com, osandov@fb.com, ebiggers@kernel.org, ngupta@vflare.org,
 len.brown@intel.com, chaitanya.kulkarni@wdc.com, konrad.wilk@oracle.com,
 hare@suse.de, ming.lei@redhat.com, viro@zeniv.linux.org.uk,
 jefflexu@linux.alibaba.com, jaegeuk@kernel.org, konishi.ryusuke@gmail.com,
 bvanassche@acm.org, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 akpm@linux-foundation.org, martin.petersen@oracle.com, rjw@rjwysocki.net,
 philipp.reisner@linbit.com, minchan@kernel.org, tj@kernel.org,
 lars.ellenberg@linbit.com, jth@kernel.org, asml.silence@gmail.com,
 jlbec@evilplan.org, roger.pau@citrix.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 fs/crypto/bio.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/crypto/bio.c b/fs/crypto/bio.c
index b048a0e38516..20dab9bdf098 100644
--- a/fs/crypto/bio.c
+++ b/fs/crypto/bio.c
@@ -148,12 +148,11 @@ int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 		return -EINVAL;
 
 	/* This always succeeds since __GFP_DIRECT_RECLAIM is set. */
-	bio = bio_alloc(GFP_NOFS, nr_pages);
+	bio = bio_alloc(inode->i_sb->s_bdev, 0, REQ_OP_WRITE, 0, nr_pages,
+			GFP_NOFS);
 
 	do {
-		bio_set_dev(bio, inode->i_sb->s_bdev);
 		bio->bi_iter.bi_sector = pblk << (blockbits - 9);
-		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 		i = 0;
 		offset = 0;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
