Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE56F83F9EE
	for <lists+jfs-discussion@lfdr.de>; Sun, 28 Jan 2024 21:49:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rUC5o-00082Y-RK;
	Sun, 28 Jan 2024 20:49:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <willy@infradead.org>) id 1rUC5n-00082S-Ht
 for jfs-discussion@lists.sourceforge.net;
 Sun, 28 Jan 2024 20:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bZP8CJ8qO9039Eflt+eboh0W8nT0XkVhEopsZ5vTzHw=; b=Y3w3RV2OkEtIFVWyYG5MbvbDSC
 20SfMm0y3M15jFaHFXRc9QQVCM7jOw9wi1xmuph5BCo/4KzameUkcWsX1kzMDgBDwPsWUx8UwaYC7
 1OhGyuDkn3WBqEx6XQNf6o2W5oG64Nbl6RgottmIcE1KXLt2b6BJJ3z1r6bULHadqIVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bZP8CJ8qO9039Eflt+eboh0W8nT0XkVhEopsZ5vTzHw=; b=PyosdDpafZLqmI0+osiLwPa0LE
 4kQGc6QfHxLvIoGa847biuCWAC8Bg9MslM0jlCA1QTKJEPruaX+/A5a2uvWdfyOHWU5jDJIGAgNQJ
 ObApPxhvG9E1a6QAZHYOcAtrPCtFEWrkkJi+x6svvfHUgJoVbzIClNBqCDZiQTpVY82E=;
Received: from [90.155.50.34] (helo=casper.infradead.org)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rUC5l-0003cS-W0 for jfs-discussion@lists.sourceforge.net;
 Sun, 28 Jan 2024 20:49:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bZP8CJ8qO9039Eflt+eboh0W8nT0XkVhEopsZ5vTzHw=; b=tgM6sEWmTbhZaYvdARYrgbXljV
 brIv8mNMcKrx4kT6aDpHfMdHslS13yJ7iq3kfPLTuifCBraY61M2cedUgL7eZJlVeVe6Skhqu02vQ
 GBrHKdn4l5gEU6W0dJwP2LRdpUVcN81d3bCmsAqPuM/QUqjzRAQxnQ9BU6t3WCO93OQ7X9czgCCWg
 3GaUAlLIawxOaYvYMdq7TYCtkpHVFDt2Se7Ylo15Sgehu2wgUmW2xHH/WZXEn0DL2dyubOA5WDejR
 ficMy/bXxHGlKi1GaJJUyOto4JcezWiga1nDIsb4hvQRtkmo8P2ADuGF6MWcuBK3kzE1NbKIeg4gZ
 yyt56d4Q==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rUC5d-00000004WdE-15T8;
 Sun, 28 Jan 2024 20:49:17 +0000
Date: Sun, 28 Jan 2024 20:49:17 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Manas Ghandat <ghandatmanas@gmail.com>
Message-ID: <Zba9zRWq6rZhWn-p@casper.infradead.org>
References: <20231011143937.31996-1-ghandatmanas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011143937.31996-1-ghandatmanas@gmail.com>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 11, 2023 at 08:09:37PM +0530,
 Manas Ghandat wrote:
 > Currently while joining the leaf in a buddy system there is shift out >
 of bound error in calculation of BUDSIZE. Added the required ch [...] 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rUC5l-0003cS-W0
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix shift-out-of-bounds in dbJoin
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
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 syzbot+411debe54d318eaed386@syzkaller.appspotmail.com,
 Linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 11, 2023 at 08:09:37PM +0530, Manas Ghandat wrote:
> Currently while joining the leaf in a buddy system there is shift out
> of bound error in calculation of BUDSIZE. Added the required check 
> to the BUDSIZE and fixed the documentation as well.

This patch causes xfstests to fail frequently.  The one this trace is
from was generic/074.

Sasha, I see this one was AUTOSEL.  Please stop it from going into
-stable.

00274 [failed, exit status 1]------------[ cut here ]------------
00274 kernel BUG at fs/jfs/inode.c:169!
00274 invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
00274 CPU: 7 PID: 52174 Comm: umount Kdump: loaded Tainted: G                 N 6.7.0-rc2-00020-gcca974daeb6c #442
00274 Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
00274 RIP: 0010:jfs_evict_inode+0xfb/0x110
00274 Code: 28 fc ff ff a8 04 75 24 4d 85 e4 74 10 49 83 7c 24 80 00 74 08 48 89 df e8 e2 a5 00 00 48 89 df e8 3a 95 ee ff e9 2f ff ff ff <0f> 0b 48 89 df e8 0b 28 00 00 eb d2 66 0f 1f 84 00 00 00 00 00 90
00274 RSP: 0018:ffff8880080bbd48 EFLAGS: 00010287
00274 RAX: ffff88804b209a80 RBX: ffff88804b209df8 RCX: 0000000000000000
00274 RDX: ffff88800b813ce0 RSI: ffffffff8217a259 RDI: ffff88804b209df8
00274 RBP: ffff8880080bbd58 R08: 0000000000000001 R09: 0000000000000001
00274 R10: ffff8880551e4540 R11: 0000000000000001 R12: ffff88804b209fa8
00274 R13: ffffffff81e35fa0 R14: ffff88800eaae7d0 R15: ffff88800eaae7d0
00274 FS:  00007f4f5784a840(0000) GS:ffff88807d9c0000(0000) knlGS:0000000000000000
00274 CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
00274 CR2: 00007f4f57ae2c00 CR3: 000000000a5c4005 CR4: 0000000000770eb0
00274 PKRU: 55555554
00274 Call Trace:
00274  <TASK>
00274  ? show_regs+0x60/0x70
00274  ? die+0x32/0x90
00274  ? do_trap+0xbf/0xe0
00274  ? do_error_trap+0x75/0x110
00274  ? jfs_evict_inode+0xfb/0x110
00274  ? exc_invalid_op+0x52/0x70
00274  ? jfs_evict_inode+0xfb/0x110
00274  ? asm_exc_invalid_op+0x1b/0x20
00274  ? jfs_evict_inode+0xfb/0x110
00274  ? jfs_evict_inode+0x3a/0x110
00274  evict+0xcc/0x1d0
00274  dispose_list+0x48/0x80
00274  evict_inodes+0x14c/0x190
00274  generic_shutdown_super+0x34/0x160
00274  kill_block_super+0x16/0x40
00274  deactivate_locked_super+0x2d/0xa0
00274  deactivate_super+0x3b/0x50
00274  cleanup_mnt+0xbe/0x160
00274  __cleanup_mnt+0xd/0x20
00274  task_work_run+0x59/0xa0
00274  exit_to_user_mode_prepare+0x175/0x180
00274  syscall_exit_to_user_mode+0x1d/0x50
00274  do_syscall_64+0x4e/0xf0
00274  entry_SYSCALL_64_after_hwframe+0x6e/0x76
00274 RIP: 0033:0x7f4f57a76857
00274 Code: af 95 0c 00 f7 d8 64 89 01 48 83 c8 ff c3 0f 1f 44 00 00 31 f6 e9 09 00 00 00 66 0f 1f 84 00 00 00 00 00 b8 a6 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 01 c3 48 8b 15 79 95 0c 00 f7 d8 64 89 02 b8
00274 RSP: 002b:00007fff75aa4be8 EFLAGS: 00000246 ORIG_RAX: 00000000000000a6
00274 RAX: 0000000000000000 RBX: 00005586b9c30ad8 RCX: 00007f4f57a76857
00274 RDX: 0000000000000000 RSI: 0000000000000000 RDI: 00005586b9c343e0
00274 RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000073
00274 R10: 0000000000000000 R11: 0000000000000246 R12: 00007f4f57bb1264
00274 R13: 00005586b9c343e0 R14: 00005586b9c30bf0 R15: 00005586b9c309c0
00274  </TASK>
00274 Modules linked in:

I haven't attempted to dig into why yet.

> Reported-by: syzbot+411debe54d318eaed386@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=411debe54d318eaed386
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
>  fs/jfs/jfs_dmap.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 6b838d3ae7c2..baa97bda1c7a 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -2730,7 +2730,9 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
>   *	leafno	- the number of the leaf to be updated.
>   *	newval	- the new value for the leaf.
>   *
> - * RETURN VALUES: none
> + * RETURN VALUES:
> + *  0		- success
> + *	-EIO	- i/o error
>   */
>  static int dbJoin(dmtree_t * tp, int leafno, int newval)
>  {
> @@ -2757,6 +2759,10 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
>  		 * get the buddy size (number of words covered) of
>  		 * the new value.
>  		 */
> +
> +		if ((newval - tp->dmt_budmin) > BUDMIN)
> +			return -EIO;
> +
>  		budsz = BUDSIZE(newval, tp->dmt_budmin);
>  
>  		/* try to join.
> -- 
> 2.37.2
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
