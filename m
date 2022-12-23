Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51701655198
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Dec 2022 15:48:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1p8jLR-0003zI-GI;
	Fri, 23 Dec 2022 14:48:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3qIGlYwkbAGUVbcNDOOHUDSSLG.JRRJOHXVHUFRQWHQW.FRP@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1p8fDL-0005a8-QW for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Dec 2022 10:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kSw1HwKF/eWcNkkUwxqcpEhUNy2Y9H9WRREHpIRhyjw=; b=nGqNzICQTXPODltPINtiT0EMgR
 yH2LHqxvN/YWxVXhXemBaQvkG1TCmLh9bVBjU1wWpngGtI/zBPoUHFnnci/CNQnVs+IDjQPBj9gQ1
 h9TguW1PyyWnulnk9q1ZyaDZ3otaQAFqDj021rCyTadousUtRkQwubJTV7C08oU8IdV8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kSw1HwKF/eWcNkkUwxqcpEhUNy2Y9H9WRREHpIRhyjw=; b=l
 0VGRyAuz0t2C5q2S7Rs5ExHyFmiE9st1J+nMN4Kvkcpfq4zR9amwW+JFxlkNlei+8ZkRhSoVWLv62
 fj1JChu3jv9/vcK12PAWJneXYVTCyQVO3Ft+iYu8Amo0mbyq3UMDNdV+q27sPVxIpjkY+89LAmrq9
 lfbOv4Fa2/nNab9s=;
Received: from mail-io1-f71.google.com ([209.85.166.71])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p8fDJ-0090VV-Of for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Dec 2022 10:23:43 +0000
Received: by mail-io1-f71.google.com with SMTP id
 b77-20020a6bb250000000b006e4ec8b2364so1765041iof.20
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 23 Dec 2022 02:23:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kSw1HwKF/eWcNkkUwxqcpEhUNy2Y9H9WRREHpIRhyjw=;
 b=H6fSMauXdMHBpqcqG++n334rhzZfLwhusZonAEx9nE+SwQ8q3E3WfOyLJZSVto8JIv
 wtfzbLAY/BxyF750WOB43SjHhNT9cX8Vf1X0ymyfj5wT9lCnGgpOOK5s9gUDfF5axzyF
 lzI4PO5uHQb/PvkTKEvPYEaRhYZNYD6fVf4mIeQTmB4lE6VcGTmqRNVrcGVsRSFnU0We
 EtbxnUauyGUCT4FhWzeXbrVwI5BGf79nwmRglhhAxOpAwlEiaoC0B/MHacoLZuH1HxT0
 aD2uc7cTpilO9+EkKwZOvcL0DdH1LMqpsiWaWbtSZ9kTx6PVYamYJOz+GGKX+vq6kYI2
 VLSw==
X-Gm-Message-State: AFqh2krvqdIHFnoJbipuROJWnZudmAbcGL5PpzyUAxtcSD6z9uMxD1zJ
 zOY33NfK3uhWku5qSZF/FFkeDw6w6uGpDFQQ3OmAq/h+AdU7
X-Google-Smtp-Source: AMrXdXsq+eWgR/9KTn/obApYMnY7hOwtxY+UDnCsagU9f+UQ9yURO2H/YZnW57qEkyaAv8MDpd8ZMr+VnJJKY2lbi3kQDRBhOQoF
MIME-Version: 1.0
X-Received: by 2002:a5d:9587:0:b0:6e2:cbf3:9c9c with SMTP id
 a7-20020a5d9587000000b006e2cbf39c9cmr639610ioo.34.1671791016259; Fri, 23 Dec
 2022 02:23:36 -0800 (PST)
Date: Fri, 23 Dec 2022 02:23:36 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000a9b84f05f07c2d1f@google.com>
From: syzbot <syzbot+853a6f4dfa3cf37d3aea@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 mudongliangabcd@gmail.com, paskripkin@gmail.com, r33s3n6@gmail.com, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com, wuhoipok@gmail.com
X-Spam-Score: 3.1 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 0a924817d2ed
 Merge tag '6.2-rc-smb3-client-fixes-part2' of.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=161140ff880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (3.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.71 listed in list.dnswl.org]
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.71 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1p8fDJ-0090VV-Of
X-Mailman-Approved-At: Fri, 23 Dec 2022 14:48:10 +0000
Subject: [Jfs-discussion] [syzbot] [jfs?] UBSAN: array-index-out-of-bounds
 in dbAllocDmapLev
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

HEAD commit:    0a924817d2ed Merge tag '6.2-rc-smb3-client-fixes-part2' of..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=161140ff880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4e2d7bfa2d6d5a76
dashboard link: https://syzkaller.appspot.com/bug?extid=853a6f4dfa3cf37d3aea
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14eedba0480000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=13760874480000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/b0959a409a79/disk-0a924817.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/388daa76797b/vmlinux-0a924817.xz
kernel image: https://storage.googleapis.com/syzbot-assets/b9d2d406c075/bzImage-0a924817.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/c5bcb129d7ea/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+853a6f4dfa3cf37d3aea@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:1964:6
index -84 is out of range for type 's8 [341]'
CPU: 1 PID: 5074 Comm: syz-executor352 Not tainted 6.1.0-syzkaller-14321-g0a924817d2ed #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x290 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xe0/0x110 lib/ubsan.c:282
 dbAllocDmapLev+0x3c6/0x420 fs/jfs/jfs_dmap.c:1964
 dbAllocCtl+0x113/0x970 fs/jfs/jfs_dmap.c:1808
 dbAllocAG+0x28b/0x1100 fs/jfs/jfs_dmap.c:1349
 dbAlloc+0x661/0xc90 fs/jfs/jfs_dmap.c:873
 dtSplitUp fs/jfs/jfs_dtree.c:974 [inline]
 dtInsert+0xc0e/0x6b80 fs/jfs/jfs_dtree.c:863
 jfs_create+0x736/0xb10 fs/jfs/namei.c:137
 lookup_open fs/namei.c:3413 [inline]
 open_last_lookups fs/namei.c:3481 [inline]
 path_openat+0x12ac/0x2dd0 fs/namei.c:3711
 do_filp_open+0x264/0x4f0 fs/namei.c:3741
 do_sys_openat2+0x124/0x4e0 fs/open.c:1310
 do_sys_open fs/open.c:1326 [inline]
 __do_sys_openat fs/open.c:1342 [inline]
 __se_sys_openat fs/open.c:1337 [inline]
 __x64_sys_openat+0x243/0x290 fs/open.c:1337
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fe62a3507c9
Code: 28 00 00 00 75 05 48 83 c4 28 c3 e8 51 14 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffe095987c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fe62a3507c9
RDX: 000000000000275a RSI: 0000000020000040 RDI: 00000000ffffff9c
RBP: 00007fe62a310060 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fe62a3100f0
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
 </TASK>
================================================================================


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
