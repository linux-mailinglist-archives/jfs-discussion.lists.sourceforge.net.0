Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 210D02FB697
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000Qt-UU; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jWY-0000Yu-K6
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jy3vLcbGVeX/ZsY85ndLF8wyrG2fQVkRiXav8QwvS5w=; b=k8XyZXuxM2zPKYj/CG227qzxFJ
 m6CnvgPPq/mzrjY3jbByrZ8Y/8R8+Vu6GkqDW5sk+bSfYkLlV5GqJGpI4c61x9BUIJl6zwmuCnC/S
 8By+D//T++Rl+rumWGz1oE/KVPuj2cg5B/7CD4Sj0rXNULpM2YXdUK5CssffrJSY4wCE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jy3vLcbGVeX/ZsY85ndLF8wyrG2fQVkRiXav8QwvS5w=; b=VAd5TIw2gHMpqzTh93SREaK2pJ
 1XzPXMD7TIiAciNQLCphqqXHlRCIV/wFPW2Gtd4CA+oVux9pWfrIyC22IIHIkCaAUjlKiDN7Bm7H8
 4V4MOEW1yQ306MX74mBws2irwR1h2shlSadKxHc0dHf0sbiUBfztn/0cA79Aut6MrTSk=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jWQ-00DzfX-64
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033942; x=1642569942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xjsJb5PcJFfs7EA4rzkbsgQNMxTmWsRroHWsaZepkNU=;
 b=I8M9Unu+Fqdfx4YBfpc1GzDfK7peQyI1Uj9qa2+OONkPcusfk3H6VTmP
 mWIMIL3L5Nuv4cq9umFczKhRvoeKbSz1B0krWoKdY/Gh0kw/lEd23/sC0
 gZotY+pw6Rsw63rqSb7Et8N76tuqTjEXSc3ezyvjZfzzC8U/SHlQq+LFo
 /TfpnM8VRS5DuspVlCh4dmtWrZBLqDeXnbNqajFA1+h1p9QU/y0Xob4VZ
 OzhV9hWYNDoVu4H9ueb6sdfZgYMbPfIaWQUUmdXvd3GPbR/ayTtT4cmwy
 Cy3mMyW0Lse6E4k2ZlXDSy/T2FwounNnaKNZ2qrwtIrItHvY1rgc6vicB A==;
IronPort-SDR: 3ixidiYS+z/4Nua15zXh87cCnChbTggpuOlwF2bhsHixqQ1RiedNndbzvmwys4dKYmXkoS6V71
 h1Sa0/qeGCjaHPOrRiEMFQvYehnPnlo63TD5m8rQC9DYSh0JVxqAwnYkB3HmORkP4hb8WcI+W5
 /JgftfBotW36oQn1iGYHVdlXfWDVk9yOvfqcvwuLGFSAX2kEuBg+tjHpR4uSojwTL0UGaUmLbS
 9RGDX1RiShbsZDdMCUdNTk+2btQocz+MRWeMrv3nC0LiIRKedfe1oey7QlIIoijE6x9NeLX3Bt
 ngU=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268081214"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:11 +0800
IronPort-SDR: e687OMs/lmicG82pcetFtbFtVzQVnlnyyhZzoZ9fFAsuFEi70kXKRkKz+z0qEAf3KfvByxfPon
 47CBvTFoWKqVWcpEguxJeIfB/fr1vOIDJGoOBVVZ22OKm8W6zShVtC1voMxpIGPeVdEzcp6SED
 bIIzE5cg9JK2rH+ndlJQbmXlmQ0hLL1bHwVqTEcK7A0GBcvVINfyfkiD8KFpRrW59WtjpaW1Bx
 5XNeIq1intS9ZMOL4Eg+0/2+Mw5+syMEzn31KBjANz3I4SJbTqGPCl2w+WHZvY7+LVlvd4DHjE
 7fsqWCex9VbpkygAAAor3gTe
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:47 -0800
IronPort-SDR: sUJEXVVGtr6hdXWriU6va4OHVDFOeCqexBkNQgHd29bupqR1FAk1FagKslaqLW3ZUUxGQzR8Ug
 NtO68JgANUVdRxpoSQWII/hxMhExDp+a994ofqnoDT8BbVyZ1XbW5GYb7r0UZsyIyvfIjO50yw
 MZh/UChC09g0/v2Fmm2Ka8Iym4W7jfv3l61pY/GYFfEKqEthOGPxecFMe1viLbkfMh+TmPOZOJ
 niLv3X9jvTg8OiAwbkqtrE2GRDLktY9HmYFpEeDkaOstLITBHpJmhuyQTx4ICZPfsDRpeUTWvU
 THQ=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:11 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:24 -0800
Message-Id: <20210119050631.57073-31-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jWQ-00DzfX-64
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 30/37] fs: use bio_init_fields in buffer
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
 fs/buffer.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index 32647d2011df..32e9f780e134 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -3027,16 +3027,13 @@ static int submit_bh_wbc(int op, int op_flags, struct buffer_head *bh,
 
 	fscrypt_set_bio_crypt_ctx_bh(bio, bh, GFP_NOIO);
 
-	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
-	bio_set_dev(bio, bh->b_bdev);
+	bio_init_fields(bio, bh->b_bdev, bh->b_blocknr * (bh->b_size >> 9),
+			bh, end_bio_bh_io_sync, 0, 0);
 	bio->bi_write_hint = write_hint;
 
 	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
 	BUG_ON(bio->bi_iter.bi_size != bh->b_size);
 
-	bio->bi_end_io = end_bio_bh_io_sync;
-	bio->bi_private = bh;
-
 	if (buffer_meta(bh))
 		op_flags |= REQ_META;
 	if (buffer_prio(bh))
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
