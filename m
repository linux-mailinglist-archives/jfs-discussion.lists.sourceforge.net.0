Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F02499DD62
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Oct 2024 07:08:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t0ZnE-0005ta-Lg;
	Tue, 15 Oct 2024 05:08:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1t0ZnE-0005tR-1j
 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Oct 2024 05:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YHRkU0CiN5ncRK2HdxA/z4C8I36aZYKlBbJ6eiOEQKU=; b=mGyqJIwy+AKbNTMilZ4DMzVTCX
 IzozupFdnFyx0zIW0PIaIGHeqAeARE1fhPZVlGjfNqCw16SY5KgREYRlcSgp6Gs1IyxzJKKvmoO2g
 Q2JD1yPmYvx5LTh7w4sATNCcH6X71dmya8Ib+mswSRYuNPQfJdN29PFjVoJupBBvibQU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YHRkU0CiN5ncRK2HdxA/z4C8I36aZYKlBbJ6eiOEQKU=; b=VdvJ+rjscgMfmo+RkzBBswvpS7
 ay4nJ+DWhEt8p7tj/8RcBMsDSpkB88bDFXgyJhezssNLFdyUg9SzojKVrjF3CyoeJk3R+HJO7tyfI
 u7MrzJbP83tDajqVJT+6iuxj4BqPhLNP4BSp9BfPY1ySbTTlHV/yTp4v7wALHv2zMci0=;
Received: from out203-205-221-155.mail.qq.com ([203.205.221.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t0ZnC-0001s9-2c for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Oct 2024 05:08:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1728968595; bh=YHRkU0CiN5ncRK2HdxA/z4C8I36aZYKlBbJ6eiOEQKU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CL0wwfbXI3yKyzswlZttUdSWM+2C8tBQktU794u1suNs5Qc3VU/Uvvim10R5JYnSL
 bEE3aJatjmn9k0ENLSsDVHavYuiv2o/JflfvZAHvJInlarFQuBg1mcIqV1LDkC3jfk
 cp51h2fqk9d3YxTdna6BBT/Km1geDRh/h5TisHxc=
Received: from pek-lxu-l1.wrs.com ([111.198.224.50])
 by newxmesmtplogicsvrszc16-0.qq.com (NewEsmtp) with SMTP
 id C8518C73; Tue, 15 Oct 2024 12:50:05 +0800
X-QQ-mid: xmsmtpt1728967805tzhy9bh7f
Message-ID: <tencent_7C86DFB364837BA979A3B0A44CF768577205@qq.com>
X-QQ-XMAILINFO: OKkKo7I1HxIew+Fm4chwnmYQ763zfiiYi98bnmAItmG6QXG0FygBfZpgHxuZUr
 UQKy/IGB3wkihFzF0abOdwTctwgf2hpOK/N8solYpTQRMWufteIpwa465+7jNu+Grww4zfc4jcmZ
 QwYU48fEo6TPh2S4xDtLp1P5suqcxODXqQjp/30ATgpBWW5BEUy80r3k/3S+2tbHcTAQIapD+Nbo
 kzUVd1q6dSqZqYh3Zjgha7JjJnj9Fl8PYRvOOlBVpW6eDlMjL7ZZRs42bBmJjb7edILhHQnj0CYh
 xo/hjWpVLlRz8UTehamEid9fIUXDACBz9KkWagRK1HhkPzgYe5I52tfCYsfedRkVacXdq7OdKR4L
 R3vlp0uV6oYq/owh0raJ+LGn7hXcrDYwVOcQ+p1Qy01CDG9ApBeIOTXfOFmptE/lUIcp9zRjgLB3
 z6hGF2HOaVFKkmHd7oae/TZQJAenMZbh5pn/qWMlCi0tceLYHzcl1sRrHiTT/4zsAISK7jl8iOjH
 qknuX1v1ALWWkOGAS59KvWqpckIEW2SoHN9uGcQqm6g18ISh6dM11kJACT7SYyp5tIsNfHCmUdQU
 oTzaAm3y66JZYK+EpnTdRtln5IRvlWeJWtGHSr8OxGznm6nu9avNEWppHrP6J6p4KMUsHjsE/rKO
 J1EEibNBkVs62rzJP5ntQ5FkhEsJgZwHVu8PLsfmAnbK2FP0+SnvxhCB9AWTY9S8hOiaWlQOijS1
 L4y/tErBFSlbEojcxNQGg4+Dfv2OYZ4+34ltWHKhn6UlpoGbBYcyyjFI/p4tV0L6344lOO4Lans0
 CvEwCYfsKCDmAIStnfifZQWU6Q3nUJaFPz2uTzi+Rj+wsG+9oT/akUv+eGTnq9Qz1/JccU8Wi6dr
 20G8kdBzzpV3+nbePqacO2giXvTo86GufUCSXMJ8OPoaGNp0xBSyp5Sqd850Nz7xDcCCEnrF2h
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
To: guohui.study@gmail.com
Date: Tue, 15 Oct 2024 12:50:05 +0800
X-OQ-MSGID: <20241015045004.3908269-2-eadavis@qq.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <CAHOo4gKf2mjPX8oAxCBUc74=+OToMdu6pe6iALGCOmXjToFaKw@mail.gmail.com>
References: <CAHOo4gKf2mjPX8oAxCBUc74=+OToMdu6pe6iALGCOmXjToFaKw@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: There is a race condition when accessing ipimap and ipbmap.
 CPU1 CPU2 ==== ==== jfs_umount sbi->ipimap = NULL; lmLogSync sbi->ipbmap
 = NULL; write_special_inodes lmLogClose writer(sbi->ipbmap->i_mapping);
 writer(sbi->ipimap->i_mapping); 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.155 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.205.221.155 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1t0ZnC-0001s9-2c
Subject: [Jfs-discussion] [PATCH] jfs: Fix null-ptr-deref in
 write_special_inodes
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
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 willy@infradead.org, linux-kernel@vger.kernel.org, lizhi.xu@windriver.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

There is a race condition when accessing ipimap and ipbmap.

        CPU1                              CPU2
	====                              ====
	jfs_umount
	sbi->ipimap = NULL;               lmLogSync
	sbi->ipbmap = NULL;               write_special_inodes
	lmLogClose			  writer(sbi->ipbmap->i_mapping);
					  writer(sbi->ipimap->i_mapping);

The jfs umount and lmLogSync compete to access ipimap and ipbmap, resulting in
null pointer access to ipimap and ipbmap when executing write_special_inodes.

We can fix it by first closing the log in jfs umount, and then releasing
ipimap/ipbmap.

Reported-by: Hui Guo<guohui.study@gmail.com>
Link: https://lore.kernel.org/all/CAHOo4gKf2mjPX8oAxCBUc74=+OToMdu6pe6iALGCOmXjToFaKw@mail.gmail.com/
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_umount.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/fs/jfs/jfs_umount.c b/fs/jfs/jfs_umount.c
index 8ec43f53f686..c5fda516ca85 100644
--- a/fs/jfs/jfs_umount.c
+++ b/fs/jfs/jfs_umount.c
@@ -42,7 +42,7 @@ int jfs_umount(struct super_block *sb)
 	struct inode *ipaimap = sbi->ipaimap;
 	struct inode *ipaimap2 = sbi->ipaimap2;
 	struct jfs_log *log;
-	int rc = 0;
+	int rc = 0, sb_update = 0;
 
 	jfs_info("UnMount JFS: sb:0x%p", sb);
 
@@ -51,11 +51,19 @@ int jfs_umount(struct super_block *sb)
 	 *
 	 * if mounted read-write and log based recovery was enabled
 	 */
-	if ((log = sbi->log))
+	if ((log = sbi->log)) {
 		/*
 		 * Wait for outstanding transactions to be written to log:
 		 */
 		jfs_flush_journal(log, 2);
+		/*
+		 * close log:
+		 *
+		 * remove file system from log active file system list.
+		 */
+		rc = lmLogClose(sb);
+		sb_update = 1;
+	}
 
 	/*
 	 * close fileset inode allocation map (aka fileset inode)
@@ -103,15 +111,8 @@ int jfs_umount(struct super_block *sb)
 	 * consistent state) and log superblock active file system
 	 * list (to signify skip logredo()).
 	 */
-	if (log) {		/* log = NULL if read-only mount */
+	if (sb_update) {		/* log = NULL if read-only mount */
 		updateSuper(sb, FM_CLEAN);
-
-		/*
-		 * close log:
-		 *
-		 * remove file system from log active file system list.
-		 */
-		rc = lmLogClose(sb);
 	}
 	jfs_info("UnMount JFS Complete: rc = %d", rc);
 	return rc;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
