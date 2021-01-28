Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F02330761D
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Ou-0000Xm-16; Thu, 28 Jan 2021 12:27:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51XS-0007Mg-CR
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Dx/rOwpq3k8blXiZTqe0OGVB5LAvjPP5oHsc+IiO29M=; b=KW5ibRc/+Io1lHSyO7ACHiXo6T
 wjjUmtj2a1hCnDKsB1LLhm4JTUOahxXN0dO1rwgLJPseySNPdCT35LCsi1Bu2VVpvJRWHMpfg+UIH
 3mUYGwp0OVSe+wOWgMOPpEUZfTiAGh/9b8EGpGDcItsZ8rJdzghPeH9fcdpaMlAq2xKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Dx/rOwpq3k8blXiZTqe0OGVB5LAvjPP5oHsc+IiO29M=; b=A9uIXRGqeKp2SC7+w5iQMp2k0C
 emKFmOEyUOASgBfJi+gocVetoarqIw9ADG2O4hnDjplmXAGJbCtUiYtZQazBewfg+oyIgYkfi6gDz
 3SVNTb95BF+/EMUAiytjc3K4xlSUOX3gLtUYGyt3Tj2DXUntE7bktJIrYGKcvXC2eGTA=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51XH-0000c5-DT
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:16:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818171; x=1643354171;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mzuBJgEjO7736zP2e3T55gtpCfO2cszPJHhO/o9ayC4=;
 b=eeAjaVJDhVODoykxdfPoDcf3wOgo5dM4tR0StCcf/VmBsNt5v33wZTkU
 nwUX8Huzi66qm25SLRdhnOB5yOa1M3+CxmEEslkNhLpg+kRfxVdjxrLHf
 cwrb81KGkzsGmSi0cor0Dxr+YW90J8PDRW1p4ki6tHFAQzCJAlarQVayc
 YxjWHy/68gAYzQTTQK1ZJ2WRHVKAITq4Wk4cbfVfR1ETI1swfQ+Agqz/5
 5AXv+TLK54S6/Mtw7yt5lEOvX4y99FsGagySYuQ3T8JwP+9y9ztg3fClL
 STB0QSpqXqVN/8F+5K7qwD6Oy+EDXya93m4HkW/BJvpFFUDs11mjcUUYP A==;
IronPort-SDR: Y9vlRUmKeuAsGXOnYCdz9pzRWcUIx1+WDpsjFKh0mzGxf9Jh5DZCtS97HjI0ykT893u0GpGvFW
 Xrlyr6tzO9thj5bt3bTnIJkTUEk1lxfFRDeAJvbp5iOiFSaKhe4KYLeTmXa8OgJOWwNyorYBJB
 hx4nYKhMNi6Pk9z6rfkCOMAqnTWtK9linyI/NuNw7s6s/5QMEPnt90VSF098lOA5ibvBfAwbPn
 Pc/6/q8Yme8xNSU2XRN3CmEuV3vHEG2hsnrShMkIIoCVUBbLrf105S+IwevyI/9/DKE0vhimtL
 DoE=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517595"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:16:11 +0800
IronPort-SDR: UsTNq/RDrdVvk9mTMYwZYH7mE+qtu4HNwUdbxzIpIVe1DbEA5nLByTZ6DSYcqXgi533Ss2bGcw
 wCsIN+H9kx+aJKQogWk5+mt4qqQ1j4APoVJGqB7o5Twi/piTBL2XJX1YEtXaDQpqsnF1uY5oWk
 C13kSYm0OSLKITST921/X3DxtAI/qkie3tAkuXdcRyDglh9O1cb9y5QMOI7rCnIUFHbcLb4Ln2
 TIMp+ZT/TTv54nCD1xieMpu9EBSc5QIEv8/1tffbKlr6hXk+98XBefTmI4/i1q7AFgRefDqOIY
 7P+iSv56VAECwJZYek1HIgIb
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:58:29 -0800
IronPort-SDR: g9DYrZw82vrtcoqwLuT41C5LPwtay4x47njX4TQvn100PG3qzIQDYIPSbD2aKZ0nambVfkCSmu
 JHC6z8/1ifbcXhuz1R2nfguMjBFRQ4RaTCr3wehJDb3ERuWQ1NBrP8es0szoYDQyY3216WdfEV
 JcMopMzzk+/Wudlq5O10ELulyKCOeTk+PuDGw5+9rtJas4CG58lZZY6nLuQYmFyKdDpDYbQYnL
 x05lIaxi3M2yfAJSgs6mfnc20aeVZIpUbieSq2c4z3+si2ic8ziehclZMxZZAWaM0XsUZa2+hJ
 /C8=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:16:11 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:32 -0800
Message-Id: <20210128071133.60335-34-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51XH-0000c5-DT
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:46 +0000
Subject: [Jfs-discussion] [RFC PATCH 33/34] mm: use bio_new in swap_readpage
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
 mm/page_io.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/mm/page_io.c b/mm/page_io.c
index 25b321489703..7579485ccb5e 100644
--- a/mm/page_io.c
+++ b/mm/page_io.c
@@ -342,7 +342,7 @@ int __swap_writepage(struct page *page, struct writeback_control *wbc,
 		return 0;
 	}
 
-	bio = bio_alloc(sis->bdev, swap_page_sector(page), REQ_OP_WRITE,
+	bio = bio_new(sis->bdev, swap_page_sector(page), REQ_OP_WRITE,
 			REQ_SWAP | wbc_to_write_flags(wbc), 1, GFP_NOIO);
 	bio->bi_end_io = end_write_func;
 	bio_add_page(bio, page, thp_size(page), 0);
@@ -406,10 +406,8 @@ int swap_readpage(struct page *page, bool synchronous)
 	}
 
 	ret = 0;
-	bio = bio_alloc(GFP_KERNEL, 1);
-	bio_set_dev(bio, sis->bdev);
-	bio->bi_opf = REQ_OP_READ;
-	bio->bi_iter.bi_sector = swap_page_sector(page);
+	bio = bio_new(sis->bdev, swap_page_sector(page), REQ_OP_READ, 0, 1,
+			GFP_KERNEL);
 	bio->bi_end_io = end_swap_bio_read;
 	bio_add_page(bio, page, thp_size(page), 0);
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
