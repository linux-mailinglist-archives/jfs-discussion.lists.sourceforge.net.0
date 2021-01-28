Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 683883075FE
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000Tt-V4; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51WW-0002bb-Jw
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dvC9Me5wK9/Qc86Uf45iC6WO1x8EG6yaJ6jU2oPZguk=; b=UF8ZaXwhrUAOboudj7epgPMVu3
 Yt/V0ssbZJAOVdg6FsNLBAJeoS2dy5eMSzQZ1y1g2aKg1LsRrVx2+NtrJOM5FGxe6sDQx38Cs6YeF
 7Xa7JPta9aSt5FP4XxtfUqkU/lTssy7xCzkc3WKlNueTvPx/XIa2KT1MZg8axn6Fe19g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dvC9Me5wK9/Qc86Uf45iC6WO1x8EG6yaJ6jU2oPZguk=; b=XXWnwL8QkYYXXwoHokEf5hK7Sg
 gr0ajRdKpOT/hbOxt/e1bBUBCjbij1AWAgQkwwEXo5Vp1CIcnhTEsVrqXmX/FCQys5qvTeAJH/ju5
 DWNKrDym2MMQLpnhIcjAenGS+VBZu0I+2lVtESAwrOqyfcJNPhGic5BxZBs8kIeogEU8=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51WG-00GI96-4W
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818107; x=1643354107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hTRBelY7PTDZbFRPdQdHgUhYseaoF0bY2tLyF8ypbSg=;
 b=M/uaEA6BVbAxKqzSxI5r9+f7fQAyhntuiZoMUhlmC7FXQA/U50+yKIKV
 6IvnEgTth7SwkSK0y6m4LOgMI81Cw1f2isarfHwpA8BCbTaQxylj5iFs2
 b9UEAmHgaw2xHkXqFY/x2mGlbF4Nuo4bM8QhtYXm+Uic/CeNXHeHuoZJK
 z35FPRYpYTf2XXo1WP4PSSyv2TDXlDBgeUmZEpjVj9+K70s7A2qV51Pl8
 5o793kuZSGbGetX5W8foaLjC95ntv9XMDPtDHTlBXa8wH/8La2R5KphIy
 dS2JS2pDOuNEk07L2fgfUlrVbsuw/PM3y4QRbW8mPHtiNmAmEdyUqDRvB Q==;
IronPort-SDR: 5ECG88LytEO62rLGJyTIgObRS4jGAls6a8sTbJd4VrAHIv6FO2NzCFzgdypILB/PYkNovx8zRB
 CvyUiT6zbpF0DxhX3o++lljp2QELpWvXtwO/pQf8t7wyObIyK51eB/BDhva54ypoGWRwlMWMCE
 yz+ijLB1uku/E6dCLIOno5xGdVkjWh5IciJd7U6LRzHwwmXk7L5ksOE9lXda4SJtjaRaeXJ2YQ
 ePp3EFi/bKeg3aWUZALBcKJbOch11C4Dm26hf5b95TcOF8mQfSJCHiUU36Ri0O+iqlxsrUtNkM
 ur0=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517487"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:02 +0800
IronPort-SDR: mIrLwQm0mwhU7t58Vwf6ZDP0VkDSFIo46PiwCRlyokX9Q1QooNywx62OC1cMsJK3haZMQq+PR/
 IiIx8y/EwV1Xf5UpadYrvAG6BnVnSbEwHou4mNSg6txP5weuIT5B+271eNuusKSY4Xm1QHCF5N
 MyxsAHsF0N42nBnX6h4SZEUjuX4imIWHaCPyZ8UujoMjV9gCaPN9AA1XuO/DscUW0NxK+OqVFW
 XFdZNsfsiMSBMadS3MGpf0T9yHxVkZZqKNhcqERUSB8nUZh4/YsuYrcuMyCvWl0YyyxsSd9Fpv
 PbyPina8lYV8/KGbdsSa8VUy
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:20 -0800
IronPort-SDR: RvbuIrKpOmmqZ+oQPbnvg4P9b6yDctCj11PDSHseFUe3NzGe7aNswGzNT7aYrNNymGc7RRLBwA
 EyS5TC5ya2f1DBzchV289rrRJN4G30R6UcKQHWHLCT1EqyVYm8BdK2p8B74xj927ubYpSXJJYX
 yqNCzY6cgWt8a45E/OUvNDiMBg+lmhS8FA2ZqgTfl/62S3ZiS0x0JS7q7oikS9hfGQV2kW1Mb+
 vR4fnDhlmPbHKapqq2eTmDAeG1Ipck513pFwPBeDtMk5IkG3qgl83KvWp5povuzxSWxrnJjDon
 5kw=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:15:02 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:23 -0800
Message-Id: <20210128071133.60335-25-chaitanya.kulkarni@wdc.com>
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
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l51WG-00GI96-4W
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:45 +0000
Subject: [Jfs-discussion] [RFC PATCH 24/34] fs/nilfs: use bio_new
 nilfs_alloc_seg_bio
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
 fs/nilfs2/segbuf.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/fs/nilfs2/segbuf.c b/fs/nilfs2/segbuf.c
index 1e75417bfe6e..df352cab7a93 100644
--- a/fs/nilfs2/segbuf.c
+++ b/fs/nilfs2/segbuf.c
@@ -383,15 +383,9 @@ static int nilfs_segbuf_submit_bio(struct nilfs_segment_buffer *segbuf,
 static struct bio *nilfs_alloc_seg_bio(struct the_nilfs *nilfs, sector_t start,
 				       int nr_vecs)
 {
-	struct bio *bio;
+	sector_t sect = start << (nilfs->ns_blocksize_bits - 9);
 
-	bio = bio_alloc(GFP_NOIO, nr_vecs);
-	if (likely(bio)) {
-		bio_set_dev(bio, nilfs->ns_bdev);
-		bio->bi_iter.bi_sector =
-			start << (nilfs->ns_blocksize_bits - 9);
-	}
-	return bio;
+	return bio_new(nilfs->ns_bdev, sect, 0, 0, nr_vecs, GFP_NOIO);
 }
 
 static void nilfs_segbuf_prepare_write(struct nilfs_segment_buffer *segbuf,
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
