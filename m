Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1897A028B7
	for <lists+jfs-discussion@lfdr.de>; Mon,  6 Jan 2025 16:00:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tUoa4-0001sS-TM;
	Mon, 06 Jan 2025 14:59:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <huk23@m.fudan.edu.cn>) id 1tUiaV-0002j5-7y
 for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Jan 2025 08:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Cc:Date:Message-Id:Subject:Mime-Version:
 Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mhoD3Yk1bo6pG2O5ic1AvY0wgbm5V0pm/HUHV5fCV9k=; b=YA6imXt2Tjg7cRwTp20XkHqEHQ
 7Y0IQRprDKbcjbJN29GgUfeNY2RT8WEKQld/nraYSJIqYY3+rKizczZc0ESkbq228mdxMeIQeWhOH
 FGuytuk6tF+WNzjoqzru2IkBB+Hrr6IWgZALC9rXKiW92rkMhtDvI0ikI+VMBxCZSyGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Cc:Date:Message-Id:Subject:Mime-Version:Content-Transfer-Encoding:
 Content-Type:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mhoD3Yk1bo6pG2O5ic1AvY0wgbm5V0pm/HUHV5fCV9k=; b=e
 Vjz5io2O9AhAXPmkLNihUDKGP7CzHRHIHc348Wl9n/9NO7Wq3rH3sUUZjmQc5wNMiadg0yGGAyZk4
 lez1HQbB4Vo1VqYzerIcZY9vXVX3nS+rGgz7+aJ+zM/6tAemgp2Yu9gGX839ieadLFvpc4w0U7pRY
 YkMJ4jH3ZBqCZnwY=;
Received: from bg5.exmail.qq.com ([43.154.155.102])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tUiaR-0007Il-2B for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Jan 2025 08:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=m.fudan.edu.cn;
 s=sorc2401; t=1736152498;
 bh=mhoD3Yk1bo6pG2O5ic1AvY0wgbm5V0pm/HUHV5fCV9k=;
 h=From:Mime-Version:Subject:Message-Id:Date:To;
 b=XoaT+fhvkbl/BPWkWJDqMj4zCG9DBkyefAQC/cGPy84lwO6qYnOxT0Y5KpMPmZdXc
 civHYJTlszDEDWhdk3khlqlTXVv3+J3xY+ub8fqRzCI4uRNGvsa5yKXY8lPhoEFYnP
 jBk61r64601l/kIL285+gUyb4+5B8X9wNfeql0vY=
X-QQ-mid: bizesmtpip4t1736152494tve6x10
X-QQ-Originating-IP: XjN2hXeYlEZosRzbFPWuEgnJ9R6xOGOcbFqs1jEj9ms=
Received: from smtpclient.apple ( [localhost]) by bizesmtp.qq.com (ESMTP) with 
 id ; Mon, 06 Jan 2025 16:34:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13419346330968759871
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3818.100.11.1.3\))
Message-Id: <6ABF141E-0A21-44C4-99BE-97E8B674BA61@m.fudan.edu.cn>
Date: Mon, 6 Jan 2025 16:34:42 +0800
To: shaggy@kernel.org
X-Mailer: Apple Mail (2.3818.100.11.1.3)
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:m.fudan.edu.cn:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MSPYRlt2rscUbR7MU7U5x5CrSlVAwTWz6wfRSzDHEfdMXy7NjuJ/qMLN
 QfaN0RRkiXQu3TiHotTDCuBLs+eVGyxo6WyQjSa0Jti4VhhD4jrVx4dJgZ0pTdEt3EJxAEt
 Cp3zX8F+KxUOtfP4LMwtA+/kS1zfjtGEbmvnB0xoq7Vy+7SSlXlFZ8z1ro8CFaO+rmm4D9A
 tVjvPNiYq93oIUDD+YrdXzadGtjcrQvLams8hzWoTu0Q3UjUluFwku08S+c6U2U7lszID6p
 8RD9FGvQmEssB4RPLbmtbP3JNXHcsZVfXHYR8vDU5acJFHdVT01LlBw/K1vM8PJjMolfOZd
 t/OAh45f5ll0NuK8gFOqIPcO0Pm5pGU2DgJrHWErSryI6bdbhsx9+pMJsrjX6dAzNDxv0fI
 Wi8lbdpUQuUs2ZV7/ZVp2dnPMmJRqJiJdVFfuynSOypzbcasjDDobBW11OCRqC86Dqlp0w/
 p4Wb2l3mOWKecGQFR1BzKpSD/QUh5zlexk8Y7eeG1mnENq2Pt8viMGwUCWtdjZDD6N052aJ
 OMfbRsYTUyv8QvU9S2UGYXLyO6vQEqLpUwuHmZv5IJUy5C7LNj0MxbKN3oHQeuzAjj3ckfz
 VMtLd/ShnKesKuPn8Ly2RLhKmmWTEb9fyVYbpl61JEN35Ku7qZyJpn1b/Lg0VWgsCYMtp7v
 Qm8KXrxbEl2e7RvfA9ee0huWNCOMpWOJuB2k8/0rb1rslrtJL5nb/LKU/Jqqhiy2mU4XE5i
 TNAyRtBGbz/Lgf+Z/kaVLifKjaoxEQ8jgcB7ad+11A7sAw4nRcxWcqFIpZO+TDYPd70/BER
 0cVvfqmYE6aoylfWdGFSzNUEBXX5o0QoVHAW3s4kScRBrqBUGH5CO4XpMsBIsQI2NP90y27
 KvSVop697Z61UySYsmkFjB4yjl3NrawaSiohGM9pgi0JC3yb7ncVPgS8Ap0RsZOfAQAFdYH
 uL8kDUIO2sMCNot07YzXv99lO9ymEuHbNqknfarz4q7ZsWQ==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 When using our customized fuzzer tool to fuzz the latest
 Linux kernel, the following crash was triggered. HEAD commit:
 fc033cf25e612e840e545f8d5ad2edd6ba613ed5
 git tree: upstream Console output:
 https://drive.google.com/file/d/1k7kvyS8LJHx_MkBfaZWV6Of7j6PQGsXd/view?usp=sharing
 Kernel config: https://drive [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [43.154.155.102 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [43.154.155.102 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [43.154.155.102 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [43.154.155.102 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tUiaR-0007Il-2B
X-Mailman-Approved-At: Mon, 06 Jan 2025 14:59:47 +0000
Subject: [Jfs-discussion] Bug: read_mapping_page failed at jfs_txnmgr.c:2796
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
Console output: https://drive.google.com/file/d/1k7kvyS8LJHx_MkBfaZWV6Of7j6PQGsXd/view?usp=sharing
Kernel config: https://drive.google.com/file/d/1n2sLNg-YcIgZqhhQqyMPTDWM_N1Pqz73/view?usp=sharing
C reproducer: https://drive.google.com/file/d/1g7MyHtAGALWlNsf0w1Q1_rJ1oO5rAYHf/view?usp=sharing
Syzlang reproducer: https://drive.google.com/file/d/1pDpR1zKYOxELKDV-8BtsbWwSrsWzzfw2/view?usp=sharing


If you fix this issue, please add the following tag to the commit:
Reported-by: Kun Hu <huk23@m.fudan.edu.cn>, Jiaji Qin <jjtan24@m.fudan.edu.cn>

=======================================================
read_mapping_page failed!
BUG at fs/jfs/jfs_txnmgr.c:2796 assert(mp->nohomeok)
------------[ cut here ]------------
kernel BUG at fs/jfs/jfs_txnmgr.c:2796!
Oops: invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 1 UID: 0 PID: 427 Comm: syz-executor361 Not tainted 6.13.0-rc5 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
RIP: 0010:LogSyncRelease fs/jfs/jfs_txnmgr.c:2796 [inline]
RIP: 0010:txAbort+0x51e/0x570 fs/jfs/jfs_txnmgr.c:2621
Code: e9 96 fd ff ff e8 12 db c3 fe 48 c7 c1 40 16 5e a4 ba ec 0a 00 00 48 c7 c6 20 09 5e a4 48 c7 c7 60 09 5e a4 e8 d3 0e a4 fe 90 <0f> 0b e8 eb da c3 fe 48 c7 c1 80 16 5e a4 ba ed 0a 00 00 48 c7 c6
RSP: 0018:ffa0000003617500 EFLAGS: 00010282
RAX: 0000000000000034 RBX: dffffc0000000000 RCX: ffffffff9c09e8b9
RDX: 0000000000000000 RSI: ff1100000af44680 RDI: 0000000000000002
RBP: 0000000000000003 R08: fffffbfff4cb8800 R09: fff3fc00006c2e54
R10: fff3fc00006c2e53 R11: ffa000000361729f R12: 0000000000000000
R13: ffa0000000e72110 R14: ff1100000ae597c0 R15: ff1100000ae59868
FS:  000055556425f880(0000) GS:ff1100006a280000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fca85e616f8 CR3: 000000000d138002 CR4: 0000000000771ef0
PKRU: 55555554
Call Trace:
 <TASK>
 txCommit+0x214b/0x4720 fs/jfs/jfs_txnmgr.c:1354
 jfs_create+0x80a/0xb40 fs/jfs/namei.c:156
 lookup_open+0x10e2/0x14e0 fs/namei.c:3649
 open_last_lookups fs/namei.c:3748 [inline]
 path_openat+0xec9/0x2970 fs/namei.c:3984
 do_filp_open+0x1fa/0x2f0 fs/namei.c:4014
 do_sys_openat2+0x641/0x6e0 fs/open.c:1402
 do_sys_open+0xc7/0x150 fs/open.c:1417
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xc3/0x1d0 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7efc1d4c30bd
Code: c3 e8 17 2c 00 00 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc7f7448f8 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007efc1d4c30bd
RDX: 000000000000275a RSI: 0000000020000040 RDI: 00000000ffffff9c
RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000001
R10: 0000000000000000 R11: 0000000000000246 R12: 00007ffc7f74490c
R13: 00007ffc7f744910 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:LogSyncRelease fs/jfs/jfs_txnmgr.c:2796 [inline]
RIP: 0010:txAbort+0x51e/0x570 fs/jfs/jfs_txnmgr.c:2621
Code: e9 96 fd ff ff e8 12 db c3 fe 48 c7 c1 40 16 5e a4 ba ec 0a 00 00 48 c7 c6 20 09 5e a4 48 c7 c7 60 09 5e a4 e8 d3 0e a4 fe 90 <0f> 0b e8 eb da c3 fe 48 c7 c1 80 16 5e a4 ba ed 0a 00 00 48 c7 c6
RSP: 0018:ffa0000003617500 EFLAGS: 00010282
RAX: 0000000000000034 RBX: dffffc0000000000 RCX: ffffffff9c09e8b9
RDX: 0000000000000000 RSI: ff1100000af44680 RDI: 0000000000000002
RBP: 0000000000000003 R08: fffffbfff4cb8800 R09: fff3fc00006c2e54
R10: fff3fc00006c2e53 R11: ffa000000361729f R12: 0000000000000000
R13: ffa0000000e72110 R14: ff1100000ae597c0 R15: ff1100000ae59868
FS:  000055556425f880(0000) GS:ff1100006a280000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007fca85e616f8 CR3: 000000000d138002 CR4: 0000000000771ef0
PKRU: 55555554


---------------
thanks,
Kun Hu

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
