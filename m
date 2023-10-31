Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A6A7DD158
	for <lists+jfs-discussion@lfdr.de>; Tue, 31 Oct 2023 17:16:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qxrPW-0006U1-CH;
	Tue, 31 Oct 2023 16:16:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1qxhTL-0003iW-3F
 for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Oct 2023 05:39:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YOE1CEYLTV+5Z4E3X8qtxb3jDwIjdoXcB64mVSFktCE=; b=muFuJlS9xdgjQR5G1/CN0Jey7G
 T1/4G/ceNWUrkb6aTLlS1fEwyPmR/djl1dN3yXD+Mb7Lw+Tj5Y1OJqW8ebKhExfkId/Fu/h5Ii0f/
 uw3tH1TMX61WmrQFS21oxseG3p+Ap+vn42n2gg8yON5zyQ9h7wlFPtC1ynECOwOGj7B8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YOE1CEYLTV+5Z4E3X8qtxb3jDwIjdoXcB64mVSFktCE=; b=VGMekIbnAIduQUX5KWkH71crDs
 6hFkuFFpTpMaiWLdvD2btlvT4pgaK3JwuJMC/dubmOxyVH+2m5wo3cGsCX1OZ1mhd5x67yVv4ngeH
 Fa7WwHl9XPqcLtZgt9XAyf8BS3dtkQKH1Ft4DgLhf4/r/MiE/A7ncmpZV4WGPZHXiMb4=;
Received: from out162-62-57-252.mail.qq.com ([162.62.57.252])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qxhTF-0006il-1t for jfs-discussion@lists.sourceforge.net;
 Tue, 31 Oct 2023 05:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1698730745; bh=YOE1CEYLTV+5Z4E3X8qtxb3jDwIjdoXcB64mVSFktCE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GbMjaMYTniRqwzKvGUbmA2AYTIaRsSYCha5ozfzAV8J8PEsc4IYstVmzcB/38pHP8
 FMrtDbQ7hmq1d+sTYIzi/jKSWIF7B6Gr+a4Shiyt0py/iO8gDjzv4/R73RV9L2OPtT
 P11eVeChi6+u/6oyLN68zXgjgIoFTGdhf8pJIP5I=
Received: from pek-lxu-l1.wrs.com ([111.198.228.56])
 by newxmesmtplogicsvrsza7-0.qq.com (NewEsmtp) with SMTP
 id 9C395891; Tue, 31 Oct 2023 13:39:03 +0800
X-QQ-mid: xmsmtpt1698730743td4nu5bjp
Message-ID: <tencent_69E996EDCACDBC79A66CB02F956C3494D80A@qq.com>
X-QQ-XMAILINFO: NY/MPejODIJVwMZyVr9V3VNsFdifSYsIfhL8+4p9Ht9L6383Lo7Lsd1/Pz3IzP
 ewGSGuo8GuivlwgoWuq6fs2zWuRXn4bpE32t1o84dRRsQ1KAjUVkXryZP7CeUrw9dO9H7GDP7wdq
 f1IvWkxYUO3UzQQoej9CKtb0ltBqnSdiQRSFvo+iYJLh17USV201VVkm857QFrqg6j2PFOIw3ZpH
 AMDaiTwIWuJnuslWfgXMcfcWtS+hB0g0W3IjHE3AYyS+d3zLdvp08kR6ZJ8sAYAV8MXZq3CEIQ2d
 t2oJ2IVgnI6C2A8UCL3r6JMhOzbjSL/FLIbFaALKWUj2vm1aZx4+ksg1LPDGepjPDwYtcT9glVTT
 UVdzgDLQe2RT1LH9yHAdxsoZrzLHQ2aWjHFZFJuN311uIecC+GnGRp2vAmPvwUE/tOa6JGWE5jqt
 AW8/0AQbRL3moUurK668oqWc02E/IC8RCJhuBgBHEEB3dNIGakxo+cUYorpo5JxfHGPzcYay0lZC
 lxCIGBsWi81T/7xLC/AZB39G8giG0i69qjKBtNCO4Ng5nGfojRjc2h9O+vrZZGLDRAQEGCgKgyZ0
 6PI60iDPEk6Qn5aTspK2McsdimqtEEBb9li9CeQHJTUdGbTg8GLiTGSNkAV3pxCDAFviurmydfYp
 pW8KcGa7tnMXmukrfpY7dKoX2NBrPdRYxB/yNtURGtxjPQG4wSBReZzHmj1MlVKHGD2qLIGNHiV+
 fJJGZjGlnEZ2DdEhZw3hw3LCEBTfmeBFfJxfF4I/eJpvHS4FvbdzRvkKJqJukIVGGnBQnVeGbDdO
 oNW/c2W8PFsdEXtro4KQdTz3FAyxkHzM4L8MXgo7InnjKxrZCms3G9vdxR1u1SwZtSmLc4i8Gq04
 fCTCdixvPJRwBTXWcJTaBD0GQq7YV1Y2OBIz1z6GNoXwzvJAlkFP9XEZ8/Di8m8w==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
To: syzbot+01cf2dbcbe2022454388@syzkaller.appspotmail.com
Date: Tue, 31 Oct 2023 13:39:04 +0800
X-OQ-MSGID: <20231031053903.2661789-2-eadavis@qq.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <0000000000007b8bed0608abc6c2@google.com>
References: <0000000000007b8bed0608abc6c2@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When the execution of diMount(ipimap) fails,
 the object ipimap
 that has been released may be accessed in diFreeSpecial(). Asynchronous ipimap
 release occurs when rcu_core() calls jfs_free_node(). Therefore,
 when diMount(ipimap)
 fails, sbi->ipimap should not be initialized as ipimap. 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.57.252 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [162.62.57.252 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1qxhTF-0006il-1t
X-Mailman-Approved-At: Tue, 31 Oct 2023 16:16:08 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix uaf in jfs_evict_inode
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
Cc: linux-fsdevel@vger.kernel.org, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When the execution of diMount(ipimap) fails, the object ipimap that has been
released may be accessed in diFreeSpecial(). Asynchronous ipimap release occurs
when rcu_core() calls jfs_free_node().

Therefore, when diMount(ipimap) fails, sbi->ipimap should not be initialized as
ipimap.

Reported-and-tested-by: syzbot+01cf2dbcbe2022454388@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_mount.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 415eb65a36ff..9b5c6a20b30c 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -172,15 +172,15 @@ int jfs_mount(struct super_block *sb)
 	}
 	jfs_info("jfs_mount: ipimap:0x%p", ipimap);
 
-	/* map further access of per fileset inodes by the fileset inode */
-	sbi->ipimap = ipimap;
-
 	/* initialize fileset inode allocation map */
 	if ((rc = diMount(ipimap))) {
 		jfs_err("jfs_mount: diMount failed w/rc = %d", rc);
 		goto err_ipimap;
 	}
 
+	/* map further access of per fileset inodes by the fileset inode */
+	sbi->ipimap = ipimap;
+
 	return rc;
 
 	/*
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
