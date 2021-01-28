Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D37FF307611
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000QC-D3; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51UM-0007Dn-C4
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IlifdQY2+zRxKB8MzEMz+3v6NSz07Bq7qNU/3Vzz1oc=; b=UFQkTS0awVPYhIOl/MSstx+sbA
 dummhMMO+hgkAGbInlwiaXOU8htyZeD9wtms2u1OQbaixFOxLMkBh5AzZtMxIg7ezVwmAEOC4Lvo0
 1lz9VdBVBfKElwLmjtOMmMUHw19015NMudV0uTSVf1HFOYFA8TIaw21bV77sw7AdL8Eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IlifdQY2+zRxKB8MzEMz+3v6NSz07Bq7qNU/3Vzz1oc=; b=RjKdNL8OLADNSDPA4ZKE7tAZYn
 u40LBOuWgXKtCZKaxCa+XhSGN0qKBOAM31s9MrKBU2rmol0eZ5Mt3IOOe6C3VC35/VV14J54Kms6V
 22BibhXiMVbjpf0NcjOXmtEmBDAYK52eOjfS7Dn7aOVBevmYRNO7k80aOOxT3a1BJLKA=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51UE-00GGzf-TO
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611817982; x=1643353982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OzcT2XWni+wbNY2uowp8HTdSyU1JsS57dIOzGLP71ak=;
 b=HUgQvg/rNURTiS05/KVeWgjkL3iZ4YJkSCpc9p2BApmHbEddTG6YMopn
 3RgrPulZhFwv5RXIkT+ItzCxBKhRR4s8ETNTvZec/dV/fKceDNj66Xr2J
 Ji3luU6wuFb9GJcA72ODWxAqwHVqwV8cmkNZZYdOLs3t3WDQKs+AeyY5m
 Bg4g91ImjHwM1uUMzvTp/PXHVZKI4nTw9nr1t6Wat4pu70ctpnbLyj/6J
 KMUXwDgNNjWRsSJXZtNqyhJKVuB5dUeDdjLqhDNkegTG5pIAsZaYY/grf
 PvLdfYKExnDO9PFHlowRueuqL/tsefBZJMpF0lOPsJYGm/RL8lX9kSdGI g==;
IronPort-SDR: FArgBHtpiWTY84KJXdrPs898JzrY0D7MT0atonbFOPjlAKXjhzYhVDwA0p1i5t89HE9yDA/L74
 tNOiatts+jOiyoU5yDHA+3l4CMc8iM+kS8mPcTaA0syGEA460N2fRmQXX1rVgLUjE54LzI6dGw
 +iDHI8GJNBCnILk5g/8OYqHGGQqh403yoQLIW7H4Tm5PKYW86Tv52kGaOR6sl83Bx1gAScy13i
 3SKL9+oOKZJ7SdgcOPcY2A0RN+jSmOHA5taLTKJ+azxUN1CUhAALGDjuRN9qySQ2iyCWEhj0q3
 mUc=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="159693799"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:13:02 +0800
IronPort-SDR: XxpXM6hsXvg89foLZ1RqInUq8874PhXhyQP5MqDzYb/U8DG5H46zN8RcqeE7uiRU07e3UDjleB
 awQlZZTobvrFRqW1ldvY6TZ4I03/wFAcdbvWgSUURvx6Mz4JRZtYrDvVGDLDtiRZ1q4xWRIpvw
 pMsYsz6lu6GPWZ+1W1KCK7MAOIVMhurh/aXoSS+EmcRlew8yiNfPsUimLfpj8bU5OXHz8MHiBg
 gx08D0JhuSEW3/PpeMjJeSc4qs8v2hqV6YhIHxCtBTSbVlPBnIIKNiz/zshpWmDy34ZNADhpon
 y8VaFs1dB+ChmCF77BelTy+u
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:22 -0800
IronPort-SDR: m8MWhLly+Q/ggpFQoQazEvRAK79hMprrsJeibomNIX1/4xtKgak83IDhV3hY33IYYgETWfckla
 12cflgJcZOLhtYF332W1ZeqMwkaZsc7uQahEN2f8ydynExvlY4KkvRqWC31LBbVv2+B3KXuSeg
 s9mXwdZWg1TGYc2w+IbnJALYEzC776WPgdLPtLGdrMUnCNPoz5WeDSYQd/QZ1Y+MzxJurZd/eC
 94O7CZ/ZfohxaTfsL58Np58+H9TOWMfDJbBI8BFZ4728SkC4ncTHu1ybMvyhjmP7gPrroYjKqQ
 UWE=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:13:02 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:08 -0800
Message-Id: <20210128071133.60335-10-chaitanya.kulkarni@wdc.com>
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
 trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51UE-00GGzf-TO
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:42 +0000
Subject: [Jfs-discussion] [RFC PATCH 09/34] dm-zoned: use bio_new in
 dmz_write_mblock
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
 drivers/md/dm-zoned-metadata.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/md/dm-zoned-metadata.c b/drivers/md/dm-zoned-metadata.c
index e6252f48a49c..fa0ee732c6e9 100644
--- a/drivers/md/dm-zoned-metadata.c
+++ b/drivers/md/dm-zoned-metadata.c
@@ -723,7 +723,8 @@ static int dmz_write_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk,
 	if (dmz_bdev_is_dying(dev))
 		return -EIO;
 
-	bio = bio_alloc(GFP_NOIO, 1);
+	bio = bio_new(dev->bdev, dmz_blk2sect(block), REQ_OP_WRITE,
+		      REQ_META | REQ_PRIO, 1, GFP_NOIO);
 	if (!bio) {
 		set_bit(DMZ_META_ERROR, &mblk->state);
 		return -ENOMEM;
@@ -731,11 +732,8 @@ static int dmz_write_mblock(struct dmz_metadata *zmd, struct dmz_mblock *mblk,
 
 	set_bit(DMZ_META_WRITING, &mblk->state);
 
-	bio->bi_iter.bi_sector = dmz_blk2sect(block);
-	bio_set_dev(bio, dev->bdev);
 	bio->bi_private = mblk;
 	bio->bi_end_io = dmz_mblock_bio_end_io;
-	bio_set_op_attrs(bio, REQ_OP_WRITE, REQ_META | REQ_PRIO);
 	bio_add_page(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
 	submit_bio(bio);
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
