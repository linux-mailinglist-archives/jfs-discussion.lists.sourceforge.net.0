Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BD6A028B6
	for <lists+jfs-discussion@lfdr.de>; Mon,  6 Jan 2025 16:00:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tUoa5-0001sY-6T;
	Mon, 06 Jan 2025 14:59:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <huk23@m.fudan.edu.cn>) id 1tUiap-0007Mh-Ln
 for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Jan 2025 08:36:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Cc:Date:Message-Id:Subject:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZjZsaNRKD/p+t4+tOCe8NQwdHEO1DsDUJwpFxXO+nGY=; b=D6uajCpIQlL5bpi2z5jJ/TCsYk
 4sCkhQc1fb/7SgQzKG9Wc+cGpIU5UUffagkwfn9qpbrUhnWHFAZdfe6thZOF97/6Z891IBQH52CnE
 hebmY4HYjmvPZpLO9WBrSUxNuDfBXkZCHCEUZYUdYGug85Ol6aHzPLuaQuR0+LmtMGLU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Cc:Date:Message-Id:Subject:Mime-Version:Content-Transfer-Encoding:
 Content-Type:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZjZsaNRKD/p+t4+tOCe8NQwdHEO1DsDUJwpFxXO+nGY=; b=a
 McyoAsiXjLFeaItVekIrpAcnnSXpIqG9h5rih+zEvklPLdAXi923s5cMshs1EI+RVZyewquH28FWP
 piae61um9oHZl/6WMvIAhFDnYpNa0dYswJ760/FUaNRfvvXIKZkL9Ol/AGnM3VixvQzQ2G76BaFXL
 VPnfMEqHpVoSq/24=;
Received: from smtpbgsg2.qq.com ([54.254.200.128])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tUian-0007OV-Bi for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Jan 2025 08:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=m.fudan.edu.cn;
 s=sorc2401; t=1736152557;
 bh=ZjZsaNRKD/p+t4+tOCe8NQwdHEO1DsDUJwpFxXO+nGY=;
 h=From:Mime-Version:Subject:Message-Id:Date:To;
 b=bilui2AChqplggF1C/ilhTg9gb83KH+4sY+dG/4z45Qh6VtIH4tw6N/9yASc5019I
 v5FeTN/0h+Bvk0YxV0znGQ+e3xLJvfMFeod6Fdw0f0usp6zF7m2Y7NV2OoDGj4tdGQ
 5QWMNwTW9n6KR4wSA6FoJ9a583BDqXOnQgrqMwz0=
X-QQ-mid: bizesmtpip4t1736151404tvee99x
X-QQ-Originating-IP: jFU3wyU3VkdMM2oLiocf01pXEKE/7hBACknXzOJROhE=
Received: from smtpclient.apple ( [localhost]) by bizesmtp.qq.com (ESMTP) with 
 id ; Mon, 06 Jan 2025 16:16:42 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2219133380766210790
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3818.100.11.1.3\))
Message-Id: <F87C448B-47EB-49B8-8DAF-A44AAF45A6D8@m.fudan.edu.cn>
Date: Mon, 6 Jan 2025 16:16:32 +0800
To: shaggy@kernel.org
X-Mailer: Apple Mail (2.3818.100.11.1.3)
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:m.fudan.edu.cn:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NOJSm0vO2w653eQGfwkrZVdzTp+6k1mdS403keOAtkEJ2kkC4IYzmQkf
 CcPf0MIb0M3kWmHfZLUtfd6ZDQb+xA2A53pUHSuiPNM32+GNsIHRuGl0uZ7yDwNUEgi1W+M
 DZiiRWS/3QfxYpQc5MSgiVx8Fb/mavJJ2voK3gL0CwkdZnZwhXDU36IW8/FoEYqcuyxamNd
 aw0qy80NaWsZzm2BZ0rXZnn7/0fLAgzYDDPNtXhChZ++pbNvkShpPg3wyrVRXsbak/gQjtQ
 xY31M/74L83zCzxx7YHFpQ3S+aVxtG1/JIuo9y84I3P/S8BO+gckZkRimSFEZyuxdi0vM+r
 BxsTnQx/q5EVDinimGidfVgSLOvdJwDdKJKKhcVJtP9Ct3gLQabdfcHwuaJWnlZgOE1a4OX
 j6cLqvPl52gMhJAGGJuB8MTLxW6hZdz38DuhwlhNJEE7qbaxnfwCLrRzWMhfmeDt/SrDefe
 F8/dLZ0QiP+vlvl0V0ZWmxseLwxPJ36s5HIZzEj0yFUgpyi/kLRgwniPspuG5p2pqbc9OEh
 Tr0r+PLhqRpQcEhRtb+2lH/hEXxVHtmBJYCXVSaCJYqGwaZN+wSlwVGxHjSeBYvk49wLkgK
 w/UiYMfvtJkmfPhgWTze3iPLtF64NbddULZblejwbl4VWPjmtCB55XfwBUI9Ct8bz185qx5
 jPtteN7HDw4RDFMbcSkS5J37gpjV/hZqV3d6uxJQY2WN/EHwOxcIxJUK7aIP/PZsVORGZpW
 rn4NIy/2pEiDgxYR2zysu9A0JeGV7evUGp0pvctrDWRFCUIvI1Wtsv5JiWoFR+U8r2fhAu0
 uNHtwJYhXWOJ/C544yKi+ElG+AuC55lwLIMS76Ertf7tXCS7rK4I97r8P77RkVqHU4sOwfX
 AeXPFo9mxgtcNOKgqi+5+P+mKLTUX/WftRpxzNQ3NJR5wwmlw2sCnDeAMizV4Iw9LWaAgGM
 +cYHDZ4V6SWvBpHtkjBK+QhsqwiKcFkK+QCg=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 When using our customized fuzzer tool to fuzz the latest
 Linux kernel, the following crash was triggered. HEAD commit:
 fc033cf25e612e840e545f8d5ad2edd6ba613ed5
 git tree: upstream Console output:
 https://drive.google.com/file/d/1-YGytaKuh9M4hI6x27YjsE0vSyRFngf5/view?usp=sharing
 Kernel config: https://drive [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [54.254.200.128 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [54.254.200.128 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.254.200.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [54.254.200.128 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1tUian-0007OV-Bi
X-Mailman-Approved-At: Mon, 06 Jan 2025 14:59:47 +0000
Subject: [Jfs-discussion] Bug: null-ptr-deref at line 2668 in txLazyCommit
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
From: Kun Hu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Kun Hu <huk23@m.fudan.edu.cn>
Cc: "jjtan24@m.fudan.edu.cn" <jjtan24@m.fudan.edu.cn>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

When using our customized fuzzer tool to fuzz the latest Linux kernel, the following crash
was triggered.

HEAD commit: fc033cf25e612e840e545f8d5ad2edd6ba613ed5
git tree: upstream
Console output: https://drive.google.com/file/d/1-YGytaKuh9M4hI6x27YjsE0vSyRFngf5/view?usp=sharing
Kernel config: https://drive.google.com/file/d/1n2sLNg-YcIgZqhhQqyMPTDWM_N1Pqz73/view?usp=sharing
C reproducer: https://drive.google.com/file/d/1HAtXWgYzbqfzxCypX24XnjmewCwoGc1q/view?usp=sharing
Syzlang reproducer: https://drive.google.com/file/d/11cS8gsc4cOKrhLb5WpZuiLbq72iKqoue/view?usp=sharing

We found a potential issue where a null-ptr-deref may occur in the txLazyCommit function. A possible root cause is that another thread might be modifying the log or releasing tblk concurrently while txLazyCommit is being executed, leading to invalid memory access.
Although txLazyCommit employs mechanisms like spin_lock_irq and yield() to ensure thread safety, these protections may fail if the input parameters (e.g., tblk or tblk->sb) are already corrupted or invalid before the function is invoked.

Could you please help check if this needs to be addressed?

If you fix this issue, please add the following tag to the commit:
Reported-by: Kun Hu <huk23@m.fudan.edu.cn>, Jiaji Qin <jjtan24@m.fudan.edu.cn>


Oops: general protection fault, probably for non-canonical address 0xdffffc000000003d: 0000 [#1] PREEMPT SMP KASAN NOPTI
KASAN: null-ptr-deref in range [0x00000000000001e8-0x00000000000001ef]
CPU: 1 UID: 0 PID: 96 Comm: jfsCommit Not tainted 6.13.0-rc5 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
RIP: 0010:__lock_acquire+0xe4/0x4a10 kernel/locking/lockdep.c:5089
Code: 08 84 d2 0f 85 25 15 00 00 44 8b 1d ca de 54 0c 45 85 db 0f 84 58 0f 00 00 48 b8 00 00 00 00 00 fc ff df 4c 89 ea 48 c1 ea 03 <80> 3c 02 00 0f 85 0c 36 00 00 49 8b 45 00 48 3d 80 81 46 99 0f 84
RSP: 0018:ffa000000152fb68 EFLAGS: 00010012
RAX: dffffc0000000000 RBX: 0000000000000001 RCX: 1ff40000002a5f80
RDX: 000000000000003d RSI: 0000000000000000 RDI: 00000000000001e8
RBP: ff110000041ac680 R08: 0000000000000001 R09: 0000000000000001
R10: 0000000000000000 R11: 0000000000000001 R12: 0000000000000000
R13: 00000000000001e8 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ff1100006a280000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f08e8070000 CR3: 00000000089ea002 CR4: 0000000000771ef0
PKRU: 55555554
Call Trace:
 <TASK>
 lock_acquire kernel/locking/lockdep.c:5849 [inline]
 lock_acquire+0x1b1/0x580 kernel/locking/lockdep.c:5814
 __raw_spin_lock_irq include/linux/spinlock_api_smp.h:119 [inline]
 _raw_spin_lock_irq+0x36/0x50 kernel/locking/spinlock.c:170
 spin_lock_irq include/linux/spinlock.h:376 [inline]
 txLazyCommit fs/jfs/jfs_txnmgr.c:2668 [inline]
 jfs_lazycommit+0x648/0xb20 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x345/0x450 kernel/kthread.c:389
 ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:__lock_acquire+0xe4/0x4a10 kernel/locking/lockdep.c:5089
Code: 08 84 d2 0f 85 25 15 00 00 44 8b 1d ca de 54 0c 45 85 db 0f 84 58 0f 00 00 48 b8 00 00 00 00 00 fc ff df 4c 89 ea 48 c1 ea 03 <80> 3c 02 00 0f 85 0c 36 00 00 49 8b 45 00 48 3d 80 81 46 99 0f 84
RSP: 0018:ffa000000152fb68 EFLAGS: 00010012
RAX: dffffc0000000000 RBX: 0000000000000001 RCX: 1ff40000002a5f80
RDX: 000000000000003d RSI: 0000000000000000 RDI: 00000000000001e8
RBP: ff110000041ac680 R08: 0000000000000001 R09: 0000000000000001
R10: 0000000000000000 R11: 0000000000000001 R12: 0000000000000000
R13: 00000000000001e8 R14: 0000000000000000 R15: 0000000000000000
FS:  0000000000000000(0000) GS:ff1100006a280000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f08e8070000 CR3: 00000000089ea002 CR4: 0000000000771ef0
PKRU: 55555554
----------------
Code disassembly (best guess):
   0: 08 84 d2 0f 85 25 15 or     %al,0x1525850f(%rdx,%rdx,8)
   7: 00 00                 add    %al,(%rax)
   9: 44 8b 1d ca de 54 0c mov    0xc54deca(%rip),%r11d        # 0xc54deda
  10: 45 85 db             test   %r11d,%r11d
  13: 0f 84 58 0f 00 00     je     0xf71
  19: 48 b8 00 00 00 00 00 movabs $0xdffffc0000000000,%rax
  20: fc ff df
  23: 4c 89 ea             mov    %r13,%rdx
  26: 48 c1 ea 03           shr    $0x3,%rdx
* 2a: 80 3c 02 00           cmpb   $0x0,(%rdx,%rax,1) <-- trapping instruction
  2e: 0f 85 0c 36 00 00     jne    0x3640
  34: 49 8b 45 00           mov    0x0(%r13),%rax
  38: 48 3d 80 81 46 99     cmp    $0xffffffff99468180,%rax
  3e: 0f                   .byte 0xf
  3f: 84                   .byte 0x84

---------------
thanks,
Kun Hu

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
