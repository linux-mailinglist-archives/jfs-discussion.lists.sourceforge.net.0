Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3336307618
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000T0-L2; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Vs-0007I7-Lj
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=68CZuvboeTglBpflydYiKpw3d/aFywc+nGP5lqTciak=; b=djmjC5uCcPqkGUFU4A3bnxxmgw
 h2uSWUcBY3c25JFi8yraAzOLIjHwYoAn69tYas5RqKlPmVEkd4SaUC1h1dp+s63wdYHDZbxgExza0
 N4PMy/rmkdYp9bfd43L6EE5BXeaHDyJStNHnGdViKk6MQu4vAeFkUqq/Qyy8VAHXx5JA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=68CZuvboeTglBpflydYiKpw3d/aFywc+nGP5lqTciak=; b=Fu1shJr51YIttFFmeYO3c8YUAa
 +tegTTlwWbbS0BwvpH1ktv0JKRqdX3tUP7IYmY+F3Yg7X60k8dwuO8CNrBA8QkHOuu/o4HTiJBYij
 HvpXfkHiq2RAQ+EpoVTE9I+ukkZ8XLtZWtwDF4f6PtRgD4mkANa1WQBDRmhuP4sSU2Ow=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51Vh-00GI1j-Ry
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818073; x=1643354073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WN34YNrFVBX2exPMiNFaWJshviC5HdAH5Y1CjLjlB3Y=;
 b=meFV0kXbZgNuA8h4FDKMYsJipRz+oNvlm1oYPByVW702xIqIoi9uv2Qx
 A0kYaF6ABHFanKSQqzyVilo+ov3x/Jw0zxomAMpcABpYZRBiAlzWXD4na
 +1b9VRtGUlmw4I9c5tB0o6kfhyM/j3064kpa9Egyw0oYjCoH2j7gU/X4/
 kRaA9RO0nekcO7M2Bd/1MiMWfG1f+nEi1huj7e0wl8fi/eHIM3G6k+xi8
 5+NG27XbYWsdQKNuZhm2sJPwkec0BrG/nr5jnSE0Uly/yGP9Y5D3xGsjX
 kgi0IrmMDgi5xdBaKoweq82P/thDfAvRWfU6kXC5/VMUCMOUfqrsWn/ZT w==;
IronPort-SDR: Tny3ETj9ZIfnQfpVLvN2POVxt7ukif/ChcknF+aIsMqeEmBLOY+Q2XOrJftojHlG1UgrIJaE9y
 lxTW4BROrgwkWjp0/IoNRpzgBlMRGrJ5yWj7xbK9HCnGcs3dzdQD7DaSv3saaRyU0AR5lktobb
 XDnMCK/GXtj+Pz76ngBvxdBhsfmBZQhDdEAqnFXAlsWzzUYeNZyZRjRWRYpQ60Xgp4G0CrCkVs
 abT2QOXNcm7pI9P8zoc5SIj6KT9x5gJvzEa7LEUGSoT9sfpZ+svKo9b0VXBY9nPbX3BsntoujW
 FQo=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="268892568"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:14:33 +0800
IronPort-SDR: s0qz3MSSJTHR+t3SjIdjLL1WFcm/C3pUx9OVCjfgreIfMzJRsSBCN3yA7pAooYLSkXvXVO3W3c
 LvF6FnWw93XBjxqCBULNioZfJTeO3hCr9BLL/pggbR+QEuKaduWdyzM8mo+BnCInVCm4Bkc72Q
 Q1DtXp4JW7O3CFPiL+RnR36mhu18qmIngVgEHjskw6JOaWdYxiIHH7slqB/5HL47elBJmYXFKh
 IgLks7beBjnn37FvakZDpzXTR+DNpNC8hmmsFKYedqoH9mcX3R1+TXyAn84y7IKFO9AwxneYFa
 ZF3fxvNxdoL2vODNTztNgdZ8
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:56:51 -0800
IronPort-SDR: hgdemKPG/3HHgXRADNUaRfIeto8NmW8LEHR468JLI5qNdwJ9I/Vz7EOVIHe6ux2OR8aMkXbCb+
 hHmOp4ZL4+H3N5KG2012DyI6S+0eAji83o59kSvMRJsf1lkWorl0McE4AqjKkZANcW6TxQu0db
 Rg6QKY68t8KKdoDxgIWM8St6Q8n+pLj6fbsJ1LpjtPi/SVOVdnUNhjzT9HNr2ak6ECZBXsF3YT
 a/oz2zpRpm0NjKofMt8jO2sCHWsfpktQx0L5tGvTxbU6SR20ACdGgmG00/Fl2WObQ2KsI7nqdc
 S2A=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:14:33 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:19 -0800
Message-Id: <20210128071133.60335-21-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51Vh-00GI1j-Ry
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:44 +0000
Subject: [Jfs-discussion] [RFC PATCH 20/34] fs/jfs/jfs_logmgr.c: use bio_new
 in lbmStartIO
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
 fs/jfs/jfs_logmgr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 4481f3e33a3f..bb25737d52f6 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -2121,16 +2121,14 @@ static void lbmStartIO(struct lbuf * bp)
 
 	jfs_info("lbmStartIO");
 
-	bio = bio_alloc(GFP_NOFS, 1);
-	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
-	bio_set_dev(bio, log->bdev);
+	bio = bio_new(log->bdev, bp->l_blkno << (log->l2bsize - 9),
+			REQ_OP_WRITE | REQ_SYNC, 0, 1, GFP_NOFS);
 
 	bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
 	BUG_ON(bio->bi_iter.bi_size != LOGPSIZE);
 
 	bio->bi_end_io = lbmIODone;
 	bio->bi_private = bp;
-	bio->bi_opf = REQ_OP_WRITE | REQ_SYNC;
 
 	/* check if journaling to disk has been disabled */
 	if (log->no_integrity) {
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
