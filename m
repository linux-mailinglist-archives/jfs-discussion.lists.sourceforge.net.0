Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC74E5F1F2E
	for <lists+jfs-discussion@lfdr.de>; Sat,  1 Oct 2022 22:14:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeirx-00082O-1R;
	Sat, 01 Oct 2022 20:13:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3ZUI4YwkbAOoeklWMXXQdMbbUP.SaaSXQgeQdOaZfQZf.OaY@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oecfZ-0004yG-SB for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVDZHY1FwdtfySEWL/MeOlaNQBKfkoDFaSYQFbe5uZg=; b=Xhx/sIDbOogaMV835vxjX55cRa
 LJgUbhq1rUEqZPB1VW1cvE5CGexesJXl+cLW3LFvcAwaeQ+GjMG/G7ih4i8yxxtOtO3x7U6rXGK6J
 bkibnauTMQSxAWmuUb7Dl3Yv65LYPUV0+a3dJC5dgO+MD6f5+1IdbqhZzWZ5eAEaEev4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hVDZHY1FwdtfySEWL/MeOlaNQBKfkoDFaSYQFbe5uZg=; b=E
 ig4OiIhip7LEzNJrInQCJO9b26W/Oe1bYQ4kURL7/hGjSjQqna2WGARPemK22u/SifS9zii2+fxrp
 AIV8kR3lJRwJzDXWurq4KQpgMWGkKUPo68PFfujpL7TaCpDcImSq7pm+uwd9N3Tt9FZ05eoFYyGQP
 y6Et2UrcadEEWXnc=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oecfb-008xZl-37 for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:36:44 +0000
Received: by mail-io1-f71.google.com with SMTP id
 v20-20020a6b5b14000000b0069fee36308eso4445088ioh.10
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Oct 2022 06:36:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=hVDZHY1FwdtfySEWL/MeOlaNQBKfkoDFaSYQFbe5uZg=;
 b=aaYf7lwhaaF2JQSsAyGmiMQW8qmUr2JVLFAfVLd4ukgQjrbpp96EcX7Rn1y/ozEZfl
 CbvJG9pf6gEV5IbvWF/02KudGs43PO0EJxx9vMt+zLzoc0mFXaENUGjxp7GYQBcYIuvP
 8HNkF5WE3XFCb5z6mujwcgptcpQ/fZWqAFNveJG9pmeksB2/5JbpY4oyMYHlMcXET9WT
 3qMr1sucp/EnSjWEwlL66r5Bf9TZqdvwXU/PVsd/PAxuwhCzMrRlush0B9TPOiaZxR5U
 TQlSNx1DtqWSvCviFbGayV2HMGvIzgyULNdA5UYzULQcHRFVGnG22YeUX5gB5kCVETC9
 bJcQ==
X-Gm-Message-State: ACrzQf0HiKrkXJA8OpxBk98kb2ZzsA0I1WxuDxkDaHm76amFiXFczGAO
 LHo4Y/M+zAWkVlqiRxUsrDG5pYTozrFpRAFDM/9ao62ni56h
X-Google-Smtp-Source: AMsMyM5YTvaiYCCdA0Tnck7ELhzF/KA3HchIBH7aBWN36mcZatLLiY1qwzCc1OS6H7YAq8vgnx+uWZ7lCGhBWeJNqfrsY++YpTWX
MIME-Version: 1.0
X-Received: by 2002:a6b:5f16:0:b0:69e:2e4e:b25c with SMTP id
 t22-20020a6b5f16000000b0069e2e4eb25cmr5770711iob.12.1664631397533; Sat, 01
 Oct 2022 06:36:37 -0700 (PDT)
Date: Sat, 01 Oct 2022 06:36:37 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000021d27005e9f9332c@google.com>
From: syzbot <syzbot+9a9e47d79d7201c7b73e@syzkaller.appspotmail.com>
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
 syzbot found the following issue on: HEAD commit: 49c13ed0316d
 Merge tag 'soc-fixes-6.0-rc7' of git://git.ke.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=146eade4880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
X-Headers-End: 1oecfb-008xZl-37
X-Mailman-Approved-At: Sat, 01 Oct 2022 20:13:51 +0000
Subject: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in dbUpdatePMap
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

HEAD commit:    49c13ed0316d Merge tag 'soc-fixes-6.0-rc7' of git://git.ke..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=146eade4880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=ba0d23aa7e1ffaf5
dashboard link: https://syzkaller.appspot.com/bug?extid=9a9e47d79d7201c7b73e
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=120912e0880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=124eb2e0880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/418654aab051/disk-49c13ed0.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/49c501fc7ae3/vmlinux-49c13ed0.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+9a9e47d79d7201c7b73e@syzkaller.appspotmail.com

================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:454:12
shift exponent 4096 is too large for 64-bit type 'long long'
CPU: 0 PID: 122 Comm: jfsCommit Not tainted 6.0.0-rc7-syzkaller-00068-g49c13ed0316d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 dbUpdatePMap+0xdf5/0xef0 fs/jfs/jfs_dmap.c:454
 txAllocPMap+0x581/0x6c0 fs/jfs/jfs_txnmgr.c:2420
 txUpdateMap+0x883/0xaa0 fs/jfs/jfs_txnmgr.c:2358
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x433/0xba0 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
================================================================================
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 122 Comm: jfsCommit Not tainted 6.0.0-rc7-syzkaller-00068-g49c13ed0316d #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 panic+0x2d6/0x715 kernel/panic.c:274
 ubsan_epilogue lib/ubsan.c:158 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3af/0x3b0 lib/ubsan.c:322
 dbUpdatePMap+0xdf5/0xef0 fs/jfs/jfs_dmap.c:454
 txAllocPMap+0x581/0x6c0 fs/jfs/jfs_txnmgr.c:2420
 txUpdateMap+0x883/0xaa0 fs/jfs/jfs_txnmgr.c:2358
 txLazyCommit fs/jfs/jfs_txnmgr.c:2659 [inline]
 jfs_lazycommit+0x433/0xba0 fs/jfs/jfs_txnmgr.c:2727
 kthread+0x266/0x300 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
 </TASK>
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
