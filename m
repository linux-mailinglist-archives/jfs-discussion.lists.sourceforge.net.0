Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B152FB6A5
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reV-0000Rt-8H; Tue, 19 Jan 2021 14:06:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jXN-0000er-Sz
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C+UP0LDUR6eDHDmmdH9v/90pVS/tl24yW7WgpCpBYVM=; b=M/rfe0x5q0+mXrtJUceD3zHJXZ
 eb88+mM56cgDi12GChRzr+0iIvsRK2V84zS6YUpVu6lF2oDHY2Yzd2iySFxpEoUDGI4OOq3Gysxqi
 nPgPX8Ner/1JI4YB9FAGlrGUru+l7X+k3dNUN7eKxIN3CleU9fGEW7vAs45rqitH0zxQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C+UP0LDUR6eDHDmmdH9v/90pVS/tl24yW7WgpCpBYVM=; b=BQXcsions4dAGx3fVLcIyZTEjY
 6M5baYmreS8tSbluk/3QR2+ed9k8D6daI4+z0dffg+/zMutqXIPQ3mkifYifAADgS6zcJPMURcyg4
 kUVywOwUWrNiMKLxUiGlxtVioDT9SWDzGImyMnNEaio3VCadLIIPTNSJr1G+1aWkLqY0=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jXL-006w0s-5I
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033998; x=1642569998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dUZxU7BncWFawkbUm0QHtY0n6f/CWqD/WEdprzvrR/c=;
 b=AJ4hv/yUzoToytHRwrhYeSWm5cHVxaQ91VL3iQf6IwvYVW6ThFb22j98
 iOPoLLzAiJJA0cy/Xg8lvV+daTDWrK9eT0QFRm8hscbA+jd59t6D2mf8x
 UL6St+3aOK+Y8uaEhv1MGp1SOUxTT02B4drIgiIRVn0Stauo8E4f6cjQz
 S9RjHN/zIKPxAc7qO50shRrFXnHYTLeWPMO3v2QBKN4VUbOehXSzNlDRu
 uWrj/0gCeYLYUvExzpDNl8tOJZ/+MSw6TnxbCyJ2S/aje6QPuRgzr+w+U
 MmpiccL7QRW0HCelxSB1powmWwNVbyLuKej5QUk8qyhRNAaPVSF7ZZWvC w==;
IronPort-SDR: TDggjdDFsTP14rlzal/+Gr+mbTYNScBbMQoSFT/sZUuP4vZHtvoM6qoqtFgF0D0T+6o4uq3fFE
 l8RPjkktqLgS7Mr5J27bkdm4rpQmJHpDtkGK4h3uhNolrZO50oCStpkA5yWXf677FHoSoWticw
 ddKPxU55yH1yWyi3ofDTqH7WLQ8K/EwIvjKLKmQJqkZxpQadbexJ9Oe0WylOFKOpOxD743GvEn
 CXZ0ySC5zqNeYCeAOpdJv5PaBJpB+kgiYcdaxCdv43xYZhyNQoObIAMAiayonFQWb8fs+OTjr0
 wSA=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="162201314"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:10:49 +0800
IronPort-SDR: EOfxneJbLs4G6UDoR+u1tCibaEqsoe5jd24w8Uf9aAvodC4DKSzzV510eKspZnAbV+njDHHLoe
 0wJvKBh/4fy8QunlOieNl1VVPZ9RKmIf8OZLQQihXh+GCg/Ahg1GWXQyVg4dRxELKOWf1Wi21j
 zVjRaITaj3lfpoA4KzJVxMmmylwcDQZOb9u35j3LbSjDsfHB+Yno8NK4bMPnpaAxPESoe6+DHK
 IvXEwd1luWW1aDoWnaCVCIjXzV/bLirCb6pG3b3iAkeoUauu26dnqqxJ8RgaUFsKNljx8n73DP
 GqDUC8M/bEle5QJKMukVZs2W
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:55:26 -0800
IronPort-SDR: l/PshN71cWYbTK1WTMMOJErnyUYZ9w/R4z1nl3IAFxlbXv4liArup+WsFD5ickHhD3utQPm1yk
 sDJR5xYPW7Rk4AOBaj9ddtkrfHNoDjxcLvYwqKoJ+zSMrb2LgwmOyjvRLWCwQh66m+L31DF3GG
 cbQQZKVcF02VZtZcPCLoG656Pl8BFav/PRzS4RekqjE2nR1vtzK5A4F7XeBguGBUnZrVICH30u
 hENXcQH2DncOb3p9BCQrIXCeB58uVf13+u9S+duV8v8olXF+1fRyqTUCKPFMBWOtqHC+TvB1s2
 T2w=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:10:49 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:29 -0800
Message-Id: <20210119050631.57073-36-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jXL-006w0s-5I
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:30 +0000
Subject: [Jfs-discussion] [RFC PATCH 35/37] ocfs: use bio_init_fields in
 heartbeat
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
 fs/ocfs2/cluster/heartbeat.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/ocfs2/cluster/heartbeat.c b/fs/ocfs2/cluster/heartbeat.c
index 0179a73a3fa2..dd37aaac4f32 100644
--- a/fs/ocfs2/cluster/heartbeat.c
+++ b/fs/ocfs2/cluster/heartbeat.c
@@ -528,10 +528,8 @@ static struct bio *o2hb_setup_one_bio(struct o2hb_region *reg,
 	}
 
 	/* Must put everything in 512 byte sectors for the bio... */
+	bio_init_fields(bio, reg->hr_bdev, 0, wc, o2hb_bio_end_io, 0, 0);
 	bio->bi_iter.bi_sector = (reg->hr_start_block + cs) << (bits - 9);
-	bio_set_dev(bio, reg->hr_bdev);
-	bio->bi_private = wc;
-	bio->bi_end_io = o2hb_bio_end_io;
 	bio_set_op_attrs(bio, op, op_flags);
 
 	vec_start = (cs << bits) % PAGE_SIZE;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
