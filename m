Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B99661386B
	for <lists+jfs-discussion@lfdr.de>; Mon, 31 Oct 2022 14:52:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1opVDI-00046f-G3;
	Mon, 31 Oct 2022 13:52:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1opKkA-0006oi-Fc
 for jfs-discussion@lists.sourceforge.net;
 Mon, 31 Oct 2022 02:41:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XqvOP23v9VU4lIYlxWoKfNiHpfHj592K4E9OcpW4ARM=; b=UBWiiu+IlWFgwNaSXEn8a8Pyk6
 IcZ6z20z8jVcxSmfe0pr1qSK06sHyS8r7jBHuSCDORabqE8MTAIhiozsKcND8XQkDAIz0XdxMcYQV
 4Ggbfz4cNca1jTpD0uCnJiIuFHJiTooE7jD+sa1cJ6EtokEKxxjOCzkIcHRPv6tVu7Hs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XqvOP23v9VU4lIYlxWoKfNiHpfHj592K4E9OcpW4ARM=; b=DGZ6xeWrIIAVncTpjnFcQDy8Cc
 y2Od7O0WM/YEeqnljM+ikd5kjY6BSJyyv2+75je8I6atRlFE0eki6+bdeej+swPoLScfiQH/O2zRm
 83QzCORTW6om14p5i0IYDyPDc9Ckq5057X01OLa8Vw5U7BYSSQoooGStPH4hNjFNCmeQ=;
Received: from mx.treblig.org ([46.43.15.161])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1opKk6-006LYH-Id for jfs-discussion@lists.sourceforge.net;
 Mon, 31 Oct 2022 02:41:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=XqvOP23v9VU4lIYlxWoKfNiHpfHj592K4E9OcpW4ARM=; b=NOHyu7UiwEzxeUdl9nT23yE8k2
 OdHRdjfG+Ok8k2c34eDKx9e+uXhWs0MMpOBIZ9VjDDq4rY5CuGxve/cUmtS3eIhIEwKHBnnmWnDGj
 veEspM/ncTZHrVddoHKscDQ5bGbDUnnsuL8OAPH/u6GC8HCISSQL09lwy+ZRWWZIjlm0Y0WWgMPou
 jOBqr18GLySLbyQjnt5P++qgLDyGiaQGJREJy9rwEK8RvX9Hz1dMH8QRGJ68E4hMLlmrNLl1qfACP
 Rc+xTjWWr2BhIS1H0YpsqrYAn71aCU/RkyJtEU+UX8VrwF/uh/2rxVapcwWzj4hiJGtee0HXaXFz8
 sHIrzJDg==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1opKjx-00CIUC-5s; Mon, 31 Oct 2022 02:41:29 +0000
Date: Mon, 31 Oct 2022 02:41:29 +0000
From: "Dr. David Alan Gilbert" <dave@treblig.org>
To: syzbot <syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com>
Message-ID: <Y1812bdYPcOn4lll@gallifrey>
References: <000000000000427b1a05e997130a@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000427b1a05e997130a@google.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-12-amd64 (x86_64)
X-Uptime: 02:37:53 up 233 days, 13:03,  1 user,  load average: 0.00, 0.01, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: * syzbot
 (syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com)
 wrote: > Hello, > > syzbot found the following issue on: > > HEAD commit:
 3db61221f4e8 Merge tag 'io_uring-6.0-2022-09-23' of git://.. [...] 
 Content analysis details:   (1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.0 GB_FAKE_RF_SHORT       Fake reply or forward with url shortener
X-Headers-End: 1opKk6-006LYH-Id
X-Mailman-Approved-At: Mon, 31 Oct 2022 13:52:26 +0000
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in diAlloc
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* syzbot (syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com) wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    3db61221f4e8 Merge tag 'io_uring-6.0-2022-09-23' of git://..
> git tree:       upstream
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=1017fb54880000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=c221af36f6d1d811
> dashboard link: https://syzkaller.appspot.com/bug?extid=9cd47a3d9ebd6776eb03
> compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12bbd0d4880000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=153195ef080000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com
> 
> loop0: detected capacity change from 0 to 66104
> ================================================================================
> UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:1357:9
> shift exponent 218103809 is too large for 64-bit type 'u64' (aka 'unsigned long long')

My reading of this is that jfs does ~no sanity checking of the
structure read from disk when mounting;

int dbMount(struct inode *ipbmap)
...
  bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);

The line that triggers it is:
  agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));

which is:
121:#define BLKTOAG(b,sbi)  ((b) >> ((sbi)->bmap->db_agl2size))

so if the mount is given garbage, then that's what it'll shift by.

this is probably the least of the worries of an unchecked disk structure.

Dave


> CPU: 1 PID: 3607 Comm: syz-executor161 Not tainted 6.0.0-rc6-syzkaller-00291-g3db61221f4e8 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:88 [inline]
>  dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
>  ubsan_epilogue lib/ubsan.c:151 [inline]
>  __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
>  diAlloc+0x141a/0x1700 fs/jfs/jfs_imap.c:1357
>  ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
>  jfs_create+0x13a/0xb10 fs/jfs/namei.c:92
>  lookup_open fs/namei.c:3413 [inline]
>  open_last_lookups fs/namei.c:3481 [inline]
>  path_openat+0x12d0/0x2df0 fs/namei.c:3688
>  do_filp_open+0x264/0x4f0 fs/namei.c:3718
>  do_sys_openat2+0x124/0x4e0 fs/open.c:1313
>  do_sys_open fs/open.c:1329 [inline]
>  __do_sys_creat fs/open.c:1405 [inline]
>  __se_sys_creat fs/open.c:1399 [inline]
>  __x64_sys_creat+0x11f/0x160 fs/open.c:1399
>  do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>  do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
>  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> RIP: 0033:0x7f60b0aa1f09
> Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
> RSP: 002b:00007ffc52136898 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f60b0aa1f09
> RDX: 00007f60b0a60403 RSI: 0000000000000000 RDI: 0000000020000040
> RBP: 00007f60b0a616d0 R08: 0000000000000000 R09: 0000000000000000
> R10: 00007ffc52136760 R11: 0000000000000246 R12: 00000000f8008000
> R13: 0000000000000000 R14: 00080000000000fc R15: 0000000000000000
>  </TASK>
> ================================================================================
> 
> 
> ---
> This report is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
> 
> syzbot will keep track of this issue. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> syzbot can test patches for this issue, for details see:
> https://goo.gl/tpsmEJ#testing-patches
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
