Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCBD2FB694
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:06:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reT-0000Nk-AV; Tue, 19 Jan 2021 14:06:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jUl-0000KI-9G
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WwKZB6XKe5Vyc3G0Gx5DJ2DnB7+76Awn8WpWnZC1//M=; b=MVW+Ex11/4C1gV08H756eFxlM8
 5qRc3d6tVC/CSAT46JGGcnQ3dxTZq8SX1aelVEwwHqPoKKq1Bpz5XfDHdVmlIExPwAzQuC0VZWOaq
 zIit1wr4LPjlJdG9GxmY1kPLFxU+XQ5zK3z4lqYupFlTG+M77xe0HChUfEmBh0l91RjE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WwKZB6XKe5Vyc3G0Gx5DJ2DnB7+76Awn8WpWnZC1//M=; b=S11XM1Fmo9PvZ3GltxWvsZoYsz
 AyJnJ2cwFzIejzP53eyKyVBZHoTQ4UJXfltpyZc6qtvK7M22xgrSMgP573E3w//l76kXw3cNWoWDf
 +o8BUWR0p18Np4BIPWZLgwBIREX/79BAUtLPpmwTQ8At2FEVfz5oIYUHa2e+I8CskT/c=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jUW-00DzXK-6w
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:23:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033824; x=1642569824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HPCbLSlGMOVA8XHM+WRUVNKbwgmkWpn/wLxwGOm9s4Q=;
 b=QNJVzNhYt+Wd3e5j6vafeXC/26w8CPaeGN0Y8BQJWK+qujEV1yEux8p/
 L0OpNXJl8m/VHnpAqvmy2Wa9ABnx+hwM/QCPFiHbrw4brrD94gYcoMegf
 dQylPodHYqKaAwtJ77wWzUr9wPJpGty6AaOQ2YybKyXbzXNKBgoxonMmG
 wOcufRctbULvRt8PqiiEG3LqTtrlKUCWfh5HgiYjsVzXNTilPR0kmqPDl
 Z2cP0pjDh36eoSo7gulYxR4Gsw/rnCE/u7SYCGxuVtcbnd0FLf5qXjX+K
 pU7ud5tELgA66xoeiMo4K5wFnrNv15WpEcTOgAvUs6L/o9cD9yGUFxX7g A==;
IronPort-SDR: NFHAAwHSqYFXbP34WFfXXNBrTXsHPwHg9HAomsdnXicOhA5KyvwfqUgYRRjssGgRdpfyi92cSL
 2ouqclhBUi2n9/V4UTJyZRW1yJyZH5o395mBLmF1AZ4uaTGGkKImn/WTspxxiMmdPtaA/UJJdd
 ID/cubnVGZytAu+ZKtSzl4flURX4KMVFcDo/P2sZcAVRg2852QosJsM43yOW9HSmZZK7BkeXf9
 EQOCSgMGqsuIyfNkHY3oDIzd1ulgaHFtdW/dGJ3leDeT07Ld4BPkGf0dvqgzCn35e8xSzbYW/t
 42k=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="268080999"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:01 +0800
IronPort-SDR: NjrrXH1qLwCU+YZ6+SDlhLgV0CGjgrtsInipNxieMsRfBGLRLqKwm+XtxutPx9uU+6H4aXbQb7
 Uv+ieqPpWm/SU9kNXcE0YHtIy+5RXCav2fDlBIpdyONIR4TaABq1ozNV4moduiNJTGiUgYHYAp
 2yG+yuRMHto5jXdlfQCrcTzs2IwHPVWCrPPiB6x22aBRT0BAQAlb/6C5dee5AjPmhRG6UciYDG
 /E5CnEMEeYpK1NAOv/+agB09V9btLfH6hNaaPNJ1ktG9uR4Nz7IXJkvurkmuh8jk+7oKytjbK2
 rTE3SiEqFVzvjX5gSDj4we9I
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:52:38 -0800
IronPort-SDR: Cc2iHwjkEjqCebjYIHV37DmzL2JFDCj0LnxjeYf49PHxyiTP2NZ8nzuGBtZ09ViDWUZ8vTYdRm
 J7nrWhdEN+gCgWv2vDuDE922rCxDY7IuzkLO5tibQ98c7vYRFbD3A74b0I3+FCkHZc9iInjMsk
 ttUysIH9YFkoboXWQTeupwDS6z808YvuNNjY8dANldh5XCHFY3B8WggCGXLgt0OA8lWiQ/lzA1
 Zb3dL/Uummd9+zxAUamqnmJw4K9zg4dg1fijcGrmDnJua/9hMwt6DOXhCDJInxE1KS7iThFeH9
 9Eg=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:01 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:06 -0800
Message-Id: <20210119050631.57073-13-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l1jUW-00DzXK-6w
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:28 +0000
Subject: [Jfs-discussion] [RFC PATCH 12/37] zonefs: use bio_init_fields in
 append
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
 fs/zonefs/super.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/fs/zonefs/super.c b/fs/zonefs/super.c
index bec47f2d074b..3117a89550f6 100644
--- a/fs/zonefs/super.c
+++ b/fs/zonefs/super.c
@@ -682,10 +682,9 @@ static ssize_t zonefs_file_dio_append(struct kiocb *iocb, struct iov_iter *from)
 	if (!bio)
 		return -ENOMEM;
 
-	bio_set_dev(bio, bdev);
-	bio->bi_iter.bi_sector = zi->i_zsector;
-	bio->bi_write_hint = iocb->ki_hint;
-	bio->bi_ioprio = iocb->ki_ioprio;
+	bio_init_fields(bio, bdev, zi->i_zsector, NULL, NULL, iocb->ki_ioprio,
+			iocb->ki_hint);
+
 	bio->bi_opf = REQ_OP_ZONE_APPEND | REQ_SYNC | REQ_IDLE;
 	if (iocb->ki_flags & IOCB_DSYNC)
 		bio->bi_opf |= REQ_FUA;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
