Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A879B2FB6AA
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Jan 2021 15:07:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l1reU-0000PB-10; Tue, 19 Jan 2021 14:06:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=646552d04=chaitanya.kulkarni@wdc.com>)
 id 1l1jVY-0000R5-PP
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qXRpfCVjhbOvDloAw5qiZmf1Yp/2x6w6UaSwmNEHBgM=; b=DejKguBZAZsiauFRrmNcEOevEh
 zeogeE6FvUrR2VZykQXJCw3jRs6g9C6A1Uo4pX983S2cDlhWiH0MtF1iFnFe60JxR2ngyhpUKmbYv
 FUI4aR74+yES+xmMKsOhtFXvYUiOt8WPYVjGWPRyxg/WfoL88w0OIVcj9TxZbboXJMAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qXRpfCVjhbOvDloAw5qiZmf1Yp/2x6w6UaSwmNEHBgM=; b=Nc68AOIML4BWzZ9c2qIr7ldYUD
 6n9nZ6WuH06g+L5cIACKtbEJnmc8biAf7yIBUmUrSXLqVdGQgMmSRicsaBguytoszWdSZTR8f4/FA
 AfmOyUGxUP4+E9K3D/OIGRraxSvc5dKd3822GKRDPeuvKogE+R1hDoB7xLAi05GvENow=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l1jVQ-006vqz-AN
 for jfs-discussion@lists.sourceforge.net; Tue, 19 Jan 2021 05:24:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611033880; x=1642569880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kVFX0znrSc+8VbzsAzlWslK9G1sWqMMHsAPd6F9G8C0=;
 b=U2FdA1vpad63Nsni/a0yimGCnP19XhA6h9p/X8TOw0J6RVj4xStxklC9
 ujr5/AypZnXDypRZ5TDh13DgBsN+uVxpeXaMA+A6d1gkHS7lJrpj9Zbv2
 TZ+eGI+GWSf1TBDfFmc13QGVUsGkHnXP7MQRI66s4cqwIol7KT+LPHncv
 GIgUtJ4TKi0sacvoreDvGVtiiMOeFFkipKKoKfUeU5Lga4fzKaOMDOEVF
 UzjcswNsbmMsQO+5Of3/WTfre3zHCr36jUxu+B9T1GzmfOk0h+T5L+hl7
 80jWKXVjA+jGcgwHF++upuCpRolBfiWgYzUk70CAOmsOSWcFkHkBraP5f g==;
IronPort-SDR: hCRxHQ7arB8N+eIoTL3sNIX3Smfe0Xm1ZQW/wrduNxtKQu1y8uyHwYOIQULEucj1vBayZZVdLr
 FwAEA2PGezNQwQEtVZ7ywR7DR9nov1RSqcR79mZzEmfKs1M62xITGn4a/Lh6JBkY0a4F66LXSs
 cZGYmTre/FQsdhJsgLDn2s3dBFb+Brt13J89cvnX+lybQr5tRt4sFlqs01nTb3Ux7dvGiEYpGu
 sqU7mzUxFaY7NthrXZrO/HggaIB8q1qrCvG2FSVZWPxuSa7yozpd47HIyfnr8crUTJGRNXMkJ3
 Ve4=
X-IronPort-AV: E=Sophos;i="5.79,357,1602518400"; d="scan'208";a="158940632"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jan 2021 13:08:59 +0800
IronPort-SDR: CMU44P0kULpc0afOWnvuAgMEKlfeHf2XjZz3qhA/xqsbkmRH41ps7uRJLQT6ND+4joPkXa34/6
 RtWwfSaxnSXysPHvhXXi0P+laP3sXEXcEcJpcDHpwbii5AWslBzils8GjZ/aPpDnbTNp8iSNP4
 dRfvS+Io3xfJ6wm2yGc9SWINYbihUSYt3pV9R0Ph+Y9DfnPNtVC5k6fjiUHNqW3FTO8Zhs4vJ+
 l/+ETTCInJ3OQy+idrQGS4k6lTTLPWbPu8veHLRz3P2qIjUTZiiNRxE9C19Xtcqht63ass579j
 OR0FyVnqwPBHDMenSo2ur2rX
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 20:53:36 -0800
IronPort-SDR: jlVjSrblz306Hto1pLF+Ht0EEquCddwQbUHFuCddrqoN07zLTxnOBCPrasx6QzbFI3wH8LUOM6
 f1riISJo1ZfVD8XFhKudLwqjNPGTk45UkBknW/fvY8/YSLAFyl7p/oEVvVwMk/Qs1/83QCrF4q
 ATtQzOiVpqAKtEILRicfThLBsahVfoN7j2kdMa4Kjuo9XbLFp402k/0XWqZ4GyoE/rJecEZ36T
 8WqaSeI83mvc1WGr9SQTI7cT3Gl1099yvZzXS5oMJnA3jan5x1SLdjiEGtr/xqjinEgosWxBG6
 /Qk=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Jan 2021 21:08:58 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-block@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-bcache@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 cluster-devel@redhat.com
Date: Mon, 18 Jan 2021 21:06:14 -0800
Message-Id: <20210119050631.57073-21-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
References: <20210119050631.57073-1-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l1jVQ-006vqz-AN
X-Mailman-Approved-At: Tue, 19 Jan 2021 14:06:29 +0000
Subject: [Jfs-discussion] [RFC PATCH 20/37] bcache: use bio_init_fields in
 writeback
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
 drivers/md/bcache/writeback.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/md/bcache/writeback.c b/drivers/md/bcache/writeback.c
index a129e4d2707c..e2b769bbdb14 100644
--- a/drivers/md/bcache/writeback.c
+++ b/drivers/md/bcache/writeback.c
@@ -358,10 +358,8 @@ static void write_dirty(struct closure *cl)
 	if (KEY_DIRTY(&w->key)) {
 		dirty_init(w);
 		bio_set_op_attrs(&io->bio, REQ_OP_WRITE, 0);
-		io->bio.bi_iter.bi_sector = KEY_START(&w->key);
-		bio_set_dev(&io->bio, io->dc->bdev);
-		io->bio.bi_end_io	= dirty_endio;
-
+		bio_init_fields(&io->bio, io->dc->bdev, KEY_START(&w->key), NULL,
+				dirty_endio, 0, 0);
 		/* I/O request sent to backing device */
 		closure_bio_submit(io->dc->disk.c, &io->bio, cl);
 	}
@@ -471,10 +469,10 @@ static void read_dirty(struct cached_dev *dc)
 
 			dirty_init(w);
 			bio_set_op_attrs(&io->bio, REQ_OP_READ, 0);
-			io->bio.bi_iter.bi_sector = PTR_OFFSET(&w->key, 0);
-			bio_set_dev(&io->bio,
-				    PTR_CACHE(dc->disk.c, &w->key, 0)->bdev);
-			io->bio.bi_end_io	= read_dirty_endio;
+			bio_init_fields(&io->bio,
+				PTR_CACHE(dc->disk.c, &w->key, 0)->bdev,
+				PTR_OFFSET(&w->key, 0), NULL,
+				read_dirty_endio, 0, 0);
 
 			if (bch_bio_alloc_pages(&io->bio, GFP_KERNEL))
 				goto err_free;
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
