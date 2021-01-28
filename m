Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 43168307606
	for <lists+jfs-discussion@lfdr.de>; Thu, 28 Jan 2021 13:28:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l56Or-0000Rd-Rt; Thu, 28 Jan 2021 12:27:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=655a99766=chaitanya.kulkarni@wdc.com>)
 id 1l51Ut-0002Wv-SY
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jT6tDApc1ZPs0W7N6246KatQayFQvuvnq8tcFjDdPbE=; b=b8n4WkNalkVqMq9aaYyOgnb3yJ
 GglGswg19g8wpcdwukFGQSrXrWj9phNH+8IftWei9GvkxzTsu1MwvHMbXVm8zqBNBxZljiI6GUnkm
 9FWhhD1pki/kVqQHQ/tXXF1vTF49vs1ufA4foc0iA3thuoAA9rcvHVvJvyOxqIoCTtXE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jT6tDApc1ZPs0W7N6246KatQayFQvuvnq8tcFjDdPbE=; b=ArjlIDVE0bWKS0IVLIuxjVWkpe
 sdgxxSjLl+bCDLRwrKBBR8zGhbTPUpImr7wYUT+gQm7aPNARngOxFhQCX5fgbVXZNNPnvglLdO8s8
 iYFxnD0bVnoYhVEqASPXmgPpUOQA6RWbuc1dlJWuA3RLK1X55r8uTw5EH5n25ABuOnpY=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l51Uj-0000QD-JB
 for jfs-discussion@lists.sourceforge.net; Thu, 28 Jan 2021 07:13:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1611818013; x=1643354013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5eayPzy70EKVB5mFbuCcXtyHCS4v72l8k3GegXWivXI=;
 b=hGGaaJsjdzFtluVOwT2Ll/cU/5VKkuFbGK44FZOHuUEtvHHZT+6Fo1No
 clXUNg1+fTllaJKo8jAXGvG54gK7RkQYvFDhhEfALKCM0zT3NhlQYg+7f
 6ho4a6vO1/VIWqXba88Dyb4HATpnbd9U+Rvn+vc679+agRcon1APSxF8c
 y7st29gE4dV0LbuAroDIp9oR1qcW02iHpL7qIg+KHu7LU7XFYDCFFUEHA
 Tnnp/clc63A8pu3X6HGjMa9BwG2nev+Q/s4d0lV0tNuzg2t29BX0JI/Pt
 3hq6PzCtZkFT8mPF+Jresn7bEKdAHng5dnVQ/Y5Eu/2i47gvhsRYmUwR9 A==;
IronPort-SDR: 5qbD62RtUjFE819+91YjKvqKqTc+nJShxneon9FNmvv/bYTNVkCe9zf5IjADHAv9W0E9d/hEjs
 z5RJRLx0Tbf+Bn+qXkv+ps9IanZSNAzdE0b/iY8Vg4cjNN1THQgw0An8c2YQFYwwkfc8aNZAw7
 zOf16CcCgqzVfw/V3GIvvCWoRCsnnzHzt0IZKvKKdO50eh1ZZFcc2jkEkBEYdvTgKsj7BTjzEx
 wNGDeuYijURznsUTmhWaLOUmWwWEQ7d2bEAhxTbfHKLm+GafjaMRcrovQIWCeoKMwaw0zt+KID
 kRM=
X-IronPort-AV: E=Sophos;i="5.79,381,1602518400"; d="scan'208";a="158518191"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2021 15:13:31 +0800
IronPort-SDR: 1HrPwYbfVFIuEUua76u+3Jgjk2minX42hUcHxCWhpGowpiEj4N/hm2wpCq2/ZjXEkbslBeH6H5
 9/rniHkHsuxsLg4ZYAJAZRjXa5DO7u2ZFtOHznRD+SpCcYk+czmjpwNsBF49bCJgLnW2uU+Kya
 tmF0en16VBgvTVyDm52QHVEYXnSo+xO7KzBnjEiQ6fkwk5mdhI/KD/A0utiXlt9p+O3AL7m4/c
 VEr7hrFTIydhUCFC0uXfDOWPWwd3m6wYaUxFr1m2dt0546opMNVTPN218DYsZlv8E8Fd5kSR1e
 HHHFiSwYeQMLFe23gE49tz7s
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 22:57:51 -0800
IronPort-SDR: VOVmzSzF+PFJ5cIlwEfer9zopXRJVevtkqTAdV/vkmWi5tqY25x0d3LuGTyYENdxWXzay1z5UI
 3lglUXeUdXrgV2kjosRDVsxHgPX3JmYCMkybSp7dVFiY2NtJizGeP3Ns2Zua+ztPSx29L5AtLA
 s1r4WqMcMEF5NenjfW/yptNoTwylDj+qb8oKvyina3WsNVkg0wovZeJk89NSPRf5yUzOMPXVB7
 hd4QqToWmHIoH7o5yPqPfXS+LYwCHRus+XuP8hoEESu425XNxiI+t6Xi0EnlRBN9AYDyemp/IQ
 NGk=
WDCIronportException: Internal
Received: from vm.labspan.wdc.com (HELO vm.sc.wdc.com) ([10.6.137.102])
 by uls-op-cesaip02.wdc.com with ESMTP; 27 Jan 2021 23:13:31 -0800
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dm-devel@redhat.com, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, drbd-dev@lists.linbit.com,
 xen-devel@lists.xenproject.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
 linux-fscrypt@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-nilfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-pm@vger.kernel.org, linux-mm@kvack.org
Date: Wed, 27 Jan 2021 23:11:11 -0800
Message-Id: <20210128071133.60335-13-chaitanya.kulkarni@wdc.com>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l51Uj-0000QD-JB
X-Mailman-Approved-At: Thu, 28 Jan 2021 12:27:44 +0000
Subject: [Jfs-discussion] [RFC PATCH 12/34] scsi: target/iblock: use bio_new
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
 drivers/target/target_core_iblock.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/target/target_core_iblock.c b/drivers/target/target_core_iblock.c
index 8ed93fd205c7..f1264918aee1 100644
--- a/drivers/target/target_core_iblock.c
+++ b/drivers/target/target_core_iblock.c
@@ -379,10 +379,9 @@ iblock_execute_sync_cache(struct se_cmd *cmd)
 	if (immed)
 		target_complete_cmd(cmd, SAM_STAT_GOOD);
 
-	bio = bio_alloc(GFP_KERNEL, 0);
+	bio = bio_new(ib_dev->ibd_bd, 0, REQ_OP_WRITE, REQ_PREFLUSH, 0,
+		      GFP_KERNEL);
 	bio->bi_end_io = iblock_end_io_flush;
-	bio_set_dev(bio, ib_dev->ibd_bd);
-	bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;
 	if (!immed)
 		bio->bi_private = cmd;
 	submit_bio(bio);
-- 
2.22.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
