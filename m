Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF119E1922
	for <lists+jfs-discussion@lfdr.de>; Tue,  3 Dec 2024 11:22:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tIQ2u-0001kY-Es;
	Tue, 03 Dec 2024 10:22:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tIQ2s-0001kS-MT
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Dec 2024 10:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WKIY4LrlVHMQ3OOsHWYNK8Ode//U/Xxt59UxPG8cG04=; b=Z97pbit49W1alYgNZmjrV3S0Es
 lWXbaXOm1pcQ8YQONYIkhupPKfaCvuyFtT8eCcQxmZwFg+0Gfz6+ADw6wE1kWuKSKUNbG2JrFO72b
 kJw9LVLbJZwq8SWGQPib2RaSruzY2a19DESbZMsSmsTUpt9x7h6iJnRHpYhpwiXSHoog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WKIY4LrlVHMQ3OOsHWYNK8Ode//U/Xxt59UxPG8cG04=; b=mOKd2gF917DKPwGmv2qZwnXjpw
 23LSif672FkotZ+6maebXQqYFrbwa0RoM3tt5Hvjf1psOfjuDYufQFi+RqXJefRNlAxEejTa0sH9v
 nuocZwUl7mdTYisW8sVcnUmIpamoi1nMYXoYFFH00anCkXPNt6IIknPcZtXA9STemuNk=;
Received: from out203-205-221-153.mail.qq.com ([203.205.221.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tIQ2q-0005jc-O0 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Dec 2024 10:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1733221328; bh=WKIY4LrlVHMQ3OOsHWYNK8Ode//U/Xxt59UxPG8cG04=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=VGeH6cEzIkXJ3kVfDa1OEb7bkvfxPzQ0pBxGNItggHewekJuhYc/DbCSVIMR9Htqo
 Q04bIYiAN7sNh6GCq9+JEy+G3JRfytHjqkNjzYynvR7VvDs1hLlhktjKsO8O2QXYCl
 uOjYBrtazQdlv0le9Bt/y4LVrEalfYwGGjR/S4aM=
Received: from pek-lxu-l1.wrs.com ([114.244.57.34])
 by newxmesmtplogicsvrsza36-0.qq.com (NewEsmtp) with SMTP
 id 57B8EAD9; Tue, 03 Dec 2024 18:21:59 +0800
X-QQ-mid: xmsmtpt1733221319tp3gynv1o
Message-ID: <tencent_F56949906EED6EC90C8027D0C6DFD2F84606@qq.com>
X-QQ-XMAILINFO: OWvGpOnEMXUNOP+3RrufT5kZdR54MKp3zE8TTlC+yFZzoakx5HZGv5BDvAjVCS
 IjEZaIq9pUBwZxR6tE3t6tu7cimfsWiJa42SqX+LDJGaNLE50+rt36iHdPYT3qnRmO0y1iil1lDa
 PzOlma1bnaMvfGgo4hiSpHsze4+NrEL9JX3X+1BxrSU2/CaxjRd0pxfL2d84m3OpHMsByWCgult7
 V5Uz3KDryyfTfPFUe2q1L4PJc0cHZ5rnMs7qJFST/IjQkqg26x2RhsM85AQeqZS5ohPowgc5zNeG
 FSoxNUeHACXGGzETWkKMBsbKp50wfZR+RuyOfrDR+66L1+nunxU/evxLGX7qAKm4JGM3GYtI8Rfx
 O4MqzXUnxQJb1HQdLsoHJGfLusY0XqPV/19/1OpvQWc6MvgeOFKP6yTEm5keEcEXpeBqM91lAfEI
 NNX4ANkn0maBLMiPpvcmDJjg7Cs8SKDDc79JT1v9x0XYLBXV9n4w5FdBo2b3VdFh3mBYAscSpV+u
 Tcclpme/GDbktsaxbfqGUzlSkZUmBqdPb/n6WIgwYg0dz9q8rdJ90qiGv+4dAIO5cE/w+u1LhBTm
 dO8uD17bUWgTvf8eFxTuxtsVTLdEpnd21XgFuHbq1723UTxYrnHR7RwH8w5x2XrRCgaNlmq7j5/2
 UmkLHIz0qHgxl8sL5JJQ6ngPC4SUZczyE9DJyD8gMc1lewjeMA9M3uHh2H3WWklcRXxmsVa2p+/C
 rffw6AuJie26rcZ4v4FGX4spmwQPLeYeVm7buQdiC9Hi5U5/r1eXoLpu+BYb6xKGB5RTtDZiDwvj
 5LC78LqgCRINm2gpGlT644e3Zag90519zewFhii3YFWVOxWZ7kUDYWqKQ0x7QdYv9NW54yFLXRXe
 T2YYuhlOAjhND3QrqpK444x2DFsd7v6Q==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
To: syzbot+7c808908291a569281a9@syzkaller.appspotmail.com
Date: Tue,  3 Dec 2024 18:22:00 +0800
X-OQ-MSGID: <20241203102159.599532-2-eadavis@qq.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <674e82ce.050a0220.17bd51.0040.GAE@google.com>
References: <674e82ce.050a0220.17bd51.0040.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The width in dmapctl of the AG is zero, it trigger a divide
 error when calculating the control page level in dbAllocAG. To avoid this
 issue,
 add a check for agwidth in dbAllocAG. Reported-and-tested-by:
 https://syzkaller.appspot.com/bug?extid=7c808908291a569281a9
 Signed-off-by: Edward Adam Davis --- fs/jfs/jfs_dmap.c | 5 +++++ 1 file
 changed, 5 insertions(+) 
 Content analysis details:   (5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.153 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.153 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.153 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [203.205.221.153 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1tIQ2q-0005jc-O0
Subject: [Jfs-discussion] [PATCH] jfs: check agwidth before calculating the
 control page level
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: axboe@kernel.dk, shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, kristian@klausen.dk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The width in dmapctl of the AG is zero, it trigger a divide error when
calculating the control page level in dbAllocAG.

To avoid this issue, add a check for agwidth in dbAllocAG.

Reported-and-tested-by: syzbot+7c808908291a569281a9@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=7c808908291a569281a9
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dmap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index f9009e4f9ffd..2377102d9c4c 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1373,6 +1373,11 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
 		return (rc);
 	}
 
+	if (!bmp->db_agwidth) {
+		jfs_error(bmp->db_ipbmap->i_sb, "width in dmapctl of the AG is zero\n");
+		return -EIO;
+	}
+
 	/* the buffer for the dmap control page that fully describes the
 	 * allocation group.
 	 */
-- 
2.47.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
