Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E2493DCF9
	for <lists+jfs-discussion@lfdr.de>; Sat, 27 Jul 2024 03:43:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sXWSW-0004DG-CZ;
	Sat, 27 Jul 2024 01:42:56 +0000
Received: from [172.30.29.67] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1sXWSS-0004Cn-I8
 for jfs-discussion@lists.sourceforge.net;
 Sat, 27 Jul 2024 01:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7SLdZ01xonqza949W0eAf//l/jirighpLzT6wAxM/GM=; b=ir+ga0PkwA/0iPS2Q1sJFEu0WD
 pv2fwhowrDFIuYb6/ZbvW6jevAPmjzOLPH26B6anmLtpPEuABhTx9Jn3/fC+/X3iJsyvgxt8jbmOy
 wGhxO6KRjWrfI7jQGgxGgKmDERb3mU/c2Jz4ZFexBtq7xv/qDcNs81z1zo5mw2PqUs7M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7SLdZ01xonqza949W0eAf//l/jirighpLzT6wAxM/GM=; b=D7a96j9nmmTX5kGAQ32N67tQPK
 9Ha63cht0F72jnqTuPeBRoek6deGV/sm8rWAaqhmSU2t0ekDLpt7xDqziPNMeVYUv7tAWyNkWld52
 UynzAw11i6+f93Vi0DCQRVYmgu1mx0nbM8tb+m4WxebRc8PWuJmaZDIFZpj2k4UZlquU=;
Received: from out203-205-221-190.mail.qq.com ([203.205.221.190])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sXWSQ-0004GY-PH for jfs-discussion@lists.sourceforge.net;
 Sat, 27 Jul 2024 01:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1722044557; bh=7SLdZ01xonqza949W0eAf//l/jirighpLzT6wAxM/GM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PUezpOTHjNIeLEhfKYPkf3af2W6CTyh3zs46ORaSSL1kzuC/JpndFaCYk9Hf1wVTx
 a1MR8SkrtZZRBej1/bA/alnNnU8J3Ztk4km8cOwqiwWwB8sHyfyHxgOc9DNH8yWUUt
 OdTz2bDKY9o7wbxoO2cW07aLHpzrQiQ4f8MUeCm8=
Received: from pek-lxu-l1.wrs.com ([111.198.228.103])
 by newxmesmtplogicsvrszb16-1.qq.com (NewEsmtp) with SMTP
 id A9D1C086; Sat, 27 Jul 2024 09:42:29 +0800
X-QQ-mid: xmsmtpt1722044549tyo4sxqvf
Message-ID: <tencent_5D0479366FE42D1D6DD09554EA66ED9ACC0A@qq.com>
X-QQ-XMAILINFO: NvKyM24IHTKSRwfinymltxKRndFXX3PzaRQbjdfp32yz1UVYoZ2EQxQRajW98W
 jNUfOUTZDE6Ydl47YwOjj5v2rYcTWmKNreLfvVbhdshJzR2JaazXQ9JXpSr6hracBgra6KxosLqu
 Cq7Sd5xAyCFc645Q6audB8EAOahAxW9USUs4IpzCYTHSD2poO9qk34Dl2kuBZ4Wvo6eBY71jPgy4
 UqsHbOs6J9gXB4xhkcqXK1vzIpfgrBDBidr5QB+2/p2VRnvqQUFheMRoxqHX7jXFaxox0LzfH6XH
 b3U2ZL5+5UNuyfyKCz+9gtCOPozxuzocrNAOpx/kiAphrR8FgfJkccYHp8je14Tl3+sdifjQZKqm
 hHHGya8196IHylfB/JEKsxNBAyX3aaAofo0NVvnO57xLuBSkrSUrLUqUQYTag7ORkbtk96ER+1UO
 NHUJPkmW983ldWNVrZhiyobOF0xOeMp7VCFN6R5nAOYUXC7HVvvkFdJc7oo2/Gip67D43c/nRK/B
 POoOawepPTOHdrAMTGqw5yIclZPSCVtgg0gwtsa3t82ln/jOFz3HJgJMEoEZZO6yBlhVujxNQWxE
 GhWiQkShe4IMHp+8T4FDRWGFqt3JGHqfSp0b20AJyD3PynhMSzNmXmgngZEqleKeZV3whjE4Dp6t
 2WK6HjXcEmJS250Ut/1gChGXo1gPRrUFSyrRS33i26ixo025I+5obi+eeMCODn6+jWB8CztyEfnt
 6DV5eJsJCm8u4b+Ya4B6PiT7duPStNAUb2A74dmMxGjb18JxiMBXJouscs3gy/tb764zIOI98L3C
 hZZaBnd/I5IHyB+fr8WSUWXYF1Ak5pCAhuGRSLxwnusS8OWa5NEbB3WPdeTK4v5tao1Ig1ypyyvw
 aYgPiEinCKhLRkWKvc/sTe6dgTP9iqGKrSTsI3IZ9AiVpWC/hyxmaJzRl5pEsOYc8S9PU8IsLcs8
 czjMKtya6ECxEYZf9Ncw==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
To: dave.kleikamp@oracle.com
Date: Sat, 27 Jul 2024 09:42:30 +0800
X-OQ-MSGID: <20240727014229.2464364-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <c8b1c258-740a-412f-ae0b-4d68a53e698f@oracle.com>
References: <c8b1c258-740a-412f-ae0b-4d68a53e698f@oracle.com>
MIME-Version: 1.0
X-Spam-Score: -1.6 (-)
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
 Signed-off-by: Edward Adam Davis --- fs/jfs/jfs_dmap.c | 2 ++ 1 file changed, 
 2 insertions(+) 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.205.221.190 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.190 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.190 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.205.221.190 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1sXWSQ-0004GY-PH
Subject: [Jfs-discussion] [PATCH V2] jfs: check if leafidx greater than num
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
+	if (le32_to_cpu(tp->dmt_leafidx) >= LPERDMAP)
+		return -ENOSPC;
 
 	/* set the return to the leftmost leaf describing sufficient
 	 * free space.
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
