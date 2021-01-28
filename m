Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 850DE30760E
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000RR-P6; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Uj-0007sY-VH
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NHHbFj5FddpDKWFemHLgNhTa09Idz1YwaKyhOAsHEDU=; b=H6erh58nKCrIstPTilr6xkhln0
 hvDNyLfTmhpveIbEDkkq+/vVGABuGShMhLcElRYcZC+hyLkCvOtM1zWyIrMwgjEOHYjaeyr80NauA
 /tguu1fFgKPVbTudHHOFbu1BZwdACN8PIrw++VUam6fzfmYxjxOSEtZrozqQ8/WWPKh4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NHHbFj5FddpDKWFemHLgNhTa09Idz1YwaKyhOAsHEDU=; b=Cmn4iXdd2mnXQ4uDTiaKYt4Nz0
 W1s1z2ubqkGLZfwoxrnTROtZy4bP7R9tTWNogpRYO3WuvV0e1fPTyhYVOCVjN1V6LNGmuFCUOm1oy
 88Yed94laUYBGjICuFpmw/ynL+bWzge7B8V5y4FavqNOQrHM9zuJTIjgitQ5EnS7Nk90=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51Ue-0000QD-Il
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818008; x=1643354008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g8HJbcPmpqxtxJgQpVgZEQpuhn8q+oe36W4m3E0vxow=;
 b=gCLjNlh2pfjjxO4GlBiJf/zKS1CSvC0GamTCnHSnbBO6wSPXlMrm2ViY
 7WBSv5nF5cBLamXGpD2LQGmQTYxzZtArdIixb/h6vIuOU7ncqhgMRHkYB
 IvHloBpDkDrxk2pLu65/jsICgE9gEqMsaLhwdEFI4Xc9+BPAdKczXWx+s
 ndXMwwlmsZi3o11yNkXEFSpQz0WV6lGQkf6mq15GCDVGzFHNbEGrW8qLG
 L5uXLAFAgy8Na+fPCJcsZ5L4nTtsEwKuLmBLYevWJ3ftPC75DQtcb930r
 6cwY2sI+FDfXnzn+eLleE/ylV/F1vtL7a6ds8qevi32WNxfy7UWPv5Ilt A==;
IronPort-SDR: naWnFv+cjjyB9vPRVhzRP8TztXSJk0rwK8/F6UZu9h23XtZKBHy0GMef84hDyJErxlSSvpxW1F
 Cq8DlSEghpAErcOtA0AVazQmrGUbrKhgE2WUiBVc2dNTvxA0v7uU/Q3wDcpCSMzZZX6GQD7kfS
 T7vcqu5HEdUtW9awut2p0pakKbu8atxBfxgstBk3WECmnZK0QmsPHy1077gm49kl0om08V5wJX
 JJ9mwX+5Vfsuob7emYRSvmHR+XmDWIs2B33oXim/M43u1/Lh/nQCKcB7KSLI06EZf8iXjtw+mf
 q98=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158518177"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:13:23 +0800
IronPort-SDR: CXgIpHAac394jMpObr58UnPW4Ued15FkeRXVbFqqvC+7oM0ePpU2N6JV8PqimaN73D9l6C8Mf7
 wYz2Gas2pcd51AX58i32ABl09UvqWIYQNhF33PTpEx86j7W9rbYTbdOjXTueClG5YdgJblIJzQ
 mKLhG58vieSyZhHTV2cn2we+9H33NpIVSqALsJNW8zokyQP6/Fi0syRHt5pyKfrcbGb1l+Owf1
 kn4G58rm2uxhXKoetXHC8GfnazStcwvZpklYYvOSfsjnt0598csedBZ68kdSg60SfIJy7uGZsU
 1uSth8Wps3kPibRhVe3lLaSo
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:55:41 -0800
IronPort-SDR: S7K4kJLXzJBN+TtdhPMN6TP/Dffs+zSa3G/de5+S1/PIJxe5GMDYhILg7ObwZaeQtAx8NJxvkl
 nIc5LC+mPpv7TI+pptGOuvqvgXc2tzfVFCEyc5+LFgl+ipYQILMS5NCsDr+0Wgl54XSWETlfzh
 gHkg4ZggWJkUuTGFtq5ayNdqurKZ4tOlkNjJtnTH4tbAn7NSWqg+Ok++T//Bdn23FoUZxk+NbJ
 AQUU7LKb9NmxAxDMj2VCc1ROkgf8sOKgTR+MW0zxXzuua4VhN6N1CvrlPe6fa6RhDqhXPf7MuT
 aTA=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:13:23 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:10 -0800
Message-Id: <20210128071133.60335-12-chaitanya.kulkarni@wdc.com>
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
 trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51Ue-0000QD-Il
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:43 +0000
Subject: [Jfs-discussion] [RFC PATCH 11/34] nvmet: use bio_new in
 nvmet_bdev_execute_rw
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
 drivers/nvme/target/io-cmd-bdev.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index bf6e0ac9ad28..f5fd93a796a6 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -225,6 +225,7 @@ static int nvmet_bdev_alloc_bip(struct nvmet_req *req, struct bio *bio,
 
 static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 {
+	struct block_device *bdev = req->ns->bdev;
 	int sg_cnt = req->sg_cnt;
 	struct bio *bio;
 	struct scatterlist *sg;
@@ -265,7 +266,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	} else {
 		bio = bio_alloc(GFP_KERNEL, min(sg_cnt, BIO_MAX_PAGES));
 	}
-	bio_set_dev(bio, req->ns->bdev);
+	bio_set_dev(bio, bdev);
 	bio->bi_iter.bi_sector = sector;
 	bio->bi_private = req;
 	bio->bi_end_io = nvmet_bio_done;
@@ -290,11 +291,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 				}
 			}
 
-			bio = bio_alloc(GFP_KERNEL, min(sg_cnt, BIO_MAX_PAGES));
-			bio_set_dev(bio, req->ns->bdev);
-			bio->bi_iter.bi_sector = sector;
-			bio->bi_opf = op;
-
+			bio = bio_new(bdev, sector, op, 0, sg_cnt, GFP_KERNEL);
 			bio_chain(bio, prev);
 			submit_bio(prev);
 		}
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
