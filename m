Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 658842FB69E
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reS-0000N8-VQ; Tue, 19 Jan 2021 14:06:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jTx-0001j7-Ow
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eJYxmMHYfaPtwDw0hyRU+uRskyxaEEnjKwfgtBdzdZc=; b=aJsR72NGaY18XA/bQnPCIZuNAk
 EY9CXs+htMTjFGFNSprsQGZ1/ETV6hJBeXEf2ZxGB87PWzfkskKGSVjxuytRgt35t+G+RUVJxinc3
 hlOcpj+VYSShrFnxc++2V/LEFiC2Yr3hNJtsP9KpTgS0uPYnmGSVaRYTWlTVHlx5edhE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eJYxmMHYfaPtwDw0hyRU+uRskyxaEEnjKwfgtBdzdZc=; b=dmuZpWVBDJ27cifyp64biBhWgF
 pprdt0HkAmozWQISWLc3iR4aJZIpemecG39YIRmGQdaRBQZwJF5/LsxV1thqbhR6WwM5J6hRjkzfw
 RezJc1zzG02J3exnDtbBtJZLnpIqLjoCSWVdYRQShM1hlU/v7wrZnkOU1rcBkT/Tr+wI=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jTq-00DzPm-4C
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033782; x=1642569782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tRNHR3soK1Jmg8jV6+zLlFyC0jOJz82j7hH7LUdTG30=;
 b=rlXUB1ed0fvWF2am8ds8S2GUG7U/fxTyu0eYIQYoUgB433L/KgREwsuG
 yae1aMQSspWAuKHhfzblL0pNGU8G1MDy+R26GaXalJzxpIW+JcnKOOXxe
 gsGD9zD38YcNN9oQrRQayY4PpfMFdvu+AoRdwGmzdAYYnHy0jRcNqul1R
 FcluS9GiS81nL4/bPC85mXdrk5BEcfZUJv/hUOg4P4l24WyLSzsniP+zR
 CKEMX4DT/MT5Y3m7+33e2bSw6/smZBKn2o8NjKl7/KCt19QV0Bhu2okTM
 C/L4zfVSe5Yl1nnw/Y/sPqVjKOGAHB+geTLc2+V+HMlEVDmS5r1dYfTPE Q==;
IronPort-SDR: 3VWVtkJv8czNLLlLKBBH51oG3gG2HiURGCn7fCWmWHhmk5d81POrPtEi6UenKZrmL4nHb2GVTU
 5NuB4O8JdZeYCrsFnoi64mVAl1coW/cz6++tXW/qvIOmuj1Wdg9Zyv3bFiLP8vxmTJhTHSBWt1
 tDrOAuOXehQUrbW0iQtzROJXOfwTVDi/Uy8iq1zExcc84xhyzThRNj4/Wj44mri/BSJeO9h4rA
 1CaCwXZiPBX2AUgHwGQEJwhFvcAvRtY3ARDZU09RHSnp9S5bdYUcUc+WjL9AA3P+aFtGYuhss0
 ESY=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268080919"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:07:12 +0800
IronPort-SDR: cInlXyE8YeHYx5AFuqo9l2PFrgx/7r+fMeyk47kdrokOtHb2HAw05nmlQcmqWAyKZI2phJzPMg
 JHoxs9kSrNP+NGxEqjKkQDD17igNFbSZoh1q6MgKkXarcD6FM7+Ba3sBEHdgyEp5Jx4U/zIWLv
 W5ymvo+v34qNCMqbAKXacsLYY336u+hmSnW+/tUEOyfkLkwdUadRzre+CJ52S9OipGOV2GNOWe
 FOhlz1RUXjtULW3W+xwWBMTGllms/fkygQngC7F5bG/1xGHDirwoOXa2cjs0LhbfPz8V3Bmdj1
 qPxc/upBKePVq9OHS0xY3LTM
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:49:47 -0800
IronPort-SDR: GDd4J6YTFP8HhrZnL/kPcBPBHOjVMkqjgTSYePXIN1p6VjbBUOlt/t7knTI78j01lupweBVXBE
 Qrf/3CuakDKuhfZFB9YorM1NE5OYf/fNye+BAXuLpvEgn+mQDBn/ePyPBWiXAz5XnISDPfEpam
 WLSsiz8QPhiv+mHlZ3XmyQpDw+MKe+Vz4c2sB+5IGEUQ1QQKIMcPMlMUElLMqb4wubx9smdtxD
 /qANSSO3eFYpLv+9iWpFZEjNiZX8CfoH3PB920NT0je34xsn6+9qoX8nDurumB5w1MB8IpLJkr
 gR8=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:12 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:05:59 -0800
Message-Id: <20210119050631.57073-6-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jTq-00DzPm-4C
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 05/37] ext4: use bio_init_fields in
 page_io
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
 fs/ext4/page-io.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/fs/ext4/page-io.c b/fs/ext4/page-io.c
index 03a44a0de86a..53a79a7aac15 100644
--- a/fs/ext4/page-io.c
+++ b/fs/ext4/page-io.c
@@ -400,10 +400,8 @@ static void io_submit_init_bio(struct ext4_io_submit *io,
 	 */
 	bio = bio_alloc(GFP_NOIO, BIO_MAX_PAGES);
 	fscrypt_set_bio_crypt_ctx_bh(bio, bh, GFP_NOIO);
-	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
-	bio_set_dev(bio, bh->b_bdev);
-	bio->bi_end_io = ext4_end_bio;
-	bio->bi_private = ext4_get_io_end(io->io_end);
+	bio_init_fields(bio, bh->b_bdev, bh->b_blocknr * (bh->b_size >> 9),
+			ext4_get_io_end(io->io_end), ext4_end_bio, 0, 0);
 	io->io_bio = bio;
 	io->io_next_block = bh->b_blocknr;
 	wbc_init_bio(io->io_wbc, bio);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
