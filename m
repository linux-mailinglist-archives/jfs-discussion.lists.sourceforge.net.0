Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 32548307604
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000SN-9N; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51VX-0007yT-9H
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OTeKcIEuprTmpiknOX5IBEhh36X5xkhVHPYx0OAn8ic=; b=amxWF2NFA8Yxp/vICKOLCH7Vb9
 c7fMW+/FKvkYfH17K2LDJ0YXop9ZihdrZgzFH+giHME1yxTLxhnYJoTI2uUOFJ0VlGhFnD4oVyGGW
 DQ3IC9gVpBfkNAs9bg/5JOTwrDOwPF6u1VVW2YslReKI2wuCSuH9lViedURCHzHMoXPs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OTeKcIEuprTmpiknOX5IBEhh36X5xkhVHPYx0OAn8ic=; b=jDxxPIe0tNSzuSOOs9Hy/bF25E
 4DKGzDPEIWdwzFQDyhNcE2hfEUccbwcil9NsxSO1lFcxcO7C9/firv8BVgkAWTmtjeuTZ0s8+25qE
 IRtfXViRhroqNv9pURf4brtn8XV4V2Alol90/bpUwK1Ba7Ddv1OD4bln6xv+fE7h4mS4=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51VJ-00GI1j-4Z
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818049; x=1643354049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+nCtEeEc6ftLNfXULXJD9MfOSjGF3wrLBEXOv9oezHI=;
 b=KSUYcQgtV/yUp1Seib+FnAImH/mejWViDdYLctM7sBfk9ctYehEi4jIV
 A0MiXIER7erX4DHI7ZluCjrQqbpwTG8pfjX1mB9BaUyBREO6xkPA9Czk4
 J+jRAYj98SfzH2ZLHNPa1W2kfDnOqi/ffmJrp3OjYExu1Wfwco7u9qDkd
 TYT5EA4VeeySu0H5dCWqyQRheW6jruIttjQI6AwVjS3px6annFO/1dr96
 U7/V1dy7ocqSkdRqDRXL1krhTXfxbEYUkgU2KsQg0G1yZOHk+RvdtqH2i
 3mWAwknk8797eidd7Q34tvDdCo6/0WJ/TgTynfArUaKB5MFGq92DDkzby w==;
IronPort-SDR: Y2asaarB2GzCPmKJnAgLueztriZDi2GpNb2Tx0oUTvFJQkiBP/d4cpaKkWlmtc8C9bz1U+12tQ
 LV7j2RLfOO7//TItC7IPPVFLWRRe0etbUC+kT0LOjJmYTvpYnhPBM0rULgZhF4ET0bwtFdz9ts
 LaXOxJmBEdNuism5yarIczTsBBA6ixqeYu0ne3ZCtdGyFuvvs56pKetJ7mhuoSK6Q7VsY8e+y8
 E58e1+fCNKfuQ01Fq8AfcQCZF3kmoTLpdmdALm1r05xWrcgESyvrDuJIgvtDyX9Jr+WilsS1sX
 iNs=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268892524"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:14:03 +0800
IronPort-SDR: lJ+pB+dlvYCpfQ2VgWgRsth29T2wiGVhF6wtL0C+mvZTrWG1eTaqHRjJIClXvQQ5z29ZwVmnZl
 NYE41hY5W7KNeMtNfMaNxSdBhJLYKaah5rT6TrXO3h6As8VVyF3scoJHqmBb5lZdVGoyZ3yF+w
 7Ldm5dZKJrlJBrcSzNPIfyeqCIuVDfDYQYhqWdUXfRDvc3JIeUwg4lGrhJzmsyMe/lQ27HbMdc
 TOoUNGXSPG0rDY48XrcP3pvoTFW75jju2u3XrMJp21/OtkNxCSAK3mkndOgMaHCYmq+YtwcaMN
 NL5MBavu3c4Vt3+QhiGPakTb
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:58:22 -0800
IronPort-SDR: bKh0CeniWKxunCNm+jG9l29yuZPN3D1Gz/JAN/nXUgFIRD0d9U6vumFzntseHSRI/MX2HRMaPA
 UMPAuzQRLKKctTclKUM2aKzz/TiMAXwUZH3o+WrBdocCIchNR3Uaqkot1vGRPosruVN9zghU/S
 4vOkqxWogelsFgsfoTKuGHPXS0UKS78L+4719OXJlLRXt4xtaxkQvpBhG3tmxGAdTiSRUPHfPH
 NMPtpPqqTRUN1CMc8PtnqpeNKU9vUEZxV6F3t4AwWzk79mqUHtn9Cp1IEV7L86NNsrAMFQsKWR
 ljI=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:14:02 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:15 -0800
Message-Id: <20210128071133.60335-17-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51VJ-00GI1j-4Z
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:43 +0000
Subject: [Jfs-discussion] [RFC PATCH 16/34] fs/direct-io: use bio_new in
 dio_bio_alloc
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
 fs/crypto/bio.c | 2 +-
 fs/direct-io.c  | 6 ++----
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/fs/crypto/bio.c b/fs/crypto/bio.c
index 20dab9bdf098..28cd62ce853e 100644
--- a/fs/crypto/bio.c
+++ b/fs/crypto/bio.c
@@ -148,7 +148,7 @@ int fscrypt_zeroout_range(const struct inode *inode, pgoff_t lblk,
 		return -EINVAL;
 
 	/* This always succeeds since __GFP_DIRECT_RECLAIM is set. */
-	bio = bio_alloc(inode->i_sb->s_bdev, 0, REQ_OP_WRITE, 0, nr_pages,
+	bio = bio_new(inode->i_sb->s_bdev, 0, REQ_OP_WRITE, 0, nr_pages,
 			GFP_NOFS);
 
 	do {
diff --git a/fs/direct-io.c b/fs/direct-io.c
index aa1083ecd623..6aab1bd167bc 100644
--- a/fs/direct-io.c
+++ b/fs/direct-io.c
@@ -397,11 +397,9 @@ dio_bio_alloc(struct dio *dio, struct dio_submit *sdio,
 	 * bio_alloc() is guaranteed to return a bio when allowed to sleep and
 	 * we request a valid number of vectors.
 	 */
-	bio = bio_alloc(GFP_KERNEL, nr_vecs);
+	bio = bio_new(bdev, first_sector, dio->op, dio->op_flags, nr_vecs,
+		      GFP_KERNEL);
 
-	bio_set_dev(bio, bdev);
-	bio->bi_iter.bi_sector = first_sector;
-	bio_set_op_attrs(bio, dio->op, dio->op_flags);
 	if (dio->is_async)
 		bio->bi_end_io = dio_bio_end_aio;
 	else
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
