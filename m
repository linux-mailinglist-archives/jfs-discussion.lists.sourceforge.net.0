Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE84F60A9B5
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Oct 2022 15:24:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1omxQa-0004Om-OF;
	Mon, 24 Oct 2022 13:23:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3BDlWYwkbAO8jpqbRccViRggZU.XffXcVljViTfekVek.Tfd@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1omrVr-0000EQ-1e for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 07:04:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=guQBpKVE1fSZKSKrsCy/ErG3GRc+o9cC6FZBdBYutjA=; b=kK0Ar0I3JY8GumgnEFBaxzli6l
 K4Fz9OZlt7N8HOkAAW/R/OsyTqFEs+KuAWtuYQxF+DSBdomBgilhn9zy4yvTyAlzs3xprrrhgo/gm
 PtiK49vPmaxdqxECxjJzH+/faxvhVrn+m7PsA57IMe4Z6Ny1RgRWdm2O0s8DKhEiRzv4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=guQBpKVE1fSZKSKrsCy/ErG3GRc+o9cC6FZBdBYutjA=; b=J
 xa9DBruh0tEmXnf/5M4EOF41vLKexh7DAzSntAelBojIBb4hV07z+/6mwIX/oR5W0kWt/c3zKcsi/
 dcw4CHID3nHCR75AnDHJE97pfCXwChNEWrafJmt4h+MjFQOFHbLs41+ApBpc4xjfBhLYBgIxaHUFO
 DCwKwyChE6W4RhhM=;
Received: from mail-il1-f200.google.com ([209.85.166.200])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1omrVq-00FSq9-76 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 07:04:42 +0000
Received: by mail-il1-f200.google.com with SMTP id
 u2-20020a056e021a4200b002f9ecfa353cso8330871ilv.20
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 24 Oct 2022 00:04:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=guQBpKVE1fSZKSKrsCy/ErG3GRc+o9cC6FZBdBYutjA=;
 b=BWF8pVAaKneXFWq7w3X5M0DCRRAbkylqK5a24mZWMWZ7kfiU7FiKIK0RahrEgSuWn9
 k/a1S6ZHmE777ugDS+1tx+1v66W+X8x8lSyNXaOknuwJXw42PqzAwWUIk9fIemkUgsDQ
 8+Bv6zVupu/F0D0Wk4woXqEIVm51xJ5/goq0wMFTx8GqC1saQsLSDAF+t0fqqrkvjNC6
 8kF5JX23Lcei2TcrIY2KLxdQ0epgmse6qEbYD2Omfy3BEFgFqly0a/WiYO1jcHfxKcKg
 kprpIGEU14dRxwQmsA1zCglaRbYMQZ93bRyLPe1eb2ANXvNr4gGqMQjLHED07xZyP+/c
 YlVQ==
X-Gm-Message-State: ACrzQf1+fA678W2M/lLrZRqo4bNPUXevjcruSN8hb+fuK86SFyYPy+rN
 G2cGW+OpUfwphUjhIL8Z6EMQr8tP0rKmG5GlT34PfFdcZT0U
X-Google-Smtp-Source: AMsMyM7EwbZCuDoIyQG4Ron635vfyqLAh7wG4Ie5hHRvFbDKNZBBIgKkEd/stYNePJN3ZWUSnODwwzrXBHuWCgDWL25KyUnfc5rL
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:1487:b0:2fa:a78c:1d8b with SMTP id
 n7-20020a056e02148700b002faa78c1d8bmr21651995ilk.264.1666595076614; Mon, 24
 Oct 2022 00:04:36 -0700 (PDT)
Date: Mon, 24 Oct 2022 00:04:36 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000086b13105ebc267f8@google.com>
From: syzbot <syzbot+cfb3836ee00e264151bc@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: d47136c28015
 Merge tag 'hwmon-for-v6.1-rc2' of git://git.k.. git tree: upstream console
 output: https://syzkaller.appspot.com/x/log.txt?x=1564d752880000 kernel
 config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.200 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.200 listed in list.dnswl.org]
X-Headers-End: 1omrVq-00FSq9-76
X-Mailman-Approved-At: Mon, 24 Oct 2022 13:23:38 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in diAllocBit
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hello,

syzbot found the following issue on:

HEAD commit:    d47136c28015 Merge tag 'hwmon-for-v6.1-rc2' of git://git.k..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=1564d752880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=afc317c0f52ce670
dashboard link: https://syzkaller.appspot.com/bug?extid=cfb3836ee00e264151bc
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/93767c1bd2e7/disk-d47136c2.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/c8bee7ab7d48/vmlinux-d47136c2.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+cfb3836ee00e264151bc@syzkaller.appspotmail.com

UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:2039:9
shift exponent 3328 is too large for 64-bit type '__u64' (aka 'unsigned long long')
CPU: 0 PID: 19191 Comm: syz-executor.2 Not tainted 6.1.0-rc1-syzkaller-00427-gd47136c28015 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/11/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 diAllocBit+0x9d7/0xd30 fs/jfs/jfs_imap.c:2039
 diAllocIno fs/jfs/jfs_imap.c:1837 [inline]
 diAllocAG+0x1418/0x1f80 fs/jfs/jfs_imap.c:1669
 diAlloc+0x3dd/0x1700 fs/jfs/jfs_imap.c:1583
 ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x141/0xb00 fs/jfs/namei.c:225
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4035
 do_mkdirat+0x279/0x550 fs/namei.c:4060
 __do_sys_mkdir fs/namei.c:4080 [inline]
 __se_sys_mkdir fs/namei.c:4078 [inline]
 __x64_sys_mkdir+0x6a/0x80 fs/namei.c:4078
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f7246c8b5f9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f7247dad168 EFLAGS: 00000246 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 00007f7246dac050 RCX: 00007f7246c8b5f9
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000020007040
RBP: 00007f7246ce67b0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffc5fe2b60f R14: 00007f7247dad300 R15: 0000000000022000
 </TASK>
================================================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
