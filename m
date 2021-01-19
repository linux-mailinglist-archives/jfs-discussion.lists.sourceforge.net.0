Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7EA2FB6B3
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000RR-3L; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jX2-0000cU-HJ
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xKYxCRa78bcvQJFBaRh7i5kSeuxU4yWVAJ+dR/k1Z5w=; b=dVi5NXscnTt6K0V3HLvKgsbCb6
 2V2UNpg1BmjNOtRIZyN0Fy4CXmXQBVGSy+INPMlldFwg0G96KEe4DNxsPJI/aRaSKXxupPuuH2Rgw
 sOORftdBzYb1feVW/hxMrTvuEqQg3zO6/LRQXWC0EIQwp/iUWCvrwN+UPsJlMKSQBIhU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xKYxCRa78bcvQJFBaRh7i5kSeuxU4yWVAJ+dR/k1Z5w=; b=ac5zN0YndjMa05L9AeIX8tcRPs
 pbxaKnyM2ZSFeRPb6ozKCzbfQlcB562Md2n5jcP8Rr2eYsjGUjdvU+UWkl3ZlYyk53NMWU9Vd9u0t
 vNPd9mTuEXR2rGUZHU5IBoEy+zALhlcxYXvwe5JHAUMYylo8pYvTuSIGLkAvdy3hsFy8=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWq-006vxc-CF
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033968; x=1642569968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B7JA06wyQJSeb+bJeyEVFkKODUviRdB86RqHthiYHdM=;
 b=os3gcA4bOW95Gzwp8j36HGC55LMunbfYyhvYUQIT17/ckcihTyDIolnd
 JsmXDisI6CokTTIaEtJW5+QEKxD2WVwQ5DuYGvT/ntL/q+j/0gATlh1kN
 dZ0auXLgkwPIiH05JjHWeUkOImHPiMuzDSn41nIB85Vz5rRb/iSS6H/Vk
 B2l/iSERgdz9Lqn61DNrJvtiPtkUq7yCUxSKVOCjYstdX5Jvl7ZgUC8bU
 Ga+ZNDJeQmfavc6hgVAZA+qHfuuK65wLbdUNp+ZGob+mzzOHM1n1LKIuq
 Nc2Dg2F4kKIQAvz73x85bNOaUmHrNEH103Elw9zbawPxLpoym9lfwMEXA w==;
IronPort-SDR: bL97ATRh3sieLnEWa8Bcdy1Wwn2DY0kfw3Q4+XABwkXJbIEh6xqUKScdTJtlzN6qc1itXEWG5j
 3Z94daGpYkbozyeZdSD0DmGjgPGG1Lml8CxAJbgOoN/aUCvCR4YOjV+twVKMHzkdMozugf1sZw
 6wMMx5PWyMA4ipG2C9/+h1LO6XUPOFmOxugD9hUR7NT+IYfqioAZCXsnE+7TVlPsXRs82z5OY/
 YV44+rC/sNIqwZIO6heES6gP3wpdWlPqcIxgujbH39ElQIr3iOpxp3gnA/Id4aKVNlY+EIH4DR
 kmE=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081242"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:34 +0800
IronPort-SDR: es1faJl7l12jfWl5fqZKEyq4NbgYhdf2INXVhe3Onney07K8u5MjqenhO9MhLr/NP02ff6k8dW
 ZKVcgazqCPJz/sFuABJiCWvvSUPIF4gbq0AswLrWHOdTbR53CSvwZTjIbHs88SA83HC+b7Vq6s
 89CL9DyKl+pqm9Q+OoepBQzwv0UFOT1b7GzkPcrid5mfTEZ7fhCZshavEEcAW7MIoIs55hycdD
 Uq7MHwDV0r6mhRzthFNKnrUG+BgbFKlC2rDC6ulIsmEl+ZoTiqZ68SiYMzXuZzNTP6g5CsfYlr
 zgO6Zdz0WzQ1pdwAmEWlBLQy
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:55:11 -0800
IronPort-SDR: To60I5qpFjC/qrOYyP0e+8PtEHWn/E+IX3B/NtCL2AEGlknL6XuDdu2+0YOMCEUl9jN0+NDuzq
 dZBtHVmFs8c2MbBK6nyyqiUGvL7D/ICacqAETpUNh7sNU3jN3gr3oMEn5okCkDfyC/0Irc2Fc4
 74E8Jj0L1yozehCSNmdf8CdFJegKv/E3LC+h6Fa4Hmz/L2OxthixlGPQheihc6U0PL3qEeNS+1
 hIM5iqNNXixY/QFjQ8bMwljmNMnnwya/seW7BmRZG7IJzaltfLW+/RKR36uM7dMhYxQCE98dv2
 Nnw=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:34 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:27 -0800
Message-Id: <20210119050631.57073-34-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jWq-006vxc-CF
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 33/37] jfs: use bio_init_fields in
 metadata
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, snitzer@redhat.com,
 gustavo@embeddedor.com, clm@fb.com, dm-devel@redhat.com,
 adilger.kernel@dilger.ca, hch@lst.de, agk@redhat.com, naohiro.aota@wdc.com,
 sagi@grimberg.me, darrick.wong@oracle.com, osandov@fb.com,
 kent.overstreet@gmail.com, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 josef@toxicpanda.com, efremov@linux.com, colyli@suse.de, tj@kernel.org,
 viro@zeniv.linux.org.uk, dsterba@suse.com, bvanassche@acm.org,
 agruenba@redhat.com, axboe@kernel.dk, damien.lemoal@wdc.com, tytso@mit.edu,
 martin.petersen@oracle.com, song@kernel.org, philipp.reisner@linbit.com,
 jefflexu@linux.alibaba.com, rpeterso@redhat.com, lars.ellenberg@linbit.com,
 jth@kernel.org, asml.silence@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 fs/jfs/jfs_metapage.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 176580f54af9..5cea9c137a48 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -417,10 +417,10 @@ static int metapage_writepage(struct page *page, struct writeback_control *wbc)
 		len = min(xlen, (int)JFS_SBI(inode->i_sb)->nbperpage);
 
 		bio = bio_alloc(GFP_NOFS, 1);
-		bio_set_dev(bio, inode->i_sb->s_bdev);
-		bio->bi_iter.bi_sector = pblock << (inode->i_blkbits - 9);
-		bio->bi_end_io = metapage_write_end_io;
-		bio->bi_private = page;
+		bio_init_fields(bio, inode->i_sb->s_bdev,
+				pblock << (inode->i_blkbits - 9),
+				page, metapage_write_end_io, 0, 0);
+
 		bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
 
 		/* Don't call bio_add_page yet, we may add to this vec */
@@ -497,11 +497,9 @@ static int metapage_readpage(struct file *fp, struct page *page)
 				submit_bio(bio);
 
 			bio = bio_alloc(GFP_NOFS, 1);
-			bio_set_dev(bio, inode->i_sb->s_bdev);
-			bio->bi_iter.bi_sector =
-				pblock << (inode->i_blkbits - 9);
-			bio->bi_end_io = metapage_read_end_io;
-			bio->bi_private = page;
+			bio_init_fields(bio, inode->i_sb->s_bdev,
+					pblock << (inode->i_blkbits - 9,
+					page, metapage_read_end_io, 0, 0);
 			bio_set_op_attrs(bio, REQ_OP_READ, 0);
 			len = xlen << inode->i_blkbits;
 			offset = block_offset << inode->i_blkbits;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
