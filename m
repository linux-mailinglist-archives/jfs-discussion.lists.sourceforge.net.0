Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC5E630F33
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Nov 2022 15:46:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1owP6m-00008q-0e;
	Sat, 19 Nov 2022 14:46:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <3vaJ4YwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com>)
 id 1owKDY-0000n3-5G for jfs-discussion@lists.sourceforge.net;
 Sat, 19 Nov 2022 09:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:From:Subject:Message-ID:In-Reply-To
 :Date:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nzgvcnu4RehLlaIos2qw74V1Rm/ANtY+0e1pgohKtVc=; b=WX4Op5XNuh+Kz3gToihyzjMeYK
 IOMWQKmoYnOnGyisRdF9IowQLQr64X3kiPNHCpGC7DnpdWsqqklOlfrgrDav6cYgwf9hf61Etg0Ju
 7XT+LeP31WvjcqAs+j+aZr2ohNQsDpmxJj9y1OkKJPyTI1ZwpUQhC1j/o2DtmzQivP2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:From:Subject:Message-ID:In-Reply-To:Date:MIME-Version:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nzgvcnu4RehLlaIos2qw74V1Rm/ANtY+0e1pgohKtVc=; b=V
 3Z/jCL1yMLtOWTJnycLvrgCwAcHP9c19Xex91CXGByQ+8L4aUx7hoyUE/xSJDv4dS2q/9XpSFVIUz
 ehJKPhijAarxZQGGFu+a6uavpE8xdp2MlLzkgDtVSbWCbFrmmgJt3wgzihP2qBfVlALes4WLeVBv6
 7xzyPVKRB3uY24Us=;
Received: from mail-il1-f197.google.com ([209.85.166.197])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1owKDT-00DnPh-7w for jfs-discussion@lists.sourceforge.net;
 Sat, 19 Nov 2022 09:32:51 +0000
Received: by mail-il1-f197.google.com with SMTP id
 c4-20020a056e020bc400b0030098df879dso4841316ilu.6
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 19 Nov 2022 01:32:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:from:subject:message-id:in-reply-to:date:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nzgvcnu4RehLlaIos2qw74V1Rm/ANtY+0e1pgohKtVc=;
 b=f/fksbzNp1abZPFZrs70sI+zRJqJBherCZlcuowgiZcTgQVAR0pncs5fv0TmM6UJpo
 c5fYhmUnl/gV9GJl6DpdKmezoMPFqz7vjLL+27j9t6dX5VrgEmQ0NiNMztZUOVGDAhLp
 Bt1Z8Fes6fq35u5n9pj+wH/MW+EuOsdzeZdKLFZSuDsi+Tld93zS50eFJkFjk+0eOEPO
 2F0Kq2lYkoD1/RCr+4kSoWcTgqXKYFEShiHn3zz4pJLxXwcZhxoWfBT4B+mFIFgeAREJ
 d1zzYg3L68kRlfK0o5PL7SLpXIquU8LmiwkkSj1gM4vYrgrCY8CjcQYFrhNRxlZ+v9Xz
 HWYQ==
X-Gm-Message-State: ANoB5pmzrwpw2rH4g94VAG0QHRWlfop1N4ZxL41QH2cOfkALzlQ6BJ4c
 BVkJ6stQkEW8kdJeQ2BKKGmYCu7/lV9saiYtmV0hU9kOewiC
X-Google-Smtp-Source: AA0mqf7M34HLaReQ7iZxJI6lr+tDpY4FARUliJwgjpFrVOM2hnrKidFbnLhng2IytDkaqRhYMOFvq3JOwb26lfsuXNkpIvKv5POv
MIME-Version: 1.0
X-Received: by 2002:a92:d90c:0:b0:2fc:b8b7:484e with SMTP id
 s12-20020a92d90c000000b002fcb8b7484emr4772923iln.122.1668850365654; Sat, 19
 Nov 2022 01:32:45 -0800 (PST)
Date: Sat, 19 Nov 2022 01:32:45 -0800
In-Reply-To: <00000000000009854205ebd33650@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000003a702c05edcf81ef@google.com>
From: syzbot <syzbot+3424c9550a49659f1704@syzkaller.appspotmail.com>
To: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org, 
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  syzbot has found a reproducer for the following issue on:
 HEAD commit: ab290eaddc4c Merge tag 's390-6.1-5' of git://git.kernel.or..
 git tree: upstream console+strace:
 https://syzkaller.appspot.com/x/log.txt?x=1006e331880000
 kernel config: https://syzkaller.a [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.197 listed in list.dnswl.org]
 0.3 FROM_LOCAL_HEX         From: localpart has long hexadecimal sequence
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: googleapis.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.197 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1owKDT-00DnPh-7w
X-Mailman-Approved-At: Sat, 19 Nov 2022 14:46:12 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in
 jfs_statfs
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

syzbot has found a reproducer for the following issue on:

HEAD commit:    ab290eaddc4c Merge tag 's390-6.1-5' of git://git.kernel.or..
git tree:       upstream
console+strace: https://syzkaller.appspot.com/x/log.txt?x=1006e331880000
kernel config:  https://syzkaller.appspot.com/x/.config?x=6f9416d398342c83
dashboard link: https://syzkaller.appspot.com/bug?extid=3424c9550a49659f1704
compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15a0ec6e880000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=105d8d45880000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/a3af44347ffd/disk-ab290ead.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/4331229e5ff9/vmlinux-ab290ead.xz
kernel image: https://storage.googleapis.com/syzbot-assets/b0c12f02efc3/bzImage-ab290ead.xz
mounted in repro: https://storage.googleapis.com/syzbot-assets/6e5bfebe2bc7/mount_0.gz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+3424c9550a49659f1704@syzkaller.appspotmail.com

loop0: detected capacity change from 0 to 32768
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/super.c:140:14
shift exponent 1749508610 is too large for 64-bit type 's64' (aka 'long long')
CPU: 0 PID: 3634 Comm: syz-executor222 Not tainted 6.1.0-rc5-syzkaller-00241-gab290eaddc4c #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/26/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
 jfs_statfs+0x503/0x510 fs/jfs/super.c:140
 statfs_by_dentry fs/statfs.c:66 [inline]
 vfs_statfs+0x136/0x310 fs/statfs.c:90
 user_statfs fs/statfs.c:105 [inline]
 __do_sys_statfs fs/statfs.c:195 [inline]
 __se_sys_statfs fs/statfs.c:192 [inline]
 __x64_sys_statfs+0x120/0x230 fs/statfs.c:192
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f0501ab8f79
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffffd945308 EFLAGS: 00000246 ORIG_RAX: 0000000000000089
RAX: ffffffffffffffda RBX: 0030656c69662f2e RCX: 00007f0501ab8f79
RDX: 00007f0501a77473 RSI: 0000000000000000 RDI: 0000000020004c80
RBP: 00007f0501a78740 R08: 0000555555fe32c0 R09: 0000000000000000
R10: 00007ffffd9451d0 R11: 0000000000000246 R12: 0a0a0a0a0a0a0a0a
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
 </TASK>
================================================================================



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
