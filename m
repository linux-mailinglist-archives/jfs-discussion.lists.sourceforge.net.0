Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A362FB6B7
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000NL-3f; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jU0-0000F8-OB
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qRexgyyeqqKFdtpeEpXcVWgvACKNrMJyFBQQUSTclS0=; b=TgxGIH6IWEpEFMDXnDQJp5Na+n
 DrNyvgZQVsdQVmkXn7tMJsXFTMkwSW0HLG5c1Vc7qHy8Oy0nRca0nH+x2d1sTSUL5AR8ZcL6wpUZp
 gJx6GaNgVPfgEYvd7iQmcDWXPSmomlq3CJE8uWSf3xb6mWLJZY7RE9gRx9uSebcytiKY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qRexgyyeqqKFdtpeEpXcVWgvACKNrMJyFBQQUSTclS0=; b=CjZa0Cj2VtLpPjkbwayRW9swJj
 BGXh4Ugo2xZLgQZra0h5c+Hgt0LLraahTF+aJ1NH+1OZjiih1AXM8i5egBzgLjBDkIh0BATSqF3AL
 F5RxdRZ0vRKwWZ9z8jtJBG7VpX5aYW/zyjtq/ZE1OcU5TmScv4LorD0ARMWEWqqQykAw=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jTx-00DzPm-9f
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033789; x=1642569789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ak2/nt3tgSZKwQ0NZJ3HfvxP0O9v+7+P6nv4xqLM7/Q=;
 b=Sz+qFZckL+buGVYy3ukWbZaxyqPJ6vfmcXhoDYlvmb13A6OoDDiJwwC6
 iTAUXZ1h8T/TrrJaT7lTZ6sTBmcaXZD6AyfMWWeNn6PA5d7l7tJA2nyLu
 Rc4w0eFrJR50rJ0PK29h/fcxywdVfa65KgczhK8xta083wUO2MqJI1HDK
 o9DAUOEjXVApqo+k2ArpVXGck02kvGvvnbTYsZ3lO7oWLApV+jFKPvX5J
 rsDQdzHqvONhsZnhuo9y/6NSSp9lNScjg6MHJg8fdmAw+gP8nyRvbRdVj
 FJka54uV9hnTRBXzXuhBW49YIrTFuVdQJmwFIKUfYwv/EjSbjb7Y8r47S Q==;
IronPort-SDR: jka+qvt/JaxhKHEbW4GQDUNwjG52V8LzSnGq7gtvIIoTVxgftwb79AKm+KXgQExPYBiDh6uhVs
 nDceI80TWOTqHo4lcyy1rtNmOVjVEQJP+UV6Km64T7mNnJ5HOS25kU/V0nCB1A2ut70QtCJ88T
 hDhFFcKqlcz4uo+1yZ4X42JqXjeFYVCUXogQI/KZYdFsbjcfk0J6mK+wfhkM1RYas5t4+UpkLO
 cO8tgVPSz1RkBUDXfTywxwSTlrnOfBPt/xl+TuTecwhEaJStwWlPZ/dwNygW3X6niGfw3WDqxQ
 9Rs=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268080960"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:07:33 +0800
IronPort-SDR: pl8gSPg4sg+TDCtPz/Sc9id1Hs7MpxTNdkKwvHJOaJgfDsHIM+nuU65EfD/wR4bh1GQgoZCJCx
 fElKQ/MBxGhbVXNOO2u01uJJx/77hxnX1Ccn9MgUx+LVpnFSsVhO+b5OEFTsdTgN+3Vn3MKrYA
 jSL/NPzttWrcNUYNiy6CjbyGrvMaRvO02HBX8ZzKlGZuIXTQ6YgIrGruychXnMJBhedTaLB4RU
 FslyJ94ET6fskfri1vHqbTWVHyrSIdgRj9nLhhDZxCWZWE00o8LHbLH7aYstXjNVxnSgVXe0//
 mdyUUoGMRNnxX1UDA20YldwO
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:50:08 -0800
IronPort-SDR: XuHiYNQi6H/F+p2JRpeqvKepY/gWFggYc3PK+RX4NWnH2J++ktvqaZn+XFm15C5dMKrEJfHz0B
 tcx/8H8EcZQjAkvVLLfd960MjBgFb7S9i+JAaGulJ1Ed6y5pQvCWzQsDBAb4mxWFQRcOQm2sQh
 InLeUCQ8BhpQ0hg7T5JV8TxNze71LOROzEztByIwFHi0muZ5jMuDAa0BYs0z85+J0ujkGowHhy
 B7cEPZDWrY2+Vnoe2urCnxNw5+yxuKbmlE5yr1VYKmzFzJMkDPxkr8LEyEvcKah9eb96VGIlX+
 j4Y=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:07:33 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:02 -0800
Message-Id: <20210119050631.57073-9-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jTx-00DzPm-9f
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 08/37] gfs2: use bio_init_fields in
 ops_fstype
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
 fs/gfs2/ops_fstype.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/fs/gfs2/ops_fstype.c b/fs/gfs2/ops_fstype.c
index 61fce59cb4d3..32506d5615f4 100644
--- a/fs/gfs2/ops_fstype.c
+++ b/fs/gfs2/ops_fstype.c
@@ -255,12 +255,9 @@ static int gfs2_read_super(struct gfs2_sbd *sdp, sector_t sector, int silent)
 	lock_page(page);
 
 	bio = bio_alloc(GFP_NOFS, 1);
-	bio->bi_iter.bi_sector = sector * (sb->s_blocksize >> 9);
-	bio_set_dev(bio, sb->s_bdev);
+	bio_init_fields(bio, sb->s_bdev, sector * (sb->s_blocksize >> 9), page,
+			end_bio_io_page, 0, 0);
 	bio_add_page(bio, page, PAGE_SIZE, 0);
-
-	bio->bi_end_io = end_bio_io_page;
-	bio->bi_private = page;
 	bio_set_op_attrs(bio, REQ_OP_READ, REQ_META);
 	submit_bio(bio);
 	wait_on_page_locked(page);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
