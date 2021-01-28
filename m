Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD95B3075FC
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000Ud-7G; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Wq-0008DA-Dx
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fkYxsAtBzSO1dfjzhw/v4500N9odUktYyPQ6Nh9If8I=; b=LF8C4MdG94dnwwjwGRv8ITK5S0
 aBC8/f8nCt0i0s7hsW+LAbe70i8YHdXeKsDLoEXLDM5UkUPiHht21zW6WuRUUkt9pmOzEmS7SoSsr
 R9FBYVu9p/9sR8beWlRgO/ApOPoVL9oUzQizMdjT67Ez1Gdeozh5op8N4TlgWfK85X8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fkYxsAtBzSO1dfjzhw/v4500N9odUktYyPQ6Nh9If8I=; b=RYDVco8R7xonJ1SwDpSD5HiguC
 Dm0w/kp5QOlzu5Q9gFTX1NCUTiUnbv04KJ8sZSeeeip7PyPgCdPnl0xHLnd9eoguH1v3fyYLoOo17
 KY7TnDK5fh0t4Y7If0L2wfqSVuWbMqNSdTSOtOGHzDcPP1lPVubry30ycP3dnoE+T4uU=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51WI-0000VM-TM
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818281; x=1643354281;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MfH3EN2qKmNoDMJp2ceJniIXfb1rQ8RA/+9VrY6oRvA=;
 b=OBw3Nypx/xZBKB5rZpXWXvnlYVXtB6r5PW84YF5b35O1CqJ6yh3NZwt3
 a0EkXXs2qXShEe9R6Eky170KYxY8RzHKyQmKWSXKBrS/P7WQ0GMGsJwIT
 NkeURZFPGQxH7bFDsHIagZvrs3sFNhBhsRLOXOSFimKSPqjn0Dr8IBHgv
 cEUPOzGV/icXzHo/h7T3Zrr2V8kRFbmu0LHL3VJhb3dhcPMg4pORIqK7T
 nccp/3pjbGCNNYuEMIvnGQJgoYcpcD0hUxlBvfxvthSoenkBqz5P0+dzF
 xliolF+yX6k/QIZwnRULPkEyqQzyq+TC9FJf8RMRLRjrTHCKqUrZN1dIe A==;
IronPort-SDR: hko4eQgSzcOILfBponvUNVN2ZA8WpGlXWAXJ+URYarbzE/SxpbN9upPPfn5PViqslL1rZ/AszP
 D71J1kTWTP7qNHn+tAvoppn/iy3OfLj9H19T34a2GTXh4oaiDv7VdTTgnuY9yHULul6mOXDws0
 +5qTPOmuKa/4LbU+w1bHCRSOHaeS2J039jyA6uha0y37egNDjIaLER3ev/edIEtp11CoMsgYH9
 HQnmRvdg1RkWNzwSWf35ZSLL8eYLdSmNw8114SnPH6Kpqmp7GWhccnuSbgxISkCvYroAULUrHr
 dsg=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="262549157"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:17:58 +0800
IronPort-SDR: FoJyh4gdPQn8LUqOKilPOG0AymfcRhmUJuz7AagW2W0TSxZvSKW2FOZjjzHyl9ehsr3VevnyYa
 eskc2buRv19hQsX3QxxGiDL6IEErJKZ/vJTeqz/teMiOKmgeHGBuuDvn0bbdAjeGQq8HE1CKRo
 aMyF0/CLPGs2X7bRH4vRnjyd3W/NuSr8Mi5pzbV3qXEEFhIiekhiIKaqpoG4ObUz3OAIauIFZm
 OTf09l6SaBM+9DZyNhCjZeymH+/Ox/iXaMnsrPn/RjDdajPUnTrIiFXmiKeFaXzjqlGm9w+oZS
 AbTIdILUmvTMXLjvLpSLAdE9
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:59:28 -0800
IronPort-SDR: +1TgXZ9HjoaS+86zh+aLwx6S7ZpAYQ4FpPhwS5t1uQfka+31mML1LQsLKCwFYYGr030vY+BCmC
 AGfrPosPVl95WjEssU5DCDJZAyR1khEX1jpqrqTT8P7u968xhLua2/lVUN5jQ7ABVZJAwAp2MY
 3XKOPyoMsT52VNuagfol6rCenkg2OIsIErUkF58mfwGPLsAlDeR+kVK0eqUX532NsUF4ctVre4
 Iqd0vyO+udw10x//vZBdiK4usAo9yvQxvOxxYG203IoYDBmyGC3oa9VGSQBs+2yVysQ7ZPCJPH
 kDc=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:15:08 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:24 -0800
Message-Id: <20210128071133.60335-26-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l51WI-0000VM-TM
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:45 +0000
Subject: [Jfs-discussion] [RFC PATCH 25/34] ocfs/cluster: use bio_new in
 dm-log-writes
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
 fs/ocfs2/cluster/heartbeat.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/ocfs2/cluster/heartbeat.c b/fs/ocfs2/cluster/heartbeat.c
index 0179a73a3fa2..b34518036446 100644
--- a/fs/ocfs2/cluster/heartbeat.c
+++ b/fs/ocfs2/cluster/heartbeat.c
@@ -515,12 +515,13 @@ static struct bio *o2hb_setup_one_bio(struct o2hb_region *reg,
 	unsigned int cs = *current_slot;
 	struct bio *bio;
 	struct page *page;
+	sector_t sect = (reg->hr_start_block + cs) << (bits - 9);
 
 	/* Testing has shown this allocation to take long enough under
 	 * GFP_KERNEL that the local node can get fenced. It would be
 	 * nicest if we could pre-allocate these bios and avoid this
 	 * all together. */
-	bio = bio_alloc(GFP_ATOMIC, 16);
+	bio = bio_new(reg->hr_bdev, sect, op, op_flags, 16, GFP_ATOMIC);
 	if (!bio) {
 		mlog(ML_ERROR, "Could not alloc slots BIO!\n");
 		bio = ERR_PTR(-ENOMEM);
@@ -528,11 +529,8 @@ static struct bio *o2hb_setup_one_bio(struct o2hb_region *reg,
 	}
 
 	/* Must put everything in 512 byte sectors for the bio... */
-	bio->bi_iter.bi_sector = (reg->hr_start_block + cs) << (bits - 9);
-	bio_set_dev(bio, reg->hr_bdev);
 	bio->bi_private = wc;
 	bio->bi_end_io = o2hb_bio_end_io;
-	bio_set_op_attrs(bio, op, op_flags);
 
 	vec_start = (cs << bits) % PAGE_SIZE;
 	while(cs < max_slots) {
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
