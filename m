Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FE03075FF
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000Rn-Ug; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51VA-0007vJ-4w
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:14:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yrj1XsQHwUPq3DtHDN7MlkC4uMzBnKkbIZZVhyQS3p0=; b=L2f/iwBohqQCQ6L0zaBmnzsCtT
 W5WAndQCVwiwoPuEiFRrJqcCCVfwTIKugapHWrF32g0bUasBTuqL3xbcqbwMEg63U9M++bhP34iFR
 RqaqtdNCngcWu02eF+hx43vlLeOSwD1k+bHvPN9KniOoUkV6Mv4haZ3EwEjr4DWhLE94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yrj1XsQHwUPq3DtHDN7MlkC4uMzBnKkbIZZVhyQS3p0=; b=bBPTwYlGCGVo2v564MabPj7sKF
 APWyT6hsbhiRvlVspT/419giQTrPblC5feiKsCbKq4dHDKdz4okqxlHO7we/kWv4vTNo8i4AHwYne
 ILUMrHQAlh8swLQCd4sNVP8iaEEPRFVlhrrEZn5nfQnhBP2GX1qdMYKCYjdPcAbK6mWY=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51V1-0000Sb-OD
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818161; x=1643354161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ph9rmwEURyYiJjcGgT3e2aApJZNJOSNpUoZqKSV1dx8=;
 b=RmWbfnj9SzPbRQgiTKvTd2xWGOL8G0FMYQCkuEG4sq33qfPKH9zlUJ2R
 fFO+QHqvmaHAwjvNBtuekFzUrnmfhoK3VFkZpo1YwCq6tPRmSS4wk2oTx
 dRYgm2+0v7akWKKmhw3fWBSRZkM/xF6FSjffK73KCBkFGVf2ma2LHvQKX
 yhgyyHzKIK5DXgMICcEJReYUKY1vDH+7t73ObEl4b8DC3q83Qrb7gcLcJ
 6mtruz6rjYZ3OUdVNOv3hcqKiloKdX4VUSwrrc6TepFZQJJ8Ie94N3zoZ
 Z50Wfmog/kf7VjCygrrF/HiKfaFZZ+II+aNtF3pjRv1Dq2PIuWdSxQ7/P A==;
IronPort-SDR: RjvUbP89qoQ6sb2RNYT42A34j8afb+IotzBLpwh31ImGCoEQ3QHVyMZAjFZuUdRMXk9POJhodf
 xqiz7PInH8f7G06llcDnnbIEGyvnsF43oFkxCQygvbbRK06GlJ9uGxt3wbWoNp6BR0uc+R259p
 H65/BUAaTB47pLUZybAlQ4GjP7jwjVJMXu6qQ9qMeWCDh+55fIHMO7tR+6P9QCaFPXX5WE7Rjp
 Ry9a9HYxLsXeCQFM+YjQuAoN8wjS8E8ph99n4IZhXBKKv3DMY1r/jb69QQytY1yvf3v/1jRf63
 YEk=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="262549024"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:15:53 +0800
IronPort-SDR: lkq11iTxEzoJXmvOp51kyPbMpaloXyDZ7HlSfOel6L6RiHXQMr9THE70q1B4CALDibYyOpQv5s
 bioC9NPD06y+PLoYcRUC8raCs0Lp0QiLp9gUbZOcIMFV4jMH53mlOPEE6/7a6AITZob25bIbTr
 83BQ2TZttSC7MSMM5QZqMcjkVu6rxUZBTKM1Zs688Bgl4jVYLponUo7K+aJNV8+t2PH9SYi3L/
 RS3Phv/c8+3fAbFn/KGhnnCP/k5dKVVTqiVmqbFIR876cawQitWH7GgAytvpfedqNeteQBNXif
 1IeHxiK/WJ+qacrQYtZA4v2s
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:58:06 -0800
IronPort-SDR: 2qgPwD8neR80/SdtH4pRH50bxmDr7msnaiMmu0nET+XLf24Atsm9LH9w2S7p7pMRphnBeo5pVx
 VOFkyyTuzt5tWdOljMzaLRlQ/2Y+vBgbMl5P6BLyAgHROT8V3ajdo6WQ+YwR34TObygZuUERZX
 rfU+sPmHgGS1V+3dgxOeo8REERCKgWHIYxzhiuWRBtY6dBheQaeAr6VP4LTAPeLl+kd1iFUoyd
 mqKwU7dlwbyE4M8F7GURh/yglDYKxcs47wr8oitkT1bgU4EtSPSZoGcLrNM5tqqKQP8I79UW3Y
 S3E=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:13:46 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:13 -0800
Message-Id: <20210128071133.60335-15-chaitanya.kulkarni@wdc.com>
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
X-Headers-End: 1l51V1-0000Sb-OD
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:43 +0000
Subject: [Jfs-discussion] [RFC PATCH 14/34] fs/buffer: use bio_new in
 submit_bh_wbc
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
 fs/buffer.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/fs/buffer.c b/fs/buffer.c
index 32647d2011df..fcbea667fa04 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -3023,12 +3023,16 @@ static int submit_bh_wbc(int op, int op_flags, struct buffer_head *bh,
 	if (test_set_buffer_req(bh) && (op == REQ_OP_WRITE))
 		clear_buffer_write_io_error(bh);
 
-	bio = bio_alloc(GFP_NOIO, 1);
+	if (buffer_meta(bh))
+		op_flags |= REQ_META;
+	if (buffer_prio(bh))
+		op_flags |= REQ_PRIO;
+
+	bio = bio_new(bh->b_bdev,  bh->b_blocknr * (bh->b_size >> 9), op,
+		      op_flags, GFP_NOIO, 1);
 
 	fscrypt_set_bio_crypt_ctx_bh(bio, bh, GFP_NOIO);
 
-	bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
-	bio_set_dev(bio, bh->b_bdev);
 	bio->bi_write_hint = write_hint;
 
 	bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
@@ -3037,12 +3041,6 @@ static int submit_bh_wbc(int op, int op_flags, struct buffer_head *bh,
 	bio->bi_end_io = end_bio_bh_io_sync;
 	bio->bi_private = bh;
 
-	if (buffer_meta(bh))
-		op_flags |= REQ_META;
-	if (buffer_prio(bh))
-		op_flags |= REQ_PRIO;
-	bio_set_op_attrs(bio, op, op_flags);
-
 	/* Take care of bh's that straddle the end of the device */
 	guard_bio_eod(bio);
 
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
