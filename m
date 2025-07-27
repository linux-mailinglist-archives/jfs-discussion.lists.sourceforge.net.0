Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 64074B12EEF
	for <lists+jfs-discussion@lfdr.de>; Sun, 27 Jul 2025 11:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GluKFB5T81sjvs99k+7nTAz4BCelvMjLvG2rDXH3Rwo=; b=MLmUoFttna1w3ndpid1P0m91Of
	H+zE83G0C46rgw1ZoaEBAlLE2KpQ1xSThP+4fE96bGjBrudNS0LjSPC9eXEqU0croldoqiCnxejq8
	AW31SI3A2vjxlPAOwYXIc6XxToQJl2hQWGS+TpYByF2S0OUyAMXih8qs/he0hers7CIY=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ufy87-0004pa-HO;
	Sun, 27 Jul 2025 09:57:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1ufy85-0004pR-Ed
 for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Jul 2025 09:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=muUtX0lSh6gtM3PBB5xVgiDhmrdOkyfI1XoOF1+/laI=; b=k2QMThmhSjkbg4Q3zm2NifZIWL
 pTJIMErwlbj/uyI9/YwE+b9mnqihMXn9G7v2JfigBWhVMhnXQcx69wT+aMLzc/nE6qw/rDG1Fv5hh
 wVsJbpWf2tpqv0i3DC4JIyLqv/kJzitniKNzlHvt9Xnz9NYJi3MF+fm8iFUd+ld0u2bA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=muUtX0lSh6gtM3PBB5xVgiDhmrdOkyfI1XoOF1+/laI=; b=g
 0gWycunPafKP4ZCM3q2rwTX5RA2HbL1c1WJBLlMiMGLJeB4sVbtupOFnozqU7YcyFyVATEt/xyO+D
 SEIuEGg4ftoaA0tkL3FGkhErskHBFE+OLvoAbukzXBdMv3HlTHlAO5DVUknHKjii+oTKbi9RC1Stk
 n+efh1PqRkrIvG1s=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ufy84-00015K-RU for jfs-discussion@lists.sourceforge.net;
 Sun, 27 Jul 2025 09:57:17 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-23f8df98e41so30912975ad.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 27 Jul 2025 02:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753610226; x=1754215026; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=muUtX0lSh6gtM3PBB5xVgiDhmrdOkyfI1XoOF1+/laI=;
 b=c6d5GPmRxIN7KAEYmD+Dt3Ui4KKnrpsn0xMz31gk08HGVfO1XC6OvPXPBGbRS12uWj
 s+5iIG7IsPdgYpXmfsmdBmjZ59by4EB59VYnS6ehiOOqoN6nCn3CD1fZ3MVUoGZmakAz
 93Mt6tDLmhRTvX498IIKHU+gQsmh4L7HbEooY+wIFUMOiKwXWRD+qfokYxWmNzmWKfHC
 y/L8sSUQlfqS172T1Dur3UMs491Ox2iPaeyXgktUp1nbB2K/kJ9IB0iwY0r75dn9cMgH
 ZpNKyCTNODZ9YXz4X92OETbjhHA+eyU5TrLEICbfS2GjcvbBt1k1p2r3iWvY3Hgjj+YC
 Ex+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753610226; x=1754215026;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=muUtX0lSh6gtM3PBB5xVgiDhmrdOkyfI1XoOF1+/laI=;
 b=qH6tozl8lDnzXPr9HKQC4KuA+CZxkwYReV1jf4q3Aj3SIv+PPsxdJh5Aa/nBu98dqS
 fdQjnwSHkeIUeB9OAPD4GIAEgWCag4+/RrebMA1uXH+zhJ38JdgckIQcLPY8g9RmrF4m
 /Zh950GB5CfLzTLJIEfifmkMWVJ3AZmC6EEUiut/P1bUa2OuH2w/hC2c64/w9I0Yc8dU
 D2tLwb2GkWeGDgrpEFrFzoSw+8Wngm1jvK6IXND2Bsm0EZBE2nvXtOrMZU3kqDt0cyBr
 ljG5g0Cg8ad6n6jKLA8abk4vSujM/pCWy4mMMK/Gs1p5GxMeg97KIwd0C7MBI/hyW506
 uIkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVS3dBeww43AphVcTVt0XgYDrJrtIkAv2bYt2LZNMhueFRAUOCNb/09RLxpGKR5HZSkpCSs43sSvZ2B6dorSQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzLt8v42yinp1y8S7rdw0GFJsIYK4ymiOTKGZaPfMkgmAXdbkeN
 Mbcu+HVqUpdApTWStsS+RMMHEPUTExbSNK5PQzBroSnzKt8rTq2aka85
X-Gm-Gg: ASbGnctTJBop1bghaw3kJr5813DLNy7JdRnkBJW8R2iYab9E09+RTypdew/wdf2YQMV
 vCMFPVAwMLmqhvbtPsDmg1RgjVHSePz+tY4nhw3KrBEQ8Ru5YCzCf4bbG9u0n0wQb5vt+imLODm
 cpZn4ZkOhY7ed4KU8ZwKEBEVEbd3iocqolXEvtkkXjxhdqPWD4buEHLdplgP+44JPAZ0FjsDyyu
 eA9yM2E5hG1A1BAtW1df5GaJvkza2wret4Pz7W6y0rCB+mj7dt/aIf5YDzBK99zAQIpOukHj6PN
 EEbdZUxGJJuRFRaoLD9ido5UhveHe5t5Ezq3RjvtwK4hUZIq4Jy1GljeRDB6Sv7bcni3RZY9jQu
 AW0Ul8xeSQiPeUHLoaBCmIA==
X-Google-Smtp-Source: AGHT+IHQG3kLtkocztWO0RATICIWOPiyz9ICOWjSNS+zDpM7I3jFhyHHPhD6/+UKe1O9Fox824bOaw==
X-Received: by 2002:a17:903:230c:b0:240:96a:b81d with SMTP id
 d9443c01a7336-240096abbc8mr20897525ad.5.1753610225956; 
 Sun, 27 Jul 2025 02:57:05 -0700 (PDT)
Received: from pop-os.. ([49.207.200.229]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2400ac15a9fsm7292685ad.93.2025.07.27.02.57.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Jul 2025 02:57:05 -0700 (PDT)
To: stable@vger.kernel.org
Date: Sun, 27 Jul 2025 15:26:45 +0530
Message-Id: <20250727095645.530309-1-duttaditya18@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dmitry Antipov [ Upstream commit
 8c3f9a70d2d4dd6c640afe294b05c6a0a45434d9
 ] Syzbot has reported the following BUG: 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [duttaditya18(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [duttaditya18(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ufy84-00015K-RU
Subject: [Jfs-discussion] [PATCH 6.6.y] jfs: reject on-disk inodes of an
 unsupported type
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
From: Aditya Dutt via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Aditya Dutt <duttaditya18@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Dmitry Antipov <dmantipov@yandex.ru>, linux-kernel@vger.kernel.org,
 syzbot+ac2116e48989e84a2893@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Dmitry Antipov <dmantipov@yandex.ru>

[ Upstream commit 8c3f9a70d2d4dd6c640afe294b05c6a0a45434d9 ]

Syzbot has reported the following BUG:

kernel BUG at fs/inode.c:668!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN PTI
CPU: 3 UID: 0 PID: 139 Comm: jfsCommit Not tainted 6.12.0-rc4-syzkaller-00085-g4e46774408d9 #0
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.3-3.fc41 04/01/2014
RIP: 0010:clear_inode+0x168/0x190
Code: 4c 89 f7 e8 ba fe e5 ff e9 61 ff ff ff 44 89 f1 80 e1 07 80 c1 03 38 c1 7c c1 4c 89 f7 e8 90 ff e5 ff eb b7
 0b e8 01 5d 7f ff 90 0f 0b e8 f9 5c 7f ff 90 0f 0b e8 f1 5c 7f
RSP: 0018:ffffc900027dfae8 EFLAGS: 00010093
RAX: ffffffff82157a87 RBX: 0000000000000001 RCX: ffff888104d4b980
RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000000
RBP: ffffc900027dfc90 R08: ffffffff82157977 R09: fffff520004fbf38
R10: dffffc0000000000 R11: fffff520004fbf38 R12: dffffc0000000000
R13: ffff88811315bc00 R14: ffff88811315bda8 R15: ffff88811315bb80
FS:  0000000000000000(0000) GS:ffff888135f00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005565222e0578 CR3: 0000000026ef0000 CR4: 00000000000006f0
Call Trace:
 <TASK>
 ? __die_body+0x5f/0xb0
 ? die+0x9e/0xc0
 ? do_trap+0x15a/0x3a0
 ? clear_inode+0x168/0x190
 ? do_error_trap+0x1dc/0x2c0
 ? clear_inode+0x168/0x190
 ? __pfx_do_error_trap+0x10/0x10
 ? report_bug+0x3cd/0x500
 ? handle_invalid_op+0x34/0x40
 ? clear_inode+0x168/0x190
 ? exc_invalid_op+0x38/0x50
 ? asm_exc_invalid_op+0x1a/0x20
 ? clear_inode+0x57/0x190
 ? clear_inode+0x167/0x190
 ? clear_inode+0x168/0x190
 ? clear_inode+0x167/0x190
 jfs_evict_inode+0xb5/0x440
 ? __pfx_jfs_evict_inode+0x10/0x10
 evict+0x4ea/0x9b0
 ? __pfx_evict+0x10/0x10
 ? iput+0x713/0xa50
 txUpdateMap+0x931/0xb10
 ? __pfx_txUpdateMap+0x10/0x10
 jfs_lazycommit+0x49a/0xb80
 ? _raw_spin_unlock_irqrestore+0x8f/0x140
 ? lockdep_hardirqs_on+0x99/0x150
 ? __pfx_jfs_lazycommit+0x10/0x10
 ? __pfx_default_wake_function+0x10/0x10
 ? __kthread_parkme+0x169/0x1d0
 ? __pfx_jfs_lazycommit+0x10/0x10
 kthread+0x2f2/0x390
 ? __pfx_jfs_lazycommit+0x10/0x10
 ? __pfx_kthread+0x10/0x10
 ret_from_fork+0x4d/0x80
 ? __pfx_kthread+0x10/0x10
 ret_from_fork_asm+0x1a/0x30
 </TASK>

This happens when 'clear_inode()' makes an attempt to finalize an underlying
JFS inode of unknown type. According to JFS layout description from
https://jfs.sourceforge.net/project/pub/jfslayout.pdf, inode types from 5 to
15 are reserved for future extensions and should not be encountered on a valid
filesystem. So add an extra check for valid inode type in 'copy_from_dinode()'.

Reported-by: syzbot+ac2116e48989e84a2893@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=ac2116e48989e84a2893
Fixes: 79ac5a46c5c1 ("jfs_lookup(): don't bother with . or ..")
Signed-off-by: Dmitry Antipov <dmantipov@yandex.ru>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
---

As per: https://lore.kernel.org/all/CAODzB9roW_ObEa8K8kowbfQ4bL3w4R78v2b_yBU4BQL4bpXrWw@mail.gmail.com/
this commit is not backported to any of the stable kernels (other than 6.15.y)
I have already sent an email for 6.12.y: https://lore.kernel.org/stable/20250727095111.527745-1-duttaditya18@gmail.com/
I will be sending separate emails for 6.1.y and 5.15.y

 fs/jfs/jfs_imap.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 9a6d504228e7..35f3144d703b 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -3029,14 +3029,23 @@ static void duplicateIXtree(struct super_block *sb, s64 blkno,
  *
  * RETURN VALUES:
  *	0	- success
- *	-ENOMEM	- insufficient memory
+ *	-EINVAL	- unexpected inode type
  */
 static int copy_from_dinode(struct dinode * dip, struct inode *ip)
 {
 	struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
+	int fileset = le32_to_cpu(dip->di_fileset);
+
+	switch (fileset) {
+	case AGGR_RESERVED_I: case AGGREGATE_I: case BMAP_I:
+	case LOG_I: case BADBLOCK_I: case FILESYSTEM_I:
+		break;
+	default:
+		return -EINVAL;
+	}
 
-	jfs_ip->fileset = le32_to_cpu(dip->di_fileset);
+	jfs_ip->fileset = fileset;
 	jfs_ip->mode2 = le32_to_cpu(dip->di_mode);
 	jfs_set_inode_flags(ip);
 
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
