Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EBA30760C
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ot-0000XO-VF; Thu, 28 Jan 2021 12:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51XL-0002f3-RK
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c8IdeV0nLJRfb/Jr4UkDkRgzqCieZ68IxMcdYCB5RlA=; b=L2hscujMWKegqiulywXgnYU5Yj
 MhHsuFTXk5uflbYvuChUPaSRfCxKCtoIFn72y+zmFdk+CLQpWQZ+Mtm1XNQbI7M+oAQrNyGh7JmfA
 UUcIJG4+e1Xm1Vzg7O96cR5YHNKMxfw9KAtfAZ/Upjaj8nndyTKA2JWvrpMuVhKEt5F4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c8IdeV0nLJRfb/Jr4UkDkRgzqCieZ68IxMcdYCB5RlA=; b=lomv27Ng0i6X+j3R95LdmY55gV
 1x7sspqSXtTPEHLO4mkJ7qv/4p76HGkIbA/fwVpZo5nLKNna6p/TP5VfsAWCDv+RdKszBbktWdjrx
 Q0AiNLZSFd90/3FiZwKZpGrXm9iUmx2wQoV33rHns5IPl4xZNhFibz5YsIZFP0CQahX8=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51XA-00GIFS-AG
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818164; x=1643354164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gllqHMP2deuE0vZ0qLUvAasM9UgJt1wGssSRSahQx/E=;
 b=nCDTjAHCRWN072CedJFb0fT6fdjidUO0Y39DxjpPIC6fVBKBJuUkKBlt
 jfYtugma7v6l7cI55yYFREOHYN7aCKyNwaif/7FFQ0qPO00sI7BtyJRTd
 07UvBVFF16edDl3EwzeZDISRUvW/J7fycF5eODAkOnjsm41ai0By1ay41
 h4tIvKPc7yrE+NN5QQ3zrjXdCONtXbs3j4F20ao9Bw03O8CHfM7APufLG
 I9aH/N/dzIS0QS2zupodzdyEQQSE/crYHtUgNr33HuhMyKNorpQVAa/jB
 JjpOSTqvztdi9CTqy1/gKNt9YYG8SdN0rmsvcplmFqZ9349v2JaP/IcFB w==;
IronPort-SDR: 2mQ8r0Y05bn41fUpdFNAGBhT8IBNZctnnF35Hkr9aUIGtMGHAga5yRnHXCN2xiaty78e1C7wCl
 excfeoDNtmyTPEj6m9onSa4JGZM2zu0u8gQcTn5XDPymgC9c+bOPqDj9Lc9ylUU4sC/F8WVmV8
 ZvVS9IhHKkXAhslF7qNLkgsqMwZxXsVIAWaWNUcSOR4d4DxmDygM3i/SRSERTmC3h7meIKUxBJ
 l9Pv8hAJ35hzDiABUYGTYzOHkfTX9P/3NIlZgcIU4UlkejSLFDVnSRBJVksIyz9RsNsLNQy9W0
 Qv0=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517585"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:16:04 +0800
IronPort-SDR: aYF+/X4o2wbtOSfKiJ9jlB8sh/n0WyKc0bBHBL7kLb9NOzZQwGXPyDqKco0OMTIxE0mnGJetOg
 iOrmcif4v4jAK2pa083rJB1/0/G+9tfq/+SKDcip/0fnJ1qffUZfrsR9ZdHp23ncU2nxDFqLyT
 u6EZTsoNg+msaAWv6FAWMH2RNDPJgQ5il4x12K+LjVhCP3UBdK7liFx7aa1/F02LeCSbmiYHWo
 J8AtF6sbUhmvWI+1u060n+IsEPoTejPSa6KsuegqWObVSzzj5yl2A2vx0aTMWm87y/xGWUTVTE
 k6XIjDmNGVfJ+WQnTymDBl4R
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:58:22 -0800
IronPort-SDR: Grws0RkRukNGo7nyou8ZmIctRPf+YpsLcKEKHc3Y9j2gH1wu+DvtqTycxE/+Um75XSsvYHsJz2
 XuCl7g+xJPknbJtkfE6+aL2ksGkx9esZlvJSCaOOok8lPoOpNpuMTJUvJF76PXh6twtzc4hV4l
 Ck271Nzyl0bN3jPxPpXSp854weGQ+wyoheQ1qJh2ewh7GEZUQlec6Cx5gMyzUS7NDfOacpsNSA
 i4cQzL4qbQiTmP11yVUjlWBUXU4/5eKNIGO+C/0onsAsvTsPxAAYkHYwd4fug7gJV2TpCU6JnF
 3ZY=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:16:04 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:31 -0800
Message-Id: <20210128071133.60335-33-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51XA-00GIFS-AG
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:46 +0000
Subject: [Jfs-discussion] [RFC PATCH 32/34] mm: use bio_new in
 __swap_writepage
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
 mm/page_io.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/mm/page_io.c b/mm/page_io.c
index 92f7941c6d01..25b321489703 100644
--- a/mm/page_io.c
+++ b/mm/page_io.c
@@ -342,10 +342,8 @@ int __swap_writepage(struct page *page, struct writeback_control *wbc,
 		return 0;
 	}
 
-	bio = bio_alloc(GFP_NOIO, 1);
-	bio_set_dev(bio, sis->bdev);
-	bio->bi_iter.bi_sector = swap_page_sector(page);
-	bio->bi_opf = REQ_OP_WRITE | REQ_SWAP | wbc_to_write_flags(wbc);
+	bio = bio_alloc(sis->bdev, swap_page_sector(page), REQ_OP_WRITE,
+			REQ_SWAP | wbc_to_write_flags(wbc), 1, GFP_NOIO);
 	bio->bi_end_io = end_write_func;
 	bio_add_page(bio, page, thp_size(page), 0);
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
