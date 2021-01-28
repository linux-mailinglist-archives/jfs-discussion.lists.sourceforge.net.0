Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEE63075FA
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000Sn-J2; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Vd-0007zE-FN
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/eLRnkCq+rAhe1e9xXNIR1Z2mJJA9WdoDuojwHWcVCg=; b=HhbDLLSUKPhWLxcBJxJXLToRh9
 oYDsU/QlbGBTXnTpf0cdVyPm6BKxevLKMcBcIpmf/qJxvj7cxkC9ZxGxxhykSKpfKgoe0wIhepsxs
 u9D+D5eB7uG0ivrzYEjOiewgeAY0HQzeLdt9OG2aCmAhgQ+jy2DlPYAdfOnroMg2qSaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/eLRnkCq+rAhe1e9xXNIR1Z2mJJA9WdoDuojwHWcVCg=; b=jSNjPvbpHA3zzVOsSmCSLxdJxQ
 OR4bVcvVGKM6kac5v4NJ3Pxi68hosv3iETcT6Q1eNNK7W9HXWbOFtPFKgVxEPV9yoq2F4RALvgDhq
 3AHqvb8KIcs/Hqwo924kjtcyk/9Fc75hWrN1K87XUwPuEywNl4tuf9GOIaHciLeLFJHw=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51VQ-00GI8G-38
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818055; x=1643354055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0nkVYESNcCP1ZuiY2joF5zZXurD0RzvJ1s1BM2N7jGA=;
 b=YueweTtBP05hKP/BTCn6yYQpGho6qk3bGWJhrPrqhQoo0zmWvSOKTgJP
 /CcNTA04EBLdKnCOkEVxKVjWb/gXYnk3IVmw1WtcCnlLs2ufUIx9mqDbQ
 tIfB7BeYlfV3HWDmrQZcmqp3TBtkV0YSFbMCX1du3RHgTKYCPrMJVVduh
 QWeQuuMhcXpRcyt/hEHiGU58VVxrYR0Fqu/rAt9CVFl69jgbpf/eDwLIJ
 yiBPyIKYqtjcNJUG7JCcox9/XpJI61PCP9qSYNzMhW3jI7jYmBqV+qOQM
 nNM3hQ/RvsvJPW4BO8Avxlhf9oME+ZPwLTCz1WgApNnvenSWV4fEibE82 w==;
IronPort-SDR: qP8K7Qtr4//2b8u+4LtLThMJgd01tSRIHdT4388Boky6xtb632UNb17ntgWKf3t88mjrARoQVk
 tQWbDQ1UrakQlgosZrQkjHoCPOW2STWd9EzXU2O7TrAFgRDFvflJZ3AeMB4gpD7/XQCr7w6bVb
 GVy5r0cQP4zj8aVk+gzbYS0xo78Hw593KkxWt23vaoiEZtBM3se9BQeDHNF0oRBNtBDiHHMslM
 nkCcAO8bpzZzcOVVR70XZ4kmnP0GeFbvwHW0H+tU5Jaj1moNKeWh8WgSwm5yoQm2LpmrgdKsv6
 n3Q=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="162963312"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:14:10 +0800
IronPort-SDR: pKlH1fBtxAwTLjilUU92N4Y6lhD+w4OuN8A5AgqtHMhXkkR+qp86YyhYhnVGTnPO8cOrM7P66w
 BROXiX/ostKmRdYa54Pv2+8ainzNapXxPMe9ZupSwdOAumafOR9iRQglAiBhoN0UZ1niS2dMu1
 q5AEdSwtj6jwfeuihuZq1xT/oCqK/ue4lo4/P7+w2LoS1oLlUY3Qwj86fPYET6+pi9czzAV857
 2sqNTdqt0eUm4yDHdThLUxdl1Bzb8aEGebU68T1u2OfQvt/s8/lrWcyFW0YZajaYSVKpUKO8WG
 VFFYMnCUYJcd9IA7UE2RfExi
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:58:30 -0800
IronPort-SDR: lKKhoxaMeyOwXqrT2FSzD4wN8uVJ+mvKyFTUKLm7JjK92Do6Pp8LlRaYGgmaQWgAcNgigcbWq0
 dr8eH/C5m6jarJyZCPupuIjbqQYzS6I98zkdR7vs+3yNowqMQiZeF1CHZrTo/tpym1SjWfvRXs
 6jUItt1/GcDgh349QalPLGcjYuMZ5A1EKw0wTA/1PN33qNlegyypjYwNakr5Qt7Zi77XOTVrdO
 glPMuXb+RS4OnELTigLzoH/k3P2LKO+/yrMNDKd4LQa/txopqXKI4iyznrBVm1YJBPOgSOjnjZ
 uxk=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:14:10 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:16 -0800
Message-Id: <20210128071133.60335-18-chaitanya.kulkarni@wdc.com>
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
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51VQ-00GI8G-38
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:44 +0000
Subject: [Jfs-discussion] [RFC PATCH 17/34] iomap: use bio_new in
 iomap_dio_zero
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
 fs/iomap/direct-io.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/iomap/direct-io.c b/fs/iomap/direct-io.c
index ea1e8f696076..f6c557a1bd25 100644
--- a/fs/iomap/direct-io.c
+++ b/fs/iomap/direct-io.c
@@ -189,15 +189,13 @@ iomap_dio_zero(struct iomap_dio *dio, struct iomap *iomap, loff_t pos,
 	int flags = REQ_SYNC | REQ_IDLE;
 	struct bio *bio;
 
-	bio = bio_alloc(GFP_KERNEL, 1);
-	bio_set_dev(bio, iomap->bdev);
-	bio->bi_iter.bi_sector = iomap_sector(iomap, pos);
+	bio = bio_new(iomap->bdev, iomap_sector(iomap, pos), REQ_OP_WRITE,
+		      flags, 1, GFP_KERNEL);
 	bio->bi_private = dio;
 	bio->bi_end_io = iomap_dio_bio_end_io;
 
 	get_page(page);
 	__bio_add_page(bio, page, len, 0);
-	bio_set_op_attrs(bio, REQ_OP_WRITE, flags);
 	iomap_dio_submit_bio(dio, iomap, bio, pos);
 }
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
