Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C53344E4230
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Mar 2022 15:45:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nWfkx-00082I-12; Tue, 22 Mar 2022 14:45:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcs.kernel@gmail.com>) id 1nWf3c-00037f-N0
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Mar 2022 14:00:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7mRloYYQEHSNsfwNKGdwDSV1/XRbKA5NoBlLRl7xWsw=; b=PYf1JkX3B961pMuIb+2ZW69iRk
 Fhnegl0jma0kR/NQ7rpjtdyaS+dZZJKOv0PIjOwCDP1EMS6Itj7TTYJZ5nSM3ButkL2bAtAS+HbBt
 vRYEbETDtPZzNUeWbFhVFAi7HxcqlwHBV5t3WE+2RaMpvHDxmKc8qhLlXRO8ZJHVT7kc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=7mRloYYQEHSNsfwNKGdwDSV1/XRbKA5NoBlLRl7xWsw=; b=S
 fnQmNsUV3gYEYYlEmVhX2octvaiMOGeRB4lxhqklBNsLRIXZzjKlW6IUKbLgE5xbWj/amotf5nL6c
 czUI7Qq6hIxlOewvZVyF3KZ8QpEeicKxOaJlLrBpsmnirMK3UAIRMqeNXua/Qm4vX1JvxTb8h/D7L
 dNL6xoUVrdf6Ybcs=;
Received: from mail-pj1-f41.google.com ([209.85.216.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nWf3R-0006nh-PJ
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Mar 2022 14:00:19 +0000
Received: by mail-pj1-f41.google.com with SMTP id
 mp6-20020a17090b190600b001c6841b8a52so2803537pjb.5
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 22 Mar 2022 07:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7mRloYYQEHSNsfwNKGdwDSV1/XRbKA5NoBlLRl7xWsw=;
 b=W2un05zJnmz/965QibZnpRrN4OQKb/psoBhuo07+/kMSny9Uw3Xyw6NAWZGkiDoQWt
 pUfFnuMROy7kQxLr07v5UzRIGtn+7tzZEKFXwKiGYVRsLRDU76uXR9cLROvZgfqmrgAu
 UxFFeiMRgpd8asjrWHpFNF+i8KCKCpwsxYasHfM7YIOl9U/XUWw+PAfbW6J89Q7tStzK
 60J42Z5m17gNDXMYJMFFoQTKiH4p4eyp1n+YbI10CZPUOPQ7vYDJL7Q9PA1VPeIywDrf
 w3bu5SRi1VhiaydAW/Zie8UJe/JfRIgZCfLvGB8YK277b9hRj5EBxb6ODjGrlYhfmT29
 4u5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7mRloYYQEHSNsfwNKGdwDSV1/XRbKA5NoBlLRl7xWsw=;
 b=aJBMm04jrBzgdt7h1hoj39sKrt0cpePwgskFwBQgUXliNV1FC0oCHWOwI/3Jvd4H/w
 +q0OryBOiGC4VWBcTgfgP4tKgd5kiw5bhji7SNB44of42Qq3KXVJWA93vm1C/jkd0F1e
 x7nnLJq/grRue+3A2PzIBBbt1Harbv2Evqr3ySfNqFzo9cB2wcqj0gOv7uCakoy/S5Dw
 rVXo03cveqj0PgKiTHwt+LmOi4Rd4A2xwKrA6tzKeASTQg4SrDFR1ulbOeVz3ladiFga
 NJ7UPRkPKa80D9plLZcLRP/U9fLI3AxtfeLWRKkFmWqduS3W3+US2lIuSNvWD2Tun5QW
 dPLw==
X-Gm-Message-State: AOAM5313U1tG/YiPwZkMBHP9sa69QSKaO2ZJTtGL9LJxaeLvCIuNUB1O
 a+YMSJXrL2/qGiTKQ/5Y0+a0iiXcGBs8LQ==
X-Google-Smtp-Source: ABdhPJxzc5UpVZVqvd5TPs4YHzFWrnBU6B8papj34vFh6LvZqaz6z20JuohH9420gpkzYBRND/Xp5g==
X-Received: by 2002:a17:902:6b4a:b0:14d:474f:4904 with SMTP id
 g10-20020a1709026b4a00b0014d474f4904mr18545321plt.122.1647957597199; 
 Tue, 22 Mar 2022 06:59:57 -0700 (PDT)
Received: from ELIJAHBAI-MB0.tencent.com ([203.205.141.114])
 by smtp.gmail.com with ESMTPSA id
 g4-20020a633744000000b00381efba48b0sm17158645pgn.44.2022.03.22.06.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Mar 2022 06:59:56 -0700 (PDT)
From: Haimin Zhang <tcs.kernel@gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>,
	jfs-discussion@lists.sourceforge.net
Date: Tue, 22 Mar 2022 21:59:17 +0800
Message-Id: <20220322135917.81802-1-tcs.kernel@gmail.com>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Haimin Zhang Add validation check for
 JFS_IP(ipimap)->i_imap
 to prevent a NULL deref in diFree since diFree uses it without do any
 validations.
 When function jfs_mount calls diMount to initialize fileset inode all [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.41 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcs.kernel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nWf3R-0006nh-PJ
X-Mailman-Approved-At: Tue, 22 Mar 2022 14:45:03 +0000
Subject: [Jfs-discussion] [PATCH] jfs: prevent NULL deref in diFree
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
Cc: TCS Robot <tcs_robot@tencent.com>, Haimin Zhang <tcs_kernel@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Haimin Zhang <tcs_kernel@tencent.com>

Add validation check for JFS_IP(ipimap)->i_imap to prevent a NULL deref
in diFree since diFree uses it without do any validations.
When function jfs_mount calls diMount to initialize fileset inode
allocation map, it can fail and JFS_IP(ipimap)->i_imap hasn't be
initialized. Then it calls diFreeSpecial to close fileset inode allocation
map inode and it will flow into jfs_evict_inode. Function jfs_evict_inode
just validates JFS_SBI(inode->i_sb)->ipimap, then calls diFree. diFree use
JFS_IP(ipimap)->i_imap directly, then it will cause a NULL deref.

Reported-by: TCS Robot <tcs_robot@tencent.com>
Signed-off-by: Haimin Zhang <tcs_kernel@tencent.com>
---
The following is the crash information:

BUG: kernel NULL pointer dereference, address: 0000000000000004
#PF: supervisor read access in kernel mode
#PF: error_code(0x0000) - not-present page
PGD 162c13067 P4D 162c13067 PUD 15f0f4067 PMD 0 
Oops: 0000 [#1] PREEMPT SMP
CPU: 0 PID: 6659 Comm: syz-executor348 Not tainted 5.17.0-rc4+ #5
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org 04/01/2014
RIP: 0010:diFree+0x1d1/0x4330 build/../fs/jfs/jfs_imap.c:871
Code: 74 24 18 49 c1 ee 0c 4c 8b 64 24 78 49 c1 ec 0c 4c 89 7c 24 50 49 8d 5f 04 4c 89 ac 24 98 00 00 00 4d 85 ed 0f 85 f7 05 00 00 <8b> 03 89 44 24 10 48 89 9c 24 88 00 00 00 48 89 df e8 89 2e 43 fe
RSP: 0018:ffff88815f3db330 EFLAGS: 00010246
RAX: ffff88815efdb550 RBX: 0000000000000004 RCX: 0000000000000006
RDX: 000000015efdb550 RSI: 0000000006dc3470 RDI: ffffea000000000f
RBP: ffff88815f3db5b0 R08: 0000000000000001 R09: ffff88815ebdb550
R10: 00000000000e99a8 R11: 00000000ffffff00 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
FS:  00007fc266560740(0000) GS:ffff88813fc00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000004 CR3: 000000015875f000 CR4: 0000000000750ef0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 <TASK>
 jfs_evict_inode+0x605/0x6b0 build/../fs/jfs/inode.c:155
 evict+0x4f4/0xdd0 build/../fs/inode.c:664
 iput_final build/../fs/inode.c:1744 [inline]
 iput+0xc53/0x1100 build/../fs/inode.c:1770
 diFreeSpecial+0xec/0x1b0 build/../fs/jfs/jfs_imap.c:548
 jfs_mount+0xd1c/0x12c0 build/../fs/jfs/jfs_mount.c:191
 jfs_fill_super+0x76d/0x1670 build/../fs/jfs/super.c:560
 mount_bdev+0x626/0x920 build/../fs/super.c:1367
 jfs_do_mount+0xc9/0xe0 build/../fs/jfs/super.c:674
 legacy_get_tree+0x163/0x2e0 build/../fs/fs_context.c:610
 vfs_get_tree+0xd8/0x5d0 build/../fs/super.c:1497
 do_new_mount+0x7b5/0x16f0 build/../fs/namespace.c:2994
 path_mount+0x100d/0x27a0 build/../fs/namespace.c:3324
 do_mount build/../fs/namespace.c:3337 [inline]
 __do_sys_mount build/../fs/namespace.c:3545 [inline]
 __se_sys_mount+0x8a8/0x9d0 build/../fs/namespace.c:3522
 __x64_sys_mount+0x15d/0x1b0 build/../fs/namespace.c:3522
 do_syscall_x64 build/../arch/x86/entry/common.c:51 [inline]
 do_syscall_64+0x54/0xd0 build/../arch/x86/entry/common.c:82
 entry_SYSCALL_64_after_hwframe+0x44/0xae


 fs/jfs/inode.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 57ab424c05ff..072821b50ab9 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -146,12 +146,13 @@ void jfs_evict_inode(struct inode *inode)
 		dquot_initialize(inode);
 
 		if (JFS_IP(inode)->fileset == FILESYSTEM_I) {
+			struct inode *ipimap = JFS_SBI(inode->i_sb)->ipimap;
 			truncate_inode_pages_final(&inode->i_data);
 
 			if (test_cflag(COMMIT_Freewmap, inode))
 				jfs_free_zero_link(inode);
 
-			if (JFS_SBI(inode->i_sb)->ipimap)
+			if (ipimap && JFS_IP(ipimap)->i_imap)
 				diFree(inode);
 
 			/*
-- 
2.32.0 (Apple Git-132)



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
