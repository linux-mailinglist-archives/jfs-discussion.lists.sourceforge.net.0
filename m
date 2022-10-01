Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CF35F1F2F
	for <lists+jfs-discussion@lfdr.de>; Sat,  1 Oct 2022 22:14:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oeis0-00083M-H1;
	Sat, 01 Oct 2022 20:13:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3d0U4YwkbAAQw23oeppivettmh.ksskpiywivgsrxirx.gsq@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1oecsE-000597-W5 for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SBHgUWbR1+/7nvdRfZnEndFDM+zr2q8uXqNsyXZzZW8=; b=jv7C6+FGoGtfL6W2RTY7xCKDSo
 RXZiaMts3+7lmTwPriO9N6LJknfQWZk3e92mVvzja4bqPD9uZcyqj91B0n4Cqnm+iOL4qbu/DkHoh
 wC+BTDV798m1ClFbRJDVuiMOPRKY+JZ7xyd8j8U0f2Vh2u7pdaydxaCH4YsiD8WnGLhg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:Date:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SBHgUWbR1+/7nvdRfZnEndFDM+zr2q8uXqNsyXZzZW8=; b=n
 VLwsw66vcqnIO/TpPTaLTVKZDAQaS5iYEQQ/+0BgYgFm+KaZGkFh8X0CM4S3eMhgZ64upgE8nkdac
 /abJsIyUPnAlRtkFBJu5G50HQ6oFSIDRykhdMxgfHOqipPNYLGC3l6b4CNiqyxMbyzGKPFAHhBIKy
 bzbsO8s9cocWo/Ak=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oecsH-008yAc-BF for jfs-discussion@lists.sourceforge.net;
 Sat, 01 Oct 2022 13:49:49 +0000
Received: by mail-il1-f197.google.com with SMTP id
 k6-20020a92c246000000b002f80993e780so5430015ilo.13
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 01 Oct 2022 06:49:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:date:mime-version:x-gm-message-state
 :from:to:cc:subject:date;
 bh=SBHgUWbR1+/7nvdRfZnEndFDM+zr2q8uXqNsyXZzZW8=;
 b=JOqzzExUOOZDAopxCe+Qr+IOBAIK9P28CoviR1yQ2Eqw9APLvc7LQu09S398b4Xmsv
 Iqy38Ede711/uieZK/lUeTlHYKiHHBALgtNNeAqOtAFiinD9XlJumQdr0Auaolen5eUC
 14o2hY8vVf4ILvv+VtEvH2aLaAVzm/zqd7i/SjCt+oqvb2g627fgu4o1VhTuDg4clgXd
 cMtFQSCjWA4ummuBkIwcnRk79l0FVH8KbAC63z5uAYbwYV3HemFSC7073dY47SdDUM2Z
 /IJCfSPiyXB5xA8xLSvR0+1Gi4BYlWicbuNdl5YiNv5f4VZsvfoYB+2Jk+3+wQBxxJYT
 Zmcg==
X-Gm-Message-State: ACrzQf0MimEyh0fQN0dFosQSPeh4wAnuasTsr49c6i0P1Vu9y9V2KsAt
 Jfi681tOkL00voY35FWDd3RNOIhPPPsebbXsEO9kHtSD3NRE
X-Google-Smtp-Source: AMsMyM5vR8D8NYPoMRpZh3N0zDvUTv8PAOrnbg8MZAY3skW7vorBtxO93ipwjqWbpTF00iiAU5Sb7RyFRSyCMOIZZsPUWIe4knda
MIME-Version: 1.0
X-Received: by 2002:a92:da4a:0:b0:2f8:fa94:9dae with SMTP id
 p10-20020a92da4a000000b002f8fa949daemr6160581ilq.80.1664632183800; Sat, 01
 Oct 2022 06:49:43 -0700 (PDT)
Date: Sat, 01 Oct 2022 06:49:43 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ff4a1505e9f961a2@google.com>
From: syzbot <syzbot+172bdd582e5d63486948@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello,
 syzbot found the following issue on: HEAD commit: 5a77386984b5
 Merge tag 'drm-fixes-2022-09-30-1' of git://a.. git tree: upstream
 console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=15c1e370880000 kernel config:
 https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
X-Headers-End: 1oecsH-008yAc-BF
X-Mailman-Approved-At: Sat, 01 Oct 2022 20:13:50 +0000
Subject: [Jfs-discussion] [syzbot] general protection fault in dtSplitUp
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

HEAD commit:    5a77386984b5 Merge tag 'drm-fixes-2022-09-30-1' of git://a..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=15c1e370880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=755695d26ad09807
dashboard link: https://syzkaller.appspot.com/bug?extid=172bdd582e5d63486948
compiler:       gcc (Debian 10.2.1-6) 10.2.1 20210110, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=13f2dc48880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1027d814880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/87931d29c9af/disk-5a773869.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/afb91893f060/vmlinux-5a773869.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+172bdd582e5d63486948@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
general protection fault, probably for non-canonical address 0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN
KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
CPU: 1 PID: 3612 Comm: syz-executor263 Not tainted 6.0.0-rc7-syzkaller-00162-g5a77386984b5 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
RIP: 0010:dtExtendPage fs/jfs/jfs_dtree.c:1661 [inline]
RIP: 0010:dtSplitUp+0x1528/0x5120 fs/jfs/jfs_dtree.c:1034
Code: c6 74 11 e8 3a 46 a1 fe 48 8b 44 24 20 49 8d 5e e8 48 89 18 e8 29 46 a1 fe 48 89 da 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 <80> 3c 02 00 0f 85 90 35 00 00 4c 8b 33 31 ff 4c 89 f6 e8 e1 42 a1
RSP: 0018:ffffc9000395f2c8 EFLAGS: 00010256
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff82dac1f7 RDI: 0000000000000003
RBP: 0000000000000000 R08: 0000000000000003 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: ffff888073ee333a R14: ffffc9000395f7f0 R15: ffff888073ee3270
FS:  00005555556d7300(0000) GS:ffff8880b9b00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005599fad45028 CR3: 000000001d4a7000 CR4: 0000000000350ee0
Call Trace:
 <TASK>
 dtInsert+0x82b/0xa10 fs/jfs/jfs_dtree.c:863
 jfs_create+0x5b7/0xac0 fs/jfs/namei.c:137
 lookup_open.isra.0+0xf05/0x12a0 fs/namei.c:3413
 open_last_lookups fs/namei.c:3481 [inline]
 path_openat+0x996/0x28f0 fs/namei.c:3688
 do_filp_open+0x1b6/0x400 fs/namei.c:3718
 do_sys_openat2+0x16d/0x4c0 fs/open.c:1313
 do_sys_open fs/open.c:1329 [inline]
 __do_sys_openat fs/open.c:1345 [inline]
 __se_sys_openat fs/open.c:1340 [inline]
 __x64_sys_openat+0x13f/0x1f0 fs/open.c:1340
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f1da668d019
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007fff79c19d48 EFLAGS: 00000246 ORIG_RAX: 0000000000000101
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f1da668d019
RDX: 0000000000161842 RSI: 000000002000c380 RDI: 00000000ffffff9c
RBP: 00007f1da664c7e0 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 0000000a00030083 R15: 0000000000000000
 </TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:dtExtendPage fs/jfs/jfs_dtree.c:1661 [inline]
RIP: 0010:dtSplitUp+0x1528/0x5120 fs/jfs/jfs_dtree.c:1034
Code: c6 74 11 e8 3a 46 a1 fe 48 8b 44 24 20 49 8d 5e e8 48 89 18 e8 29 46 a1 fe 48 89 da 48 b8 00 00 00 00 00 fc ff df 48 c1 ea 03 <80> 3c 02 00 0f 85 90 35 00 00 4c 8b 33 31 ff 4c 89 f6 e8 e1 42 a1
RSP: 0018:ffffc9000395f2c8 EFLAGS: 00010256
RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff82dac1f7 RDI: 0000000000000003
RBP: 0000000000000000 R08: 0000000000000003 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: ffff888073ee333a R14: ffffc9000395f7f0 R15: ffff888073ee3270
FS:  00005555556d7300(0000) GS:ffff8880b9a00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005584d071b470 CR3: 000000001d4a7000 CR4: 0000000000350ef0
----------------
Code disassembly (best guess), 1 bytes skipped:
   0:	74 11                	je     0x13
   2:	e8 3a 46 a1 fe       	callq  0xfea14641
   7:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
   c:	49 8d 5e e8          	lea    -0x18(%r14),%rbx
  10:	48 89 18             	mov    %rbx,(%rax)
  13:	e8 29 46 a1 fe       	callq  0xfea14641
  18:	48 89 da             	mov    %rbx,%rdx
  1b:	48 b8 00 00 00 00 00 	movabs $0xdffffc0000000000,%rax
  22:	fc ff df
  25:	48 c1 ea 03          	shr    $0x3,%rdx
* 29:	80 3c 02 00          	cmpb   $0x0,(%rdx,%rax,1) <-- trapping instruction
  2d:	0f 85 90 35 00 00    	jne    0x35c3
  33:	4c 8b 33             	mov    (%rbx),%r14
  36:	31 ff                	xor    %edi,%edi
  38:	4c 89 f6             	mov    %r14,%rsi
  3b:	e8                   	.byte 0xe8
  3c:	e1 42                	loope  0x80
  3e:	a1                   	.byte 0xa1


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
