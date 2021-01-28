Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D73307617
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000Va-Cq; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Wq-0007Km-DM
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ydgKd/bJw5NmKZbqbN7Axd/14nJ/brWam3OMoWN5cbk=; b=Gm7on34cwwpt52OB1psI5P0wIZ
 KhjP93REf4bvT0w3ZDunOtpxA9A7BsYAuGcN9CII0boQKfTH6h2ITNySJSwSdskNoFu2mW4AOGknB
 AOgTtz2Skohh02a+T/nQpVlk6RY+8KaqJU7r55pq5kH+p+Fkf/cEvpHHcQ2Fr4kcamL0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ydgKd/bJw5NmKZbqbN7Axd/14nJ/brWam3OMoWN5cbk=; b=V+laiecn380Yo5C1CoaDCtAw4A
 UE3TfCaJBMKdF6NSXCj1X+WAED0MyN3kO/K2ga96e9aQfEg10uKvprKIUHM9orCBLTOXIE9PA5qOo
 nYUOXsyX0r6RPw1ojeHYYC6RO5U1pg1LEQHGLpIn73wZrM4/SZrstR4t76CXRPCvBouU=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51Wd-0000Yw-93
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818131; x=1643354131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OE6wZQGKF5NjVuNViqgkr5UqZUb/ZMMrnmgRjBTexFA=;
 b=Sqdao1XSKkBzZcIyE3SurvaQXKYyDJTa+Mu9B+UnHJvL16+ESsuyDD6K
 LzIyzA85SsqhFsdfVNPETX8kqKwp4YsAUJpYuFh1z64c5j+qpK7OyHIxa
 VbtsGrgD9zt2x2fKlqZYPULryNCC/zmHsaxbkXOvdq/c01LnKDzxuq5p1
 STRwse9XLKyHg3QQEOiRolMAel4aDrQSv9Go0WC7uI0Gs/sFf8tpZTZOv
 AIoFbiG6T9vLkUu7hfq16xGfFQ3CsqeuCI2Niv/1Q/I+ZN/wkKV+1A4L4
 tNpHjnW25v/PVpmY19HXjICPX4cX7n9HQlfHHCRjOUptIMydA7wcSCO1O A==;
IronPort-SDR: l+XLL4yQXDJxCZYxNje2W7ZOD1kBrac5veWbn2HSQDirFdUcIYoo+3OcmNMmBYu5Hnj2KlkjbD
 rcDBuhL4U9xoEgeDoXw2m8uyK/OTM54Us59WonJIWIm5YAdd86hp3n3SQYmsCNz8uBnVCoxXuO
 TOrLhMvKBmjOuq8MNjYsER8Rc5CxClndyn3iG/DvMNj34mpuVeTZZkU55HBKIfQkfACrXAGzU6
 OrqCEUrThiQNr/Nvs50+LceGvHrohF4txiQxOZAL4Gheccw624kYOeZSF0RD4mZDnWxS92fqcc
 LqM=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268892647"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:24 +0800
IronPort-SDR: qd45DyNwv4EWbDUa3Bh38t+3kvU6xoKhs7yoZvHBK/3uANWDj+2iTpPey9cDBlgHe7ahCWvP2z
 4fAbK905KVKfNSOotsWzdiFaITLEFgdzPA3099G+Jqr6BrxUHoxuyxun30CeXo6BeJpZrDcNSi
 X0UCjw86V3tK2bAXbWZWxdctcOIj43YQg+lQoH9kQmhCtcjgwTLbQR3o5qrzXFFVtiKjvIOiYi
 FgqzxM5ZKg5VmokW4p6FzYM3GLebK8XL0U5vQgwiIwkYa3mLZjrBRoL3fkaTiMcp1EFQNqNiSu
 3VAXWUiq4AhphJBdnUylTqJW
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:59:44 -0800
IronPort-SDR: AdKYJH34AY4CiVzOXrR15FurWGZi/qDC6z/alYko7jfVcX/SfFhaxUFqHY45DLkP4HiXq60mY4
 qy4n2aJHjpVtmV4fSh3ShuNif1qvectRI2b9x90Cd2PVCzWhg42ZluTJX4mv+bwQtY61xYcAp/
 v9bG8JoB/eY2HEcD52Jlws++S0SYBgnZiIiDuQlpbjK+vhOG1JlBdY+QSI5Hl4fkjAcjiES8aY
 m35tunBPrJVbQ/UTOrTX0lDDjwM/GyWBlapp84/HLby91yE2yFuR9fqy9YimXKC2AojA6XdL7Z
 KBU=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:15:24 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:26 -0800
Message-Id: <20210128071133.60335-28-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51Wd-0000Yw-93
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:45 +0000
Subject: [Jfs-discussion] [RFC PATCH 27/34] xfs: use bio_new in
 xfs_buf_ioapply_map
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
 fs/xfs/xfs_buf.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/xfs/xfs_buf.c b/fs/xfs/xfs_buf.c
index f8400bbd6473..3ff6235e4f94 100644
--- a/fs/xfs/xfs_buf.c
+++ b/fs/xfs/xfs_buf.c
@@ -1507,12 +1507,10 @@ xfs_buf_ioapply_map(
 	atomic_inc(&bp->b_io_remaining);
 	nr_pages = min(total_nr_pages, BIO_MAX_PAGES);
 
-	bio = bio_alloc(GFP_NOIO, nr_pages);
-	bio_set_dev(bio, bp->b_target->bt_bdev);
-	bio->bi_iter.bi_sector = sector;
+	bio = bio_new(bp->b_target->bt_bdev, sector, op, 0, nr_pages,
+		      GFP_NOIO);
 	bio->bi_end_io = xfs_buf_bio_end_io;
 	bio->bi_private = bp;
-	bio->bi_opf = op;
 
 	for (; size && nr_pages; nr_pages--, page_index++) {
 		int	rbytes, nbytes = PAGE_SIZE - offset;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
