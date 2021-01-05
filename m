Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 477032EAFA4
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 Jan 2021 17:08:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1kwosg-0003QB-Kg; Tue, 05 Jan 2021 16:08:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1kwosf-0003Pw-Pc
 for jfs-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 16:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:Subject:From:References:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a7lazw+o5bG1BG1FvcfTi39pguOq+bPDtfgcTIrdSV0=; b=Xwm0AqxfUJuKnmnhgEToP0+xN2
 l6li5Weoz5yHlv70d24awxPIuPmIuO4wXlhSMyqIa9jBkvM/XfmMPgxjGl+Rxuve5NMuyAdO7WnXh
 ulolFVURDlVrDlgUc96warInrnZopWlS8IvRPzBmCt7kAx7fRBASe/Snh1QY/bZblaXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:Subject:From:References:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a7lazw+o5bG1BG1FvcfTi39pguOq+bPDtfgcTIrdSV0=; b=DIByV8M5qUIPA/LwSSG6KlDKkm
 04UwYxu4kc+pDI9hQdnUELBNi0tJwkuaIfRMmDJzSu2Aev7iXK/zfVnqIHbDPTn+5MIfUvBtH5QZu
 ysVlBK7p8g++vapAmTuj/vC4eqzCIWxfn+iwd8H6pKn0DshVMsdUc4/Z0uBkS4OUmhpw=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kwosb-00Gd62-MV
 for jfs-discussion@lists.sourceforge.net; Tue, 05 Jan 2021 16:08:21 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105FswP6031230;
 Tue, 5 Jan 2021 16:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : references :
 from : subject : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=a7lazw+o5bG1BG1FvcfTi39pguOq+bPDtfgcTIrdSV0=;
 b=Y7T+UnwpjZjFG83EyPV6Bcpx8ilTUZKzVi82GDIKVN8pPxzu3Om9UHZx1hQWoWd+kpQ2
 g9KEhwcKlTlo9iCgF5drBgH4lkO10naIO/+0cfhoUyadFwoY/5TUDodi84vKgppaDkZi
 5Z/muc2AbR3GqSDw1JDNEEza68kNYzWxuQ3j/uqzOwz471m3rwikAxV5XQDq5Ock+8Jp
 v/QyP0rUU3w1DZiGYf3vGqeepWExwV3uqQs750+Z2Z1N3WwHk46FtEGp08QyeniKmoUi
 kszQLr/72FAnaejDxgIcfpxQyMNGDgmzoCXGHKDZBSc4VdEHkrMPLx3Ls+B6vFYTUsP1 WQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 35tgsksfx3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 05 Jan 2021 16:08:02 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 105FuNlu029088;
 Tue, 5 Jan 2021 16:08:01 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 35uxnsv9g4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 05 Jan 2021 16:08:01 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 105G80pg017620;
 Tue, 5 Jan 2021 16:08:00 GMT
Received: from [192.168.0.190] (/68.201.65.98)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 05 Jan 2021 16:08:00 +0000
To: syzbot <syzbot+d0d8d1bfd19a85de7703@syzkaller.appspotmail.com>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 shaggy@kernel.org, syzkaller-bugs@googlegroups.com,
 Randy Dunlap <rdunlap@infradead.org>
References: <00000000000059589a05b826cdad@google.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <384c40c7-9dfd-db1f-1eca-3da42cac4af7@oracle.com>
Date: Tue, 5 Jan 2021 10:07:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <00000000000059589a05b826cdad@google.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9855
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101050099
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9855
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 malwarescore=0
 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1011 priorityscore=1501
 lowpriorityscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101050099
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
 0.0 T_PDS_SHORTFWD_URISHRT_FP Apparently a short fwd/re with URI
 shortener
 -0.3 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 2.0 SHORT_SHORTNER Short body with little more than a link to a shortener
X-Headers-End: 1kwosb-00Gd62-MV
Subject: Re: [Jfs-discussion] UBSAN: shift-out-of-bounds in diReadSpecial
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

I suspect Randy Dunlap's fix for
https://syzkaller.appspot.com/bug?extid=36315852ece4132ec193
will take care of this one as well:
https://github.com/kleikamp/linux-shaggy/commit/3bef198f1b17d1bb89260bad947ef084c0a2d1a6

sbi->l2nbperpage is derived from sbi->l2bsize, which is sanity checked
by Randy's patch.

#syz dup: UBSAN: shift-out-of-bounds in chkSuper

Shaggy

On 1/5/21 7:01 AM, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    614cb589 Merge tag 'acpi-5.11-rc1-2' of git://git.kernel.o..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=10e4ffbd500000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=bf519e1e96191576
> dashboard link: https://syzkaller.appspot.com/bug?extid=d0d8d1bfd19a85de7703
> compiler:       gcc (GCC) 10.1.0-syz 20200507
> 
> Unfortunately, I don't have any reproducer for this issue yet.
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+d0d8d1bfd19a85de7703@syzkaller.appspotmail.com
> 
> ================================================================================
> UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:445:7
> shift exponent -19 is negative
> CPU: 0 PID: 11254 Comm: syz-executor.2 Not tainted 5.10.0-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> Call Trace:
>   __dump_stack lib/dump_stack.c:79 [inline]
>   dump_stack+0x107/0x163 lib/dump_stack.c:120
>   ubsan_epilogue+0xb/0x5a lib/ubsan.c:148
>   __ubsan_handle_shift_out_of_bounds.cold+0xb1/0x181 lib/ubsan.c:395
>   diReadSpecial.cold+0x1b/0x3e fs/jfs/jfs_imap.c:445
>   jfs_mount+0x83/0x3d0 fs/jfs/jfs_mount.c:86
>   jfs_fill_super+0x5b1/0xbc0 fs/jfs/super.c:562
>   mount_bdev+0x34d/0x410 fs/super.c:1366
>   legacy_get_tree+0x105/0x220 fs/fs_context.c:592
>   vfs_get_tree+0x89/0x2f0 fs/super.c:1496
>   do_new_mount fs/namespace.c:2875 [inline]
>   path_mount+0x13ad/0x20c0 fs/namespace.c:3205
>   do_mount fs/namespace.c:3218 [inline]
>   __do_sys_mount fs/namespace.c:3426 [inline]
>   __se_sys_mount fs/namespace.c:3403 [inline]
>   __x64_sys_mount+0x27f/0x300 fs/namespace.c:3403
>   do_syscall_64+0x2d/0x70 arch/x86/entry/common.c:46
>   entry_SYSCALL_64_after_hwframe+0x44/0xa9
> RIP: 0033:0x460b9a
> Code: b8 a6 00 00 00 0f 05 48 3d 01 f0 ff ff 0f 83 ad 89 fb ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 49 89 ca b8 a5 00 00 00 0f 05 <48> 3d 01 f0 ff ff 0f 83 8a 89 fb ff c3 66 0f 1f 84 00 00 00 00 00
> RSP: 002b:00007f2ed35f4a78 EFLAGS: 00000202 ORIG_RAX: 00000000000000a5
> RAX: ffffffffffffffda RBX: 00007f2ed35f4b10 RCX: 0000000000460b9a
> RDX: 0000000020000000 RSI: 0000000020000100 RDI: 00007f2ed35f4ad0
> RBP: 00007f2ed35f4ad0 R08: 00007f2ed35f4b10 R09: 0000000020000000
> R10: 0000000000000000 R11: 0000000000000202 R12: 0000000020000000
> R13: 0000000020000100 R14: 0000000020000200 R15: 000000002006d200
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
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
