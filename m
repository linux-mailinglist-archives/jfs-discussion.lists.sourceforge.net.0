Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB0C307605
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Os-0000TN-Pe; Thu, 28 Jan 2021 12:27:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51WN-00087J-Uc
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TAnNILFy7FBFZlxusFYwgCGbA9eNA9YypxDY4p86sxY=; b=WV2kXuZSe4EivguENc7DqxisvT
 Bw4hi0LacbvcJFnYhiAF0uiS3ebJNnnywx0sz2lfp71B6PoGEyRkM9Xrw0Ne/Mqwpg0A3ddtuWmNe
 tnBUn0mbf3i7KPpuFbODWijitw++pz9x4NZHzrJpD3GQcoxl/fdpczgQmpzGHjIqBrMg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TAnNILFy7FBFZlxusFYwgCGbA9eNA9YypxDY4p86sxY=; b=MJzEBVIVNn4v7J0JLc4ItKI9ha
 zidgoYSJHMMlBKvA8iA6PW7TK7bPwm0R+InIxHDJZCOsj9bO17SoxaHZY90PbLZdJQj7JCBamPjo9
 emtJguukYR7Jn+wLjUHUfuPaMq2xh88lOqBrxzQfiUUZBBnAJyd1m89JFxJ9BhuK3c2U=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l51Vt-00GI96-VD
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818085; x=1643354085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1876bf0CQ4oKwKjrcbLTUHkm2JuWaJTsdB558+rHPRs=;
 b=avemjWwtxb1JetGbnJzTilktrCYyHgXk431/+bQsKy/qzH8i4UWf0Wc6
 wGkiaipaL5GHoUZdzr3yP3q4bA+gPuic+A9ztDsalOBj8INXphcKIyzkO
 SbViOvCDg1pLEiDuWvHWL2IaSbKzRBVrd/6fLv9hOzrNk9dbqZhTGIukW
 Sna2ngGGcbdRg4o3IJKXNewTZ0QMnlytjZ9ok7STFtU/zcJtR9Yv/k/dU
 6N/1p/7GgG791yp/n77ryhUGgBBL2LbnaBdlQsew7OyjU268/ZfPtDngu
 hrgN5AeEp3Tw8OgYsbu8vilpGqLbCd+rNqPJwOgoBus4hUWEBK1NHfE7+ Q==;
IronPort-SDR: QbbVUd2NiSa3YliB7ghEEhU8fNmwI4Q/3q3kmYswk9xmZYf/X4lEnKxLtSohXXS6+xrsXbN9lj
 ccsihIuF88KSAR1spjYVJpBhE6XirtPCiZUbcXi8I2wiw97BKaHTRCTFtoLcgqHh4UwrLpg4cp
 GJTmHp71n3hNXuLFnvoCddu67g6GnV7G8k+95Gv2S/7m3u0g3WnroGt125yOcAouULwPL97eXL
 iTgMhAARvjYPz5KPaKowBNVIPoVFXd0dIyg017wOpD8wVknXlNlFyHO4ck+2uQhnCwMB5cyUod
 IXI=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158517453"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:14:40 +0800
IronPort-SDR: GaNK1WF20lXZmwAS6rUdgfgfRSAGxBk9Hqw96L7BKFkCF5L5mL8Ut4bHKqhfEY/Vi8yD5vYHET
 GJ12aedcorShvV5fmffpZTMSfNas0R68lz3AYkPqyZksP78HyazvB1uw8Tu3eq7h25V4jtVTse
 KIoBpjs+MH9fMKYtdnV6CmcRWA7sZ9+zb2Bn25BYxzrZvtASYTtSPFrw+AFSJtqh00d9niwrX+
 zB5PtaDAg39KYDns8aTy2fO4/IKBCuBGgV9RJDkHSfuTYnMRWk3Y+hy1yhxHYILYmU3y2hG8X4
 P5cPLG0xFFhiaQaYSA4974cB
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:56:58 -0800
IronPort-SDR: AZlMO6gj0EkPLCOgk+c5DT4WNDhjCfw45MtadZ5/GiFEmQsvwhsbRFXpLpdTLbQmQEemYM6EDm
 tOJGHTOsUuwCnKWQp1EvZsc2vVv2mGBlVwctpi8EDm1Wy6X1cWP44qswXm3cNGjgKR2lWgrabH
 PKyOztqBt3vFXNBi+4zXssLa4rCI5pehsTeRPvX3Q8KhjR216EOs3fiNJCh3n7IcfWfe8KNrrp
 msksZa1Bq+VYcOk7PDniLMLHnLtDMI1z0ihKaVt3jNoNuACs7lGXhymeE4zWEV78rp7w4D786X
 hJ8=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:14:40 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:20 -0800
Message-Id: <20210128071133.60335-22-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
References: <20210128071133.60335-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1l51Vt-00GI96-VD
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:44 +0000
Subject: [Jfs-discussion] [RFC PATCH 21/34] fs/jfs/jfs_metapage.c: use
 bio_new in metapage_writepage
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
 fs/jfs/jfs_metapage.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 176580f54af9..3fa09d9a0b94 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -416,12 +416,11 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 		}
 		len = min(xlen, (int)JFS_SBI(inode->i_sb)->nbperpage);
 
-		bio = bio_alloc(GFP_NOFS, 1);
-		bio_set_dev(bio, inode->i_sb->s_bdev);
-		bio->bi_iter.bi_sector = pblock << (inode->i_blkbits - 9);
+		bio = bio_new(inode->i_sb->s_bdev,
+			      pblock << (inode->i_blkbits - 9), REQ_OP_WRITE,
+			      0, 1, GFP_NOFS);
 		bio->bi_end_io = metapage_write_end_io;
 		bio->bi_private = page;
-		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 		/* Don't call bio_add_page yet, we may add to this vec */
 		bio_offset = offset;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
