Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6564D307600
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000US-55; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Wj-0002ci-Vh
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WTBKxRvnIdfACGpF/lfmeufZK7hAd0JbkLGDzPxl72k=; b=QW7G75EfqKbMzaBYHTKldSFQ44
 2UAgumf8O41EqKBiMgTj/ImcXqvk/Sq00gtWwFdveike5d4BNAtkHeuaeEonABtKDFUv8hfAAL+5W
 KFqf2C7nCdpLfTxI/oh5t7d4jl4pMc0kt6oYOoovYqwoX91rx2M1y1eFsRlxhGVytb7I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WTBKxRvnIdfACGpF/lfmeufZK7hAd0JbkLGDzPxl72k=; b=eBq3V2bYcJEQG5Q4PyTAvd3LSt
 ZKvAg8X8OB0UtPTkheJEHN7RnSGeWo7qzl3v4hJGgkFhRLP1EQMePv/KQc4VYCcYthJ9fA+FUea2Z
 6lAN6dkQpjzN3iVnFh5yzzQ1whik32+VVGBwyT0phFPlMT5Y7gpt3XLDRl4UgNcEXnP0=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51WU-00GID6-5x
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818122; x=1643354122;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Oh6V4IvaBATnJjcr0mcg+O0k1fwwkwTxUMEnAmiYk7w=;
 b=H8D4WKtxMidEc3ykGX9ALojHHnyMJzLZa6tKwBdzJOk2y7uIfAqImuM+
 J52OtAa+4vV4qpH2LwQ1JQeH29srdUDECZq4HxBFY1WtklwavMe7m8C8o
 6rKv8b+6rbgs4Tz6JZkg1WAw6A/eZdge+Y+7THU0ncv9Qt0/U93/9r/h+
 bk5rqdft3qcy1NLssxJIVZQ9UWrLWgyrPwJM1BNBYnhF8yMtDFoLbGxTT
 3swpCCA1mAQUXZItCFvJmBAk673MlB4d2mY0i0K5+6TTLhWml0DdlpUGZ
 U+31WE+uSMXppuhexlg9rw3FaFZTKzjcdlqL8nQNaxu/dOS3DKiH4Vkmd A==;
IronPort-SDR: MT4PGv38IQu9p+Y8MCy1iOsTWHOPLk8GS1w6jiQ+TGb9gQhFmGQTpVITJupzefcRhL0X81YKPV
 1TWkiY7dUlT1jVH9CITMyn1ZS45WOY/hNNUE5NNsqJdjkCbrM1PAJSDgoDVvNSUsmqAR9NIJbD
 5ojYn3pUmPVocy+VrvjNWjE/cMpZ/3Pq+arSAs0qq9WEK+Tqajhe+eaSkuPlH3rab9M+bRmogJ
 ztOSo5IZvG/TjCx81pVMlyCma5p/eIXMIPomWpOfNdEjUJ6S+zB6/HNOOXwihQ+rcoQXFK29ki
 6RA=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268892641"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:16 +0800
IronPort-SDR: Dp8lJXK1bBxz1NuyAG7V3ILpuIyNQGAK4YxSTWGSCJIzU6UDQSv1ilo+m7OJlm4yXSj7GvJJ0w
 WoSuhqSvoxms8QQaamvf9YjpuQ9mU0dv1XnCeqf3gnCyEEZ1jY+rOWowSmu9OAKFWBn4o2PPrr
 paOETtAB0QlsWXqoK9RtHVyHRj9vBqKCLFE15Us13DKOMqoNjlcMzv98kB/76X8ixJdqxfBD3Z
 GKkU++MJ4m+jYecIj+PI7pdQV2wNg7+ho8t+PKg6dtv4EGnhzTKULr+xSZkZ3sHEp/paw61sEK
 50+jaRm1BKk1kTSCkFZ/uAlj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:59:36 -0800
IronPort-SDR: VKPK85FFDQ0ubYH9k6Rw6wieHrPcfl4K1hBg1VEjOVVMtv+Wn9OrY3VfBreYbEOSh7D7aOPUjq
 dJWJ6VlQs6sIYpC3Ssc6YP0uwWxx1b9TT9J1h3Z9GJWPAkbpd7nwyEHzf2X7DKDqvOlXI3kZN0
 S1wmdVHTrX+2YjnNZtTeKY+gTEIX2ZCvjrzBqJLi0bsvbsghiV571IsEQgaSLG4TZiYK5W8fXC
 DCDkO56zOq766cZD9jubbH+fYuelJGqJtYeO7naSGnNxMZmGQNaOGjq3DEnkrTfIYty+jvU6Mh
 VMc=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:15:16 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:25 -0800
Message-Id: <20210128071133.60335-27-chaitanya.kulkarni@wdc.com>
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l51WU-00GID6-5x
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:45 +0000
Subject: [Jfs-discussion] [RFC PATCH 26/34] xfs: use bio_new in xfs_rw_bdev
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
 fs/xfs/xfs_bio_io.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/fs/xfs/xfs_bio_io.c b/fs/xfs/xfs_bio_io.c
index e2148f2d5d6b..e4644f22ebe6 100644
--- a/fs/xfs/xfs_bio_io.c
+++ b/fs/xfs/xfs_bio_io.c
@@ -26,11 +26,8 @@ xfs_rw_bdev(
 	if (is_vmalloc && op == REQ_OP_WRITE)
 		flush_kernel_vmap_range(data, count);
 
-	bio = bio_alloc(GFP_KERNEL, bio_max_vecs(left));
-	bio_set_dev(bio, bdev);
-	bio->bi_iter.bi_sector = sector;
-	bio->bi_opf = op | REQ_META | REQ_SYNC;
-
+	bio = bio_new(bdev, sector, op, REQ_META | REQ_SYNC, bio_max_vecs(left),
+		      GFP_KERNEL);
 	do {
 		struct page	*page = kmem_to_page(data);
 		unsigned int	off = offset_in_page(data);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
