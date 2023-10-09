Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 428BA7C85EF
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Oct 2023 14:39:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qrHRy-0007Ao-It;
	Fri, 13 Oct 2023 12:39:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=8646b84787=lizhi.xu@windriver.com>)
 id 1qpnXf-0003xg-Cq for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 10:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gbKq1gtSDc+O2vuPRtkIcpNC6/iJ+SOTe8Xsyqj7Jms=; b=aldwOcXDlQZyXIYXUXFVHgOZe7
 +zDWpRqRkQ378Z4smzjcY07xI175A2wzyzx9cFrPnpaEO3VtEn/hS4ZLBlKvuHKB4ip3qu4FC8M2z
 7V6KafgDv5+vIBkdEdeHhddTwPyRRvrD2n5HMfKnNCvk+MuEj+7yWkK2SITOwMoX7uMs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gbKq1gtSDc+O2vuPRtkIcpNC6/iJ+SOTe8Xsyqj7Jms=; b=V1bHbtVwqoUaf9itrP0GfTxnQk
 03M/4/RjERlBX1gZWVnq4kvSdO/ySyOUYij9TOL/ZsEHfFjREmSlGtzeAuaz+vPc3IaSyT4pa9EJw
 SiSa7yOj0JzR/fvKW9nfa2Zg3bNaYxuGobcRbr1zxT7FI0kqUBcQNfo9jWm9TcAKr36I=;
Received: from mx0a-0064b401.pphosted.com ([205.220.166.238])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qpnXb-008JBd-Ko for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 10:31:15 +0000
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
 by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3997oubK021800; Mon, 9 Oct 2023 02:46:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding:content-type; s=
 PPS06212021; bh=gbKq1gtSDc+O2vuPRtkIcpNC6/iJ+SOTe8Xsyqj7Jms=; b=
 ljCMD14xhKF/hicNBrq1JAJ9hrqpWq/3njuUvQCEc+uG9Mn7AZh8gcsE6d8ehU8Q
 UrOQpUvrHPZoJCsaY9LiDBF2xdRBbVe7Gojix8KoLue3YlDYKbxb4fpIMagdP75I
 1xAQ89mVDsTRHu5pz4I8L8hFX40SnS7fI++cvwFDVN7U1L7WeTPE9sDyeAWQP/x1
 c2DEYNQ+GgPIJn4QOTe7A2Z9VYQEEXnqqTNe9RDPCh6Jwp36QHnnz+/nyHNSnJfK
 8WFk8/GTkgyC6rDGNBfkk6EBt7LgcqRjU/9Qf9JS2o4Tfq2NWVFS3udteo6zAoui
 5Nlf0cNhI4i2fiEBHv0zhA==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com
 [147.11.82.252])
 by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tk2m0he20-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Mon, 09 Oct 2023 02:46:02 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 02:46:01 -0700
Received: from pek-lpd-ccm6.wrs.com (147.11.136.210) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 02:45:58 -0700
To: <syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com>
Date: Mon, 9 Oct 2023 17:45:57 +0800
Message-ID: <20231009094557.1398920-1-lizhi.xu@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <0000000000005239cf060727d3f6@google.com>
References: <0000000000005239cf060727d3f6@google.com>
MIME-Version: 1.0
X-Proofpoint-GUID: tFDM0zeFcUxp2M-7km3gquoA9XDeWls_
X-Proofpoint-ORIG-GUID: tFDM0zeFcUxp2M-7km3gquoA9XDeWls_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-09_08,2023-10-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0
 adultscore=0 suspectscore=0 phishscore=0 clxscore=1011 lowpriorityscore=0
 bulkscore=0 mlxlogscore=716 impostorscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2310090080
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When sbi->flag is JFS_NOINTEGRITY in lmLogOpen(),
 log->bdev_handle
 can't be inited, so it value will be NULL. Therefore,
 add the "log ->no_integrity=1"
 judgment in lbmStartIO() to avoid such problems. 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.166.238 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.166.238 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qpnXb-008JBd-Ko
X-Mailman-Approved-At: Fri, 13 Oct 2023 12:39:27 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix log->bdev_handle null ptr deref
 in lbmStartIO
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
From: Lizhi Xu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Lizhi Xu <lizhi.xu@windriver.com>
Cc: axboe@kernel.dk, shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 johannes.thumshirn@wdc.com, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 hare@suse.de, linux-fsdevel@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When sbi->flag is JFS_NOINTEGRITY in lmLogOpen(), log->bdev_handle can't
be inited, so it value will be NULL.
Therefore, add the "log ->no_integrity=1" judgment in lbmStartIO() to avoid such
problems.

Reported-and-tested-by: syzbot+23bc20037854bb335d59@syzkaller.appspotmail.com
Signed-off-by: Lizhi Xu <lizhi.xu@windriver.com>
---
 fs/jfs/jfs_logmgr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index c911d838b8ec..c41a76164f84 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -2110,10 +2110,14 @@ static void lbmStartIO(struct lbuf * bp)
 {
 	struct bio *bio;
 	struct jfs_log *log = bp->l_log;
+	struct block_device *bdev = NULL;
 
 	jfs_info("lbmStartIO");
 
-	bio = bio_alloc(log->bdev_handle->bdev, 1, REQ_OP_WRITE | REQ_SYNC,
+	if (!log->no_integrity) 
+		bdev = log->bdev_handle->bdev;	
+
+	bio = bio_alloc(bdev, 1, REQ_OP_WRITE | REQ_SYNC,
 			GFP_NOFS);
 	bio->bi_iter.bi_sector = bp->l_blkno << (log->l2bsize - 9);
 	__bio_add_page(bio, bp->l_page, LOGPSIZE, bp->l_offset);
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
