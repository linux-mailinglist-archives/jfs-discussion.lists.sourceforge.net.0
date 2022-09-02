Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF465AB2FA
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Sep 2022 16:06:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oU7JA-0006i7-1H;
	Fri, 02 Sep 2022 14:06:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <13667453960@163.com>) id 1oU2RX-0001hX-LR
 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Sep 2022 08:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pqcppUH4uIpCV/sY/RwJOUDwY1HHs3lcJjMzAP+wqjY=; b=Drnm555O3bKakGqA3d6GE/LvlC
 slnX6OGM5P0d8gBm8N+bqrB0DgZTwtR8MOhHIvV9LDKoDM92scESXAM346qgwkTDSMaK+yznnpb1z
 yaADn7sDin0bNGpQkYdpL81Hn8/RvhmIH856K4dbXWQKR2tRF2SFcm5hg9hPkgrh5cP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=pqcppUH4uIpCV/sY/RwJOUDwY1HHs3lcJjMzAP+wqjY=; b=M
 Cw3E6gwTpe+bZ9Fd+KVd8M8vL5bXsEeEdo7C2alDIGfylCakOdFq1uM2ahY3KDDeFiEI83BV3q7Vz
 Gd13LvuArATs0qgimbrRqjJRqlJM1OAY2KVvyueROVUeJc9L60DiqLNWrl8DpTbmsrw1VeH5oQW3h
 BlUIOhEczK8TD9gs=;
Received: from mail-m973.mail.163.com ([123.126.97.3])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1oU2RW-00B8la-GZ for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Sep 2022 08:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=pqcpp
 UH4uIpCV/sY/RwJOUDwY1HHs3lcJjMzAP+wqjY=; b=Sb5eGe4yQOzoyFyHtn0ta
 bwvb5vvF9JtxodVZ1pPfF5bGapXqhGzw5RwnpIUbaGHhnKXKaUusQEEg+cSBaD1c
 YyfKjcFhaaV2GlxlhMq9K44hSCYeWyF+hwed6iIKgHMrMJ/JdTSuMMZpD8yvOKGZ
 8S83T1oc5C14hP+deuQPzA=
Received: from localhost.localdomain (unknown [116.128.244.169])
 by smtp3 (Coremail) with SMTP id G9xpCgBXAYOpxBFjm625aA--.7112S2;
 Fri, 02 Sep 2022 16:54:05 +0800 (CST)
From: Jiangshan Yi <13667453960@163.com>
To: shaggy@kernel.org
Date: Fri,  2 Sep 2022 16:53:38 +0800
Message-Id: <20220902085338.2536017-1-13667453960@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: G9xpCgBXAYOpxBFjm625aA--.7112S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrury7Jr47ZFy5GF17Xw1kXwb_yoW3ArcE9a
 1IvF4v93yUtF4Fvr1UZFZakFyY9r4UKrWDtr4UAFsYyw1Uta9xJa95JrWIkrnxGr4qgFsY
 gwn3Gry3W34qgjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1GNtDUUUUU==
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: bprtllyxuvjmiwq6il2tof0z/1tbizRxw+1c7N-N5ygABsA
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jiangshan Yi Fix spelling typo in comment. Reported-by:
 k2ci Signed-off-by: Jiangshan Yi --- fs/jfs/jfs_xattr.h | 2 +- 1 file changed, 
 1 insertion(+), 1 deletion(-) 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 FROM_LOCAL_DIGITS      From: localpart has long digit sequence
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [13667453960[at]163.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.97.3 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [13667453960[at]163.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1oU2RW-00B8la-GZ
X-Mailman-Approved-At: Fri, 02 Sep 2022 14:06:02 +0000
Subject: [Jfs-discussion] [PATCH] fs/jfs/jfs_xattr.h: Fix spelling typo in
 comment
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 viro@zeniv.linux.org.uk, akpm@linux-foundation.org,
 k2ci <kernel-bot@kylinos.cn>, Jiangshan Yi <yijiangshan@kylinos.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Jiangshan Yi <yijiangshan@kylinos.cn>

Fix spelling typo in comment.

Reported-by: k2ci <kernel-bot@kylinos.cn>
Signed-off-by: Jiangshan Yi <yijiangshan@kylinos.cn>
---
 fs/jfs/jfs_xattr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_xattr.h b/fs/jfs/jfs_xattr.h
index c50167a7bc50..0d33816d251d 100644
--- a/fs/jfs/jfs_xattr.h
+++ b/fs/jfs/jfs_xattr.h
@@ -25,7 +25,7 @@ struct jfs_ea_list {
 	struct jfs_ea ea[];	/* Variable length list */
 };
 
-/* Macros for defining maxiumum number of bytes supported for EAs */
+/* Macros for defining maximum number of bytes supported for EAs */
 #define MAXEASIZE	65535
 #define MAXEALISTSIZE	MAXEASIZE
 
-- 
2.25.1


No virus found
		Checked by Hillstone Network AntiVirus



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
