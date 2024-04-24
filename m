Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 505108B10F5
	for <lists+jfs-discussion@lfdr.de>; Wed, 24 Apr 2024 19:27:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzgOO-0003uw-IL;
	Wed, 24 Apr 2024 17:26:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1rzgKe-0000jV-UW
 for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Apr 2024 17:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vLMNR1xv0JaPuIH7/cMqGXZSflApU/kLSGpTxPwxekk=; b=AIYsNoIsiZX1kS0or2qoSn3Kq9
 B3XRwwMRumfMkVkALtYw6b8F1Hl1A1fLItDVTKXkGyu3OsnWjNi8yVkseq3e8VXKyKaw5SXrvQ+VM
 ynf1G8B25tUahBdw13Xd/tKmjNKla2KrE9auWQB2GnV9b4Uwm9cwPNi8eG7SzyIcQU40=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vLMNR1xv0JaPuIH7/cMqGXZSflApU/kLSGpTxPwxekk=; b=Sq42nQETRGpNHbDqnyYQWMgYF+
 JtX7RDtxZHsuMBYOXw7AE2VRFL53REqEXBwRBzMOvrfcqiOpawF50gISdCpsq9Rnu5Lux4DRexdGV
 L2La469TCQmWk8gXoP6ujte0LsYrZJ3toYD94BarPKHncTrEAXsQVtfAn8G2XPpCNPSc=;
Received: from mail-pl1-f170.google.com ([209.85.214.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rzgKe-0002PF-As for jfs-discussion@lists.sourceforge.net;
 Wed, 24 Apr 2024 17:22:57 +0000
Received: by mail-pl1-f170.google.com with SMTP id
 d9443c01a7336-1e4bf0b3e06so549515ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 24 Apr 2024 10:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713979366; x=1714584166; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vLMNR1xv0JaPuIH7/cMqGXZSflApU/kLSGpTxPwxekk=;
 b=FYwBuFSsRNRpEwNEDuf+RT2GY0vNm4HtnQP7bjUp3GiN2l65M7aY4MR2udeB1AIRon
 OOr7mxdJrzuZ3DZjkAWC83aSmtCSqWCCL8Jd/5mB3g3rTtrZ5zH/xRmlVBUE7tBJ/8IV
 8xbJ1kp+Sc82v99at83FYfC7Ggzfiiq2XNyYmTaiOZ8dicD8Mx28z1+c0D+ty346tdJ6
 SXYut2gRui3oNBMvZdJQojwX82sCW9XMc0+gZ03D7uTWgNn0tZn3DWx2shltc+WWfxUp
 Lv6+2ql99NFwmPnZ+nYgzNkkYqM0zyC1jxolOzja8D2gb6m6V3Y2CWlda0owakFb6yye
 MlzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713979366; x=1714584166;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vLMNR1xv0JaPuIH7/cMqGXZSflApU/kLSGpTxPwxekk=;
 b=gBk5uoI2lBT8NB2NYgKl1wctuEI1xvVnTkun7NmdD2qwtf09or14PD+AS0n3/fPFCE
 ygHxWOKU7vTtgliFEQBIbEJETgBN7QZCYtMdjPtVzYg7kzuMPrMPepPOPF1UV0nTt1Yk
 zNtaW6eKasMd3DgrA8GjW5CLYcmVncfl7VaB2WBjPlNcJz5cl6pjrUXsjYthbfz3gq8w
 pda71vXf7IDOErPQJU39frJTcitQwdj/p6cWyTqY8sew5nnfBhftTaACc5kv1SaWWI0B
 vxJV4QBCdyIH2i2oLRndAOm/P319jfg+RiZfIGrKFfEGY0ey+FgP3IAeycpgdA8V7E5V
 lSRg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHclVyh3rP3nhfJ2Ada8YcZcOO5bI5gjBdZt8w1mUwT3Bxn4zLF2HSCU6yDZjx85e0RrduVTDxnZkTM576Nrk1FTx0iZQg9dDTm4abeMCkX1Eg0fc=
X-Gm-Message-State: AOJu0YwhJk2na4C72+wp8z0j+hnz1jtCVNSzEVuzFRiJutWhCSHzF/rH
 dOMReVbfGk0drJauBglDUmfVlOwVQbrGjnIHc3LAQDViRBIC12jF
X-Google-Smtp-Source: AGHT+IEgmCxsGqxWGZUa8bERNgxHtuZTBX9uCMZ1jvAtytfz/tSJn0YI8J6GsPq3BJ3urcBbnegbQQ==
X-Received: by 2002:a17:903:40c2:b0:1e0:ca47:4d96 with SMTP id
 t2-20020a17090340c200b001e0ca474d96mr3278846pld.3.1713979366074; 
 Wed, 24 Apr 2024 10:22:46 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 p14-20020a170902780e00b001e29ac7cc64sm12428454pll.231.2024.04.24.10.22.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Apr 2024 10:22:45 -0700 (PDT)
To: shaggy@kernel.org,
	syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Date: Thu, 25 Apr 2024 02:22:40 +0900
Message-Id: <20240424172240.148883-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <0000000000000866ea0616cb082c@google.com>
References: <0000000000000866ea0616cb082c@google.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [syzbot report] UBSAN: array-index-out-of-bounds in
 fs/jfs/jfs_imap.c:886:2
 index 524288 is out of range for type 'struct mutex[128]' CPU: 0 PID: 113
 Comm: jfsCommit Not tainted 6.9.0-rc5-syzkaller-00 [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.170 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aha310510[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rzgKe-0002PF-As
X-Mailman-Approved-At: Wed, 24 Apr 2024 17:26:48 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
From: Jeongjun Park via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jeongjun Park <aha310510@gmail.com>
Cc: brauner@kernel.org, jlayton@kernel.org, Jeongjun Park <aha310510@gmail.com>,
 eadavis@qq.com, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

[syzbot report]
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:886:2
index 524288 is out of range for type 'struct mutex[128]'
CPU: 0 PID: 113 Comm: jfsCommit Not tainted 6.9.0-rc5-syzkaller-00036-g9d1ddab261f3 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 diFree+0x21c3/0x2fb0 fs/jfs/jfs_imap.c:886
 jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
 evict+0x2a8/0x630 fs/inode.c:667
 txUpdateMap+0x829/0x9f0 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x49a/0xb80 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2f0/0x390 kernel/kthread.c:388
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
---[ end trace ]---
Kernel panic - not syncing: UBSAN: panic_on_warn set ...
CPU: 1 PID: 113 Comm: jfsCommit Not tainted 6.9.0-rc5-syzkaller-00036-g9d1ddab261f3 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:114
 panic+0x349/0x860 kernel/panic.c:348
 check_panic_on_warn+0x86/0xb0 kernel/panic.c:241
 ubsan_epilogue lib/ubsan.c:236 [inline]
 __ubsan_handle_out_of_bounds+0x141/0x150 lib/ubsan.c:429
 diFree+0x21c3/0x2fb0 fs/jfs/jfs_imap.c:886
 jfs_evict_inode+0x32d/0x440 fs/jfs/inode.c:156
 evict+0x2a8/0x630 fs/inode.c:667
 txUpdateMap+0x829/0x9f0 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x49a/0xb80 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x2f0/0x390 kernel/kthread.c:388
 ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Kernel Offset: disabled
Rebooting in 86400 seconds..
===========================================================

Due to overflow, a value that is too large is entered into the agno 
value. Therefore, we need to add code to check the agno value.

Reported-by: syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Signed-off-by: Jeongjun Park <aha310510@gmail.com>
---
 fs/jfs/jfs_imap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 2ec35889ad24..0aac083bc0db 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -881,6 +881,11 @@ int diFree(struct inode *ip)
 	 */
 	agno = BLKTOAG(JFS_IP(ip)->agstart, JFS_SBI(ip->i_sb));
 
+	if(agno >= MAXAG || agno < 0){
+		jfs_error(ip->i_sb, "invalid array index (0 <= agno < MAXAG), agno = %d\n", agno);
+		return -ENOMEM;
+	}
+
 	/* Lock the AG specific inode map information
 	 */
 	AG_LOCK(imap, agno);
-- 
2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
