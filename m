Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E77F9DEB28
	for <lists+jfs-discussion@lfdr.de>; Fri, 29 Nov 2024 17:37:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tH3zE-0002I3-Dl;
	Fri, 29 Nov 2024 16:36:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3MvtIZwkbAI09FG1r22v8r66zu.x55x2vB9v8t54Av4A.t53@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1tGnqC-0005bQ-D4 for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Nov 2024 23:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+iHQH29qnDNor/d3TsJ7a0m8YPCrMihPxJ1z2DF4/m0=; b=Hmgw7F6ijohLODqdO+w5MzgMc1
 Pvryadqi+vG7c7hr4cbW7MhtePlfhgNbT5rL8d64PYdG8YQZBkw1GdLTK0D3clvVfSjuLTk01TRfP
 DK8z3vXEYE8KREtJODdas6yBHwbW7CvEydYbQM002GgXbjHZ5xyt28pwIqRRxZxCdjUI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+iHQH29qnDNor/d3TsJ7a0m8YPCrMihPxJ1z2DF4/m0=; b=b
 j+Xz1wmntBpdO9x+JV2mPiYQcBh/pcC1llhX7+aUvE+6/cuz3fyjQNAfJGmCVAk04gCa32rKIyxRa
 3BhTytMbOjfOgkCBc5pJ7jVr1Y6CoDUTlJpFttoNZT0QRRbRGLky2mHRnWv9iMrYD1OBFUoTPM5W4
 69PNk7CUrqO+Ymmc=;
Received: from mail-io1-f70.google.com ([209.85.166.70])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tGnqC-0006IK-CA for jfs-discussion@lists.sourceforge.net;
 Thu, 28 Nov 2024 23:22:33 +0000
Received: by mail-io1-f70.google.com with SMTP id
 ca18e2360f4ac-83e5dc9f6a4so180058139f.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 28 Nov 2024 15:22:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732836146; x=1733440946;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+iHQH29qnDNor/d3TsJ7a0m8YPCrMihPxJ1z2DF4/m0=;
 b=DPNXj6ZLfHYNwlYiQs6rvIFTjBssFGN27OC+aW0bv0YPR1xSlfu/jTWiMOv2so/phE
 fXj+7n9So8Vh6z0Of2SxMbfjHMULIqhrs9WbZolRwNdCfvfgD/fv/B7BKLxbje5NkmSN
 D7Sgh5uU6G3KYdiy9gW4FteYD2lv1jge+oHWXOuIz7Ez2zTna/vQM1k91CHQXdWO92V6
 IaSyQy6egZwrrzS9w1+6IObjFw3eq0LNnP4VMY1CGGyFd0RCs6pmYVzPchigDmPw0VO8
 6PIebnxaZsukhPNMctSGTTCDnCYfkiEALhJrdodgf3gkVW9ur0q9bRoH0EQyuo/rz1zK
 WViA==
X-Gm-Message-State: AOJu0YzvRUFe7cRxMC8HZgBKkTKWwx9KfPda6u5lySpzJB8FxMSQySZm
 4z8fkRlK6zNlQ9Harolx358o2o2cruMDjfRE8BxnqAc7LjTnHRTA8uLQstIhe76O5s0hhP6Pz+e
 FIhZstunuKDDLDjH0254q7bj4EP6sS9tgRUJ/roh+9/wATH8B/cZ5Vxw=
X-Google-Smtp-Source: AGHT+IFA18niwwKr3q3fR199YkYJekpfqZSsBiBHpSLvQHodwdY6CjbShbhM++ML1UTbUGGQPR1KPLWnPs3s/1dYLaYVScRACvDk
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1c46:b0:3a7:cf61:ded7 with SMTP id
 e9e14a558f8ab-3a7cf61e05cmr33336795ab.10.1732836146663; Thu, 28 Nov 2024
 15:22:26 -0800 (PST)
Date: Thu, 28 Nov 2024 15:22:26 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <6748fb32.050a0220.253251.0098.GAE@google.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 9f16d5e6f220
 Merge tag 'for-linus' of git://git.kernel.org.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=139a59c0580000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (-0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.70 listed in bl.score.senderscore.com]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.9 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.70 listed in wl.mailspike.net]
X-Headers-End: 1tGnqC-0006IK-CA
X-Mailman-Approved-At: Fri, 29 Nov 2024 16:36:54 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dtSplitRoot (2)
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
From: syzbot via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: syzbot <syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    9f16d5e6f220 Merge tag 'for-linus' of git://git.kernel.org..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=139a59c0580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=e92fc420ca55fe33
dashboard link: https://syzkaller.appspot.com/bug?extid=99491d74a9931659cf48
compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14fcc778580000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=179a59c0580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/c9f905470542/disk-9f16d5e6.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/5b4c9cc530ec/vmlinux-9f16d5e6.xz
kernel image: https://storage.googleapis.com/syzbot-assets/e0f262e4c35e/bzImage-9f16d5e6.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/e27e1a7c25e2/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+99491d74a9931659cf48@syzkaller.appspotmail.com

 ... Log Wrap ... Log Wrap ... Log Wrap ...
find_entry called with index >= next_index
------------[ cut here ]------------
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1997:37
index -128 is out of range for type 'struct dtslot[128]'
CPU: 1 UID: 0 PID: 5842 Comm: syz-executor268 Not tainted 6.12.0-syzkaller-09073-g9f16d5e6f220 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
 ubsan_epilogue lib/ubsan.c:231 [inline]
 __ubsan_handle_out_of_bounds+0x121/0x150 lib/ubsan.c:429
 dtSplitRoot+0xc9c/0x1930 fs/jfs/jfs_dtree.c:1997
 dtSplitUp fs/jfs/jfs_dtree.c:992 [inline]
 dtInsert+0x12cd/0x6c10 fs/jfs/jfs_dtree.c:870
 jfs_symlink+0x827/0x10f0 fs/jfs/namei.c:1020
 vfs_symlink+0x137/0x2e0 fs/namei.c:4669
 do_symlinkat+0x222/0x3a0 fs/namei.c:4695
 __do_sys_symlink fs/namei.c:4716 [inline]
 __se_sys_symlink fs/namei.c:4714 [inline]
 __x64_sys_symlink+0x7a/0x90 fs/namei.c:4714
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fb144f8c6f9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 61 17 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffc1536c068 EFLAGS: 00000246 ORIG_RAX: 0000000000000058
RAX: ffffffffffffffda RBX: 00007ffc1536c248 RCX: 00007fb144f8c6f9
RDX: 00007fb144f8b791 RSI: 0000000020000180 RDI: 0000000020000700
RBP: 00007fb145005610 R08: 000000000000620d R09: 0000000000000000
R10: 00007ffc1536bf30 R11: 0000000000000246 R12: 0000000000000001
R13: 00007ffc1536c238 R14: 0000000000000001 R15: 0000000000000001
 </TASK>
---[ end trace ]---


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
