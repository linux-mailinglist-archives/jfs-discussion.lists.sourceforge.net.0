Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C853075F8
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000TZ-S0; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51WN-0002ai-Uc
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rD7BJKKTV+Ylbuft/CBQ7weqp68jEkJYHhgEOH4GGW4=; b=NYks+KNMKf8XydWi3VCiTm7Nsh
 O2scfPU20ZWtYda/tY3XivWhn6di5g3V6qhdXzpAURw1LdkgUNz8e/q4OpnlvzlJk4pai6E8RRWqQ
 MlE93WBFeZeE2YRBAKiQdbUSnh/AUeIAZOhBVX5TRrJDjRHqTSUNNrCYPRbDlHfjVEs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rD7BJKKTV+Ylbuft/CBQ7weqp68jEkJYHhgEOH4GGW4=; b=EcrSr2kh5nO8fZvn+jm3pvz/Kf
 V29Q/saD0vycFmPnsEOfJPg6KpaYYsKVDRHhgxHvxw9Q/0ObuCcaag4fzjeg4ItgamafOI4IRBO/c
 +reU9r/5UAd9B1JlXNg0OQ8yND4tEQmaxwlHhbZomVLvalFAsS/nYFj8A2hnXBUo2m8Y=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51W0-0000VM-TI
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818254; x=1643354254;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3pvsXY5ThsGIWZu3d1vhsE8XvMocy29CAsL/BvlC2XE=;
 b=fHyqyveUMUwSR69BR6YGkYUlnKRCc+Bxpr6aQdH/BfvKnEcTH+Q+2yFD
 RjW+lj2wJ/LB26GvOGMVacmtFxAFm3oq+moFkdSXJ6R5TTOgk6RDbyf+z
 +XxSeAYX8klJBDibSMMQuoXSPxOavfykQHCovdnlo+5YGxtIXGhacC6e/
 K1LBZbItkZEJ/Gtg2DSIjyehu0KrezsUVhVz/gU9ysRkFchTOTc3PD13P
 UNyxbaC3IrcKyiI/6CxdBId/B8TKCqxX8tDguJdt/N8vdKKHL0gFDemOh
 VIA98Qd/Fj0JNELGnkj7dyR8PV9d9ZeqQj7kBF7nrpcYSrFd6Lg89kxc3 g==;
IronPort-SDR: +VU/ERgrLB54Xr+7mAOWecFvkQrctAU/vSOQYYffDHrUBuPVumJvjYnT1L0q/obsi0sm+CZpT3
 amMK1k6zHgPAsfFGKMYnbqAbd5Y10B26SOznYo8+17wGUqn7ZAZyA7JmppgMZJs6BGrVMc1qj1
 ttYXR76c1tUUmE6JeaT8I8sIr/FlIb4hoN8XplcwLGkZprXVUsVlgJnpRYjyqM1zX9/3z0vExb
 ctsVP+tbBKNS0A8OUd2ISVA0LbHQ1Ya8RIhi8i4sZ8RNN/YKGIMmNjiJtGBIIJZDZjrNSPjPJr
 JN0=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="262549111"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:17:26 +0800
IronPort-SDR: NyvItG/4nsMEd/0w8Po/Tx0kpdetV+JMzsocMf9dc/MUmGizaqVPMDycz8oFjCSbYZxBJnK97G
 dF6rH3rAgXHVew1dZtWt8eYyQPadEVF0xrnGwwLpe4+gCSmHZUzSLp0XjwIUmBYWKB9QSibVjj
 yHjjAANMMPpvoeLcxwpKpn4y2gVKxBFkgsG86Kg8tBcXgDkxYkKmseODF3m5e2+4DMxCcKfkyz
 kVP0smJ6RZzjdxBvVnK6DoCjqO5SGHAwRe6Xne1HMqzNnRTfFMbripz58jW7txQNELAXQXU+MP
 8tNxGw7aWGB6+qi62mzBYEfW
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:05 -0800
IronPort-SDR: /NPjYa5/vzKcQxwITziayqgew/xym2P+2wPZ/H6tqOBM0Xhb9g154b50VotcIn3s/gPeO6yJQj
 jaDu5T7BNEIYITi6TAhnovFoYzPUstLQt0EGdLi5t/kGP6Y/bNfbV9+olcDvctAzlPCNttcR2B
 XcI2j3jvNIAhA1FsWohm0Q1E2hEvaC5Uto6Y7wmXZKJ1CZQCBzspE+8o3ZgyvyjFSagVsi+kvR
 d3gH64xpw3ry94057Mia9wtqUGJtdB9qbq+w9vxtVohjFozpBIeHLdl7QNCYcftS3gwSjr5dcQ
 UPU=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:14:47 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:21 -0800
Message-Id: <20210128071133.60335-23-chaitanya.kulkarni@wdc.com>
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51W0-0000VM-TI
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:45 +0000
Subject: [Jfs-discussion] [RFC PATCH 22/34] fs/jfs/jfs_metapage.c: use
 bio_new in metapage_readpage
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
 fs/jfs/jfs_metapage.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 3fa09d9a0b94..c7be3a2773bf 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -495,13 +495,11 @@ static int metapage_readpage(struct file *fp, struct page *page)
 			if (bio)
 				submit_bio(bio);
 
-			bio = bio_alloc(GFP_NOFS, 1);
-			bio_set_dev(bio, inode->i_sb->s_bdev);
-			bio->bi_iter.bi_sector =
-				pblock << (inode->i_blkbits - 9);
+			bio = bio_new(inode->i_sb->s_bdev,
+					pblock << (inode->i_blkbits - 9),
+					REQ_OP_READ, 0, 1, GFP_NOFS);
 			bio->bi_end_io = metapage_read_end_io;
 			bio->bi_private = page;
-			bio_set_op_attrs(bio, REQ_OP_READ, 0);
 			len = xlen << inode->i_blkbits;
 			offset = block_offset << inode->i_blkbits;
 			if (bio_add_page(bio, page, len, offset) < len)
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
