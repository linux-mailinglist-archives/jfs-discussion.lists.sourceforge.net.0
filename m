Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2B295DA61
	for <lists+jfs-discussion@lfdr.de>; Sat, 24 Aug 2024 03:32:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1shfdQ-0006lB-2S;
	Sat, 24 Aug 2024 01:32:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1shfdM-0006kj-KG
 for jfs-discussion@lists.sourceforge.net;
 Sat, 24 Aug 2024 01:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TIPYW9qmUIPgznmK90J1yU9u2VOYbreOfofhUKZddDs=; b=FNZ2Z8Z+xbvr/ukobfiNR/bCMS
 4qnih8+hoDnqJ9X8VmiKSzfRSScRe9DX5CYNAIiBtqNSNVlJIoXmFoaVAVowzK4em30gbJS5XhiwW
 YxUVHXrEjMMKwHeVDnmduPFoYtMFWQduvEdSVqZ62AoB/dw26qmAfY89aYEcXQoaLoGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TIPYW9qmUIPgznmK90J1yU9u2VOYbreOfofhUKZddDs=; b=eqAWrXhE2b/O8ufTwsKB130qEH
 PNLK6Ey4277uMPhVaExLKT8FbnsS0QyEuZEGAjWGWs+NzGBgNI25lZ2Is+s1PbCdhMPvsvTGVX9L1
 1JzOgE9kCkTI/uEzLhj7xktmx4W0q5au15ZgkZpilFF18k2IKz68SdJ8KKHxtZsGBWDo=;
Received: from out203-205-221-231.mail.qq.com ([203.205.221.231])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1shfdL-0005W1-7d for jfs-discussion@lists.sourceforge.net;
 Sat, 24 Aug 2024 01:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1724463104; bh=TIPYW9qmUIPgznmK90J1yU9u2VOYbreOfofhUKZddDs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=BqUr0MORZ6dz+YNV6wr8TP5wcIcCwUPOE+Z/GXiQyncIAMsGpuRyor74/NYnNWFCA
 lgDdS8o0yBFPfgy+i+8pg0KpmjWiBJFfnPUQf26qoEe/CtDLu/8R6phshjpnPLkkYg
 Jb4JXq+ocfMTyffGyb/+hNZy3IUYtn4V2HU3zXU0=
Received: from pek-lxu-l1.wrs.com ([111.198.225.4])
 by newxmesmtplogicsvrsza29-0.qq.com (NewEsmtp) with SMTP
 id 65619CF3; Sat, 24 Aug 2024 09:25:22 +0800
X-QQ-mid: xmsmtpt1724462722thau1kgja
Message-ID: <tencent_21361896E437004A0E753576A367A03C1F09@qq.com>
X-QQ-XMAILINFO: Mrv6PNPZjcp6CHs+D1s83S2Yll23Z262UQqmINKV1rboOfkdKLh35h8yUNOCIC
 LwFiSOlEwDAZkKpdvOmLDEnKdz3qLDADKEKPO94krRnaQbOzQoJwLdy2Ey6ueSDe9cTm+nB8zwU5
 fu2Y5ivVgxTjvuP7w1mx5ZxZpCkjHX0pj5JO0lt+h+0CPh6OIUVZUgeOepziqGG9M/8uunVsc+OP
 80bfG/fW7YViMP3xPDnBvHhYyP3Q/CNLCXfiwHDwf2EeZIr3OVP18MzOeh3dgd94Fxn5yu/7a/K1
 N7jvOc09FYJCIg4NANl4F8v7yS3VkSEynUy8Bm3EqjnHlAhjKEAdHZQ7sTJGgV6QBCJ4ORjNVfzC
 U7c7t6EiDcuWkLCn51A48loPrNn/gW4kaaGmMqhV7saZdb53RJbP5oKTtWwRvlm9+9b3JOvM4S0p
 abSk43Ongd3Y4ba8n3OKtgU1P12F4Dt84e6CQsGlPOCspGvB1a2r4z/HkxF7cEY9Eq3H4Y8ETJW2
 bAP5FgtcojB3f9+RjmRnKAoSxvtD1hU3TZfh/MxdGO70g3Bv86Dl09FhtSJbVrwYY+k6WlvD02U1
 O39Dbw+0GmysLGqTzvX9QhbMqp5UxWDV7mCvPwXCycVqfYk/drejsaKduwLX4W0jws4/tlJ4ZeFu
 m0ykGOu6ooQyRSt4r89tLLJR0S3pBQLc2uTMr84XblU1LLRMgd3I7TprtZTRkpUDmCnqPPzL/WXB
 uZ+RS0JLAO8sSH5vwxMyxGOzLNzwWGvgGo6DkZ7y9EVJu+cnk/nq1SsT/LtyibsmYo6Gd90dtAIF
 hbpFQrYPieYvQCEsF5T4dmTg6t7nvWvEe5+7AJtD5xICst4ZD3c9CoA83uMo5eoPsTX7Iv2GyZ6m
 Cie1uT0M62c/dhoxNh8c7n6gpneXTWNKnhulzGS/+vUrKhA9l210sNb2Z6Glg3jZ9ObOyNm9XKDO
 5evqVLpjlLLYNspskmPcAMojvxeNEg
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
To: dave.kleikamp@oracle.com
Date: Sat, 24 Aug 2024 09:25:23 +0800
X-OQ-MSGID: <20240824012522.1186031-2-eadavis@qq.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <386ef374-25f2-4a10-bd15-0913137f1c9f@oracle.com>
References: <386ef374-25f2-4a10-bd15-0913137f1c9f@oracle.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot report a out of bounds in dbSplit,
 it because dmt_leafidx
 greater than num leaves per dmap tree, add a checking for dmt_leafidx in
 dbFindLeaf. Reported-and-tested-by:
 https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
 Signed-off-by: Edward Adam Davis --- V2 -> V3: Exclude control page 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.231 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.231 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [203.205.221.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [203.205.221.231 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1shfdL-0005W1-7d
Subject: [Jfs-discussion] [PATCH V3] jfs: check if leafidx greater than num
 leaves per dmap tree
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
Cc: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 eadavis@qq.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot report a out of bounds in dbSplit, it because dmt_leafidx greater
than num leaves per dmap tree, add a checking for dmt_leafidx in dbFindLeaf.

Reported-and-tested-by: syzbot+dca05492eff41f604890@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=dca05492eff41f604890
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
V2 -> V3: Exclude control page

 fs/jfs/jfs_dmap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cb3cda1390ad..516bac758053 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2976,6 +2976,8 @@ static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
 		 */
 		assert(n < 4);
 	}
+	if (!is_ctl && le32_to_cpu(tp->dmt_leafidx) >= LPERDMAP)
+		return -ENOSPC;
 
 	/* set the return to the leftmost leaf describing sufficient
 	 * free space.
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
