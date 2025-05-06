Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA69BAACC20
	for <lists+jfs-discussion@lfdr.de>; Tue,  6 May 2025 19:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=spRGFzjNKKrq2HJr6y6nMMZ7dcvdu1wfSr2i178lvso=; b=lHdXkc1riVQU3LdcScq5hs0jj1
	3rYmc4ydgTT3kLCpwkjiz5DNO9b+j6ZhvjZY62HlB+4YlBiueItPNfzvxsZErXClT3+sMF4G+ZQe+
	WABmAJtcCW9YqINelSHBtmMs6GqMemMEzkO2j1SSe6xHPVfhho76YtrEhIlkpmWw+eWo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uCLyd-0004iv-Ck;
	Tue, 06 May 2025 17:21:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <richard120310@gmail.com>) id 1uCLyc-0004ip-3k
 for jfs-discussion@lists.sourceforge.net;
 Tue, 06 May 2025 17:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JCzSiv2LQpckhD0M0yqvrpeHbcSq2tmauRhmbhTcKao=; b=LPH2n/wLigpt4Fl4E/0zxCyEVV
 v+CKHxcOixJD/fiP0JW2EpY8u5k7wWvOtzlrnFfwvGaiEVuDaWe3lwsFnjgDR/JMjfOlzrgcd/vI7
 mcAwDwv9JiC4r8h5WyjJSo+d7+O6cmURSkZVVxQ4gJjZRDSwjd0GR+kd9GyLiW4Q9tSo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JCzSiv2LQpckhD0M0yqvrpeHbcSq2tmauRhmbhTcKao=; b=bQRaHo4ZZrtV+cqyfHUONjqyuo
 xoUsCq6hGfgaBzyaaHg22kaglCzlcz3RSML4hGdUY4F3Rrjm6ByvPraNH8//GVkwTpJcvqHyyJX7r
 SBVf+3aCakVdFMWb0RH/FJw5+jOnsBrKZ22iUFX31yYcOLuYWhUWuohop/8pqr5CChrI=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uCLyI-0007Cd-W3 for jfs-discussion@lists.sourceforge.net;
 Tue, 06 May 2025 17:21:06 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 98e67ed59e1d1-3035858c687so4511421a91.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 06 May 2025 10:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1746552036; x=1747156836; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JCzSiv2LQpckhD0M0yqvrpeHbcSq2tmauRhmbhTcKao=;
 b=gTUFEjJEDsSgH0qo9w3J9Bptd6P+kRDVJvxlrTPVU6ocM3e48h6wb0GQjSUtnJxsNh
 72SzSUDnvxN0NZ79VJv/A2BeUaK3OOgGtVZwF/DyAb9Kd57uw0XtwODhm9xLICy9VXE7
 NhDh6iqBtKPDjjqkxxRDA/maCyye7ASZBbdbxLY0DfSiUpIyqaHBqWoQ1ukfZwVGxB24
 IynZj++FreQmQfaLN2sHizV/qMt8cs5d3+2qCfaa4gFpkz0Ezd5neismDx207p0DN55n
 t0y1YYOGwyj6E0zra4cfSsKGMSggAoVr/EGV5ft1SWG4p0yP0IXp1SaXK2k+23HXlJUS
 jomA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1746552036; x=1747156836;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JCzSiv2LQpckhD0M0yqvrpeHbcSq2tmauRhmbhTcKao=;
 b=kTTgSSV5XlzkrJ2hACCUXJZbRQjBFgWJ77mSakCGGPDbfiW7NIGfi7WIXLjA3cYAPH
 AVAaD3fBPwFBcR/XsFeb3lrQisDd1y2rgMFqmXALsHpWPmLuwc7XVOohJ1RkvvJivn09
 Xtp14Dqt19XQszD3SFjoktQXZNPfIBKJ3gzMzZLFUag0H8BPmND6tynO92mNRNVIfEcl
 QqsKm5Wi0BN+YBBvhLHazgIg/+06Bsnw60Xji/iFEZIby0D5NsGeVO/lWn4ybHTKx8zi
 tuD7SVCnEJUlOOBtIvckfpKp16uG/+rPWOuE3m3FKNeOkJKt2RHCjJfOklCpYsrLWz5Y
 2ZCw==
X-Forwarded-Encrypted: i=1;
 AJvYcCURPg1Oj5DH093eY4VhaxF8f79RUCUadivzQqTjnp8Tz9Yonosep9EUirpvT5lfBPZxO1SDzsa03kBtYPQH3A==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwH3Y7UTzbkOOeIu7ADBe9bUgrRAjp1qkDAEAaRIGJnH98QQemL
 +bicleuZCyKptUloopYRyt9oeHmqHB81JtJiJ7PFmnbi+g7mB/LW
X-Gm-Gg: ASbGncu8OJs8cFB6pPiQWpZX6JU1SjkiHavBFZ4+WU7F+vcSlVJ0F38RJHMqQ2Hteiw
 cfOjRG9sHVkNNWA048SpYFznkvm7piqH9ySQjFOGcjROspGYw5LjqQENgkJuejeKDf/hLIN9Rpb
 nCsrUcSYGU3O11pPXPZhEudf8hDurNBsFIwCUbEIKds6KdmMis3WgSw32qKSKDyPoC6HkuAfkK0
 OOdZLzyBNVn/e9JdoxVXc2/ZL6pIO7Q7DsK3igYjloWVRyDdGW8Ovb+MzReDEXGvH2gABhxtHEA
 pQXnW13GppsRTV5sVbBHzlC/w7X23tsrm3V6fW1uZc/O0Hz1zrl3cNFnBH73p9Q/ANHd/ftyov1
 Xvs3p0A==
X-Google-Smtp-Source: AGHT+IFcnR5gTR85p+BlxVEOcybegmh+GfLMUZ4D5kZ2mKlKRnee2ReBmVH6S4TJGltLMviu79axPw==
X-Received: by 2002:a17:90b:2fc4:b0:2ff:71ad:e84e with SMTP id
 98e67ed59e1d1-30aac184a94mr399906a91.10.1746552035988; 
 Tue, 06 May 2025 10:20:35 -0700 (PDT)
Received: from vaxr-ASUSPRO-D840MB-M840MB..
 ([2001:288:7001:2703:fd5a:1123:ed06:e2ea])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-30aae4f94e3sm24200a91.5.2025.05.06.10.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 May 2025 10:20:35 -0700 (PDT)
To: syzbot+ba5f49027aace342d24d@syzkaller.appspotmail.com
Date: Wed,  7 May 2025 01:20:26 +0800
Message-ID: <20250506172026.8825-1-richard120310@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <68197d2b.050a0220.23d401.2859.GAE@google.com>
References: <68197d2b.050a0220.23d401.2859.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "6901ab67b84d", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use C's designated zero initializer for the initialization
 of local variable "btstack" to prevent KMSCAN from raising uninit-value error
 for it. Reported-by:
 https://syzkaller.appspot.com/bug?extid=ba5f49027aace342d24d
 Signed-off-by: I Hsin Cheng --- syzbot reported an uninit-value issue. [1]
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [richard120310(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [richard120310(at)gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.49 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uCLyI-0007Cd-W3
Subject: [Jfs-discussion] [RFC PATCH] jfs: Use zero initializer for btstack
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
From: I Hsin Cheng via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: I Hsin Cheng <richard120310@gmail.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 ghanshyam1898@gmail.com, eadavis@qq.com, linux-kernel@vger.kernel.org,
 syzkaller-bugs@googlegroups.com, skhan@linuxfoundation.org,
 I Hsin Cheng <richard120310@gmail.com>, linux-kernel-mentees@lists.linux.dev,
 r.smirnov@omp.ru
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use C's designated zero initializer for the initialization of local
variable "btstack" to prevent KMSCAN from raising uninit-value error for
it.

Reported-by: syzbot+ba5f49027aace342d24d@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=ba5f49027aace342d24d
Signed-off-by: I Hsin Cheng <richard120310@gmail.com>
---
syzbot reported an uninit-value issue. [1]

We can fix this bug with the patch changes, but there's still other bug
in the code as we can see from syzbot's reply[2]. The reproducer doesn't
trigger this issue locally, I'm guessing it's the original issue why the
code jump into "BT_STACK_DUMP", it implies some memory is corrupted.

If you have any suggestion on how to reproduce that bug or look into it,
please let me know, I'll be happy to help.

Btw, I think maybe the btstack can have its own initializer macro? it'll
be more readable and maintainable for future changes if needed.

[1]:
BUG: KMSAN: uninit-value in BT_STACK_DUMP+0x5e5/0x600 fs/jfs/jfs_btree.h:136
 BT_STACK_DUMP+0x5e5/0x600 fs/jfs/jfs_btree.h:136
 dtSearch+0x393f/0x3d30 fs/jfs/jfs_dtree.c:774
 jfs_lookup+0x179/0x590 fs/jfs/namei.c:1461
 lookup_one_qstr_excl_raw+0x204/0x5b0 fs/namei.c:1689
 lookup_one_qstr_excl fs/namei.c:1711 [inline]
 do_unlinkat+0x2e3/0xe50 fs/namei.c:4631
 __do_sys_unlink fs/namei.c:4689 [inline]
 __se_sys_unlink fs/namei.c:4687 [inline]
 __x64_sys_unlink+0x71/0xb0 fs/namei.c:4687
 x64_sys_call+0x29de/0x3db0 arch/x86/include/generated/asm/syscalls_64.h:88
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xd9/0x1b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Local variable nd created at:
 __filename_parentat+0x4c/0x990 fs/namei.c:2726
 filename_parentat fs/namei.c:2749 [inline]
 do_unlinkat+0xe3/0xe50 fs/namei.c:4618

CPU: 1 UID: 0 PID: 5791 Comm: syz-executor444 Not tainted 6.15.0-rc3-syzkaller-00094-g02ddfb981de8 #0 PREEMPT(undef)
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/19/2025

[2]:
Hello,

syzbot has tested the proposed patch but the reproducer is still triggering an issue:
KMSAN: use-after-free in dtSearch

loop0: detected capacity change from 0 to 32768
=====================================================
BUG: KMSAN: use-after-free in UniStrncmp_le fs/jfs/jfs_unicode.h:55 [inline]
BUG: KMSAN: use-after-free in dtCompare fs/jfs/jfs_dtree.c:3340 [inline]
BUG: KMSAN: use-after-free in dtSearch+0x1261/0x3d30 fs/jfs/jfs_dtree.c:650
 UniStrncmp_le fs/jfs/jfs_unicode.h:55 [inline]
 dtCompare fs/jfs/jfs_dtree.c:3340 [inline]
 dtSearch+0x1261/0x3d30 fs/jfs/jfs_dtree.c:650
 jfs_lookup+0x18b/0x5a0 fs/jfs/namei.c:1461
 lookup_one_qstr_excl_raw+0x204/0x5b0 fs/namei.c:1689
 lookup_one_qstr_excl fs/namei.c:1711 [inline]
 do_unlinkat+0x2e3/0xe50 fs/namei.c:4631
 __do_sys_unlink fs/namei.c:4689 [inline]
 __se_sys_unlink fs/namei.c:4687 [inline]
 __x64_sys_unlink+0x71/0xb0 fs/namei.c:4687
 x64_sys_call+0x29de/0x3db0 arch/x86/include/generated/asm/syscalls_64.h:88
 do_syscall_x64 arch/x86/entry/syscall_64.c:63 [inline]
 do_syscall_64+0xd9/0x1b0 arch/x86/entry/syscall_64.c:94
 entry_SYSCALL_64_after_hwframe+0x77/0x7f

Uninit was created at:
 slab_free_hook mm/slub.c:2324 [inline]
 slab_free mm/slub.c:4656 [inline]
 kmem_cache_free+0x286/0xf00 mm/slub.c:4758
 __d_free+0x43/0x60 fs/dcache.c:336
 rcu_do_batch kernel/rcu/tree.c:2568 [inline]
 rcu_core+0xa5a/0x21e0 kernel/rcu/tree.c:2824
 rcu_core_si+0x12/0x20 kernel/rcu/tree.c:2841
 handle_softirqs+0x166/0x6e0 kernel/softirq.c:579
 __do_softirq kernel/softirq.c:613 [inline]
 invoke_softirq kernel/softirq.c:453 [inline]
 __irq_exit_rcu+0x66/0x180 kernel/softirq.c:680
 irq_exit_rcu+0x12/0x20 kernel/softirq.c:696
 instr_sysvec_apic_timer_interrupt arch/x86/kernel/apic/apic.c:1049 [inline]
 sysvec_apic_timer_interrupt+0x84/0x90 arch/x86/kernel/apic/apic.c:1049
 asm_sysvec_apic_timer_interrupt+0x1f/0x30 arch/x86/include/asm/idtentry.h:702

CPU: 0 UID: 0 PID: 6979 Comm: syz.0.35 Not tainted 6.15.0-rc3-syzkaller-00094-g02ddfb981de8-dirty #0 PREEMPT(undef)
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 04/29/2025

Best regards,
I Hsin Cheng
---
 fs/jfs/jfs_dtree.c |  6 +++---
 fs/jfs/jfs_xtree.c | 14 +++++++-------
 fs/jfs/namei.c     | 14 +++++++-------
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 93db6eec4465..87025d832758 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2083,7 +2083,7 @@ int dtDelete(tid_t tid,
 	struct metapage *mp, *imp;
 	dtpage_t *p;
 	int index;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct dt_lock *dtlck;
 	struct tlock *tlck;
 	struct lv *lv;
@@ -2716,7 +2716,7 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 	dtpage_t *p;
 	int index;
 	s8 *stbl;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	int i, next;
 	struct ldtentry *d;
 	struct dtslot *t;
@@ -4237,7 +4237,7 @@ int dtModify(tid_t tid, struct inode *ip,
 	struct metapage *mp;
 	dtpage_t *p;
 	int index;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct tlock *tlck;
 	struct dt_lock *dtlck;
 	struct lv *lv;
diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 5ee618d17e77..dd0e542a4978 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -123,7 +123,7 @@ int xtLookup(struct inode *ip, s64 lstart,
 	     s64 llen, int *pflag, s64 * paddr, s32 * plen, int no_check)
 {
 	int rc = 0;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	int cmp;
 	s64 bn;
 	struct metapage *mp;
@@ -520,7 +520,7 @@ int xtInsert(tid_t tid,		/* transaction id */
 	xtpage_t *p;		/* base B+-tree index page */
 	s64 bn;
 	int index, nextindex;
-	struct btstack btstack;	/* traverse stack */
+	struct btstack btstack = {0};	/* traverse stack */
 	struct xtsplit split;	/* split information */
 	xad_t *xad;
 	int cmp;
@@ -1344,7 +1344,7 @@ int xtExtend(tid_t tid,		/* transaction id */
 	xtpage_t *p;		/* base B+-tree index page */
 	s64 bn;
 	int index, nextindex, len;
-	struct btstack btstack;	/* traverse stack */
+	struct btstack btstack = {0};	/* traverse stack */
 	struct xtsplit split;	/* split information */
 	xad_t *xad;
 	s64 xaddr;
@@ -1503,7 +1503,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
 	xtpage_t *p;		/* base B+-tree index page */
 	s64 bn;
 	int index0, index, newindex, nextindex;
-	struct btstack btstack;	/* traverse stack */
+	struct btstack btstack = {0};	/* traverse stack */
 	struct xtsplit split;	/* split information */
 	xad_t *xad, *lxad, *rxad;
 	int xflag;
@@ -1949,7 +1949,7 @@ int xtAppend(tid_t tid,		/* transaction id */
 	xtpage_t *p;		/* base B+-tree index page */
 	s64 bn, xaddr;
 	int index, nextindex;
-	struct btstack btstack;	/* traverse stack */
+	struct btstack btstack = {0};	/* traverse stack */
 	struct xtsplit split;	/* split information */
 	xad_t *xad;
 	int cmp;
@@ -2196,7 +2196,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 	xad_t *xad;
 	s64 xoff, xaddr;
 	int xlen, len, freexlen;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct btframe *parent;
 	struct tblock *tblk = NULL;
 	struct tlock *tlck = NULL;
@@ -2744,7 +2744,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
 s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
 {
 	s64 bn;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	int cmp;
 	int index;
 	int locked_leaves = 0;
diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
index 65a218eba8fa..d04c752823ea 100644
--- a/fs/jfs/namei.c
+++ b/fs/jfs/namei.c
@@ -67,7 +67,7 @@ static int jfs_create(struct mnt_idmap *idmap, struct inode *dip,
 	struct inode *ip = NULL;	/* child directory inode */
 	ino_t ino;
 	struct component_name dname;	/* child directory name */
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct inode *iplist[2];
 	struct tblock *tblk;
 
@@ -200,7 +200,7 @@ static struct dentry *jfs_mkdir(struct mnt_idmap *idmap, struct inode *dip,
 	struct inode *ip = NULL;	/* child directory inode */
 	ino_t ino;
 	struct component_name dname;	/* child directory name */
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct inode *iplist[2];
 	struct tblock *tblk;
 
@@ -791,7 +791,7 @@ static int jfs_link(struct dentry *old_dentry,
 	struct inode *ip = d_inode(old_dentry);
 	ino_t ino;
 	struct component_name dname;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct inode *iplist[2];
 
 	jfs_info("jfs_link: %pd %pd", old_dentry, dentry);
@@ -883,7 +883,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
 	ino_t ino = 0;
 	struct component_name dname;
 	u32 ssize;		/* source pathname size */
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct inode *ip;
 	s64 xlen = 0;
 	int bmask = 0, xsize;
@@ -1069,7 +1069,7 @@ static int jfs_rename(struct mnt_idmap *idmap, struct inode *old_dir,
 		      struct dentry *old_dentry, struct inode *new_dir,
 		      struct dentry *new_dentry, unsigned int flags)
 {
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	ino_t ino;
 	struct component_name new_dname;
 	struct inode *new_ip;
@@ -1356,7 +1356,7 @@ static int jfs_mknod(struct mnt_idmap *idmap, struct inode *dir,
 		     struct dentry *dentry, umode_t mode, dev_t rdev)
 {
 	struct jfs_inode_info *jfs_ip;
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	struct component_name dname;
 	ino_t ino;
 	struct inode *ip;
@@ -1448,7 +1448,7 @@ static int jfs_mknod(struct mnt_idmap *idmap, struct inode *dir,
 
 static struct dentry *jfs_lookup(struct inode *dip, struct dentry *dentry, unsigned int flags)
 {
-	struct btstack btstack;
+	struct btstack btstack = {0};
 	ino_t inum;
 	struct inode *ip;
 	struct component_name key;
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
