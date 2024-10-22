Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A619AB209
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Oct 2024 17:29:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t3Goe-0007fR-QD;
	Tue, 22 Oct 2024 15:29:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1t3God-0007fL-BZ
 for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Oct 2024 15:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g6+dwhEkZN0C25ovd76j+GcYPC568U79rzgvztMe/6Q=; b=ZyyNRIXHSpVnlEJsYulQ0EMi5D
 Dec7FOqgNr/MC2GBt6aSKxNQ377WFS3YVUghHYSJsL9NCBgAY1jm2jby/lTtQWPfVikEMH5LkwngL
 ccCEHxxcgf2pUXf3x1xh8iDvhv8PR285RTdvVfBiPdvkrd2bbg3ypLlhjNaNmg+twBsM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g6+dwhEkZN0C25ovd76j+GcYPC568U79rzgvztMe/6Q=; b=cYElRreEGHOzmG8XUkh9bLuikJ
 U+LHlX6f74/DOC5suwN4GItMlRu+fZCKMxlcw83107szv79oCL+Q5t8VoyqXDFvMFL3C4c7CKm4Xr
 XqU2zWosslKAwWV5pZafA8MiEI/OLxl6RF32NpI2CurFK3NtJJDF5lbVl36Yz44jh+ME=;
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t3Goa-0006XL-RP for jfs-discussion@lists.sourceforge.net;
 Tue, 22 Oct 2024 15:28:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1729610922; bh=g6+dwhEkZN0C25ovd76j+GcYPC568U79rzgvztMe/6Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=OeQRYjkPo4IYPn/KTEbvYpiLs82dYMTF6tsEsR3sahxhxMFU4b9M+YQH4l6pIKias
 nnkFLhfyoTxZ2syzHsqat+MvMrkHvigtnfzlGDGmLrAh2Iho69uTqNcxcM7dEoCpeq
 gYDovMWmvmt/Ug1FHWM03nzsF4xkctOiN6Vh1pjc=
Received: from pek-lxu-l1.wrs.com ([111.198.227.254])
 by newxmesmtplogicsvrszb16-1.qq.com (NewEsmtp) with SMTP
 id 7131ACDC; Tue, 22 Oct 2024 23:28:19 +0800
X-QQ-mid: xmsmtpt1729610899t6479w7vf
Message-ID: <tencent_AB5DCD99304FB68D9CA5E58DDE12185D8C07@qq.com>
X-QQ-XMAILINFO: NvKyM24IHTKSRwfinymltxLX/Kp4R028G0FBOhjjiWQADTJdMDvoPRVA4FFChi
 8QwYwXJh2x5LgA3+WSWgPgdBXa92swaPZUQzCsdwnZjVj0OMoSt3y5j5PzHszYqMsE94YmiVst0q
 H7kiJAabpail/5OTEkqhAByugL0m3mwc4PeloeynyFiDMO8cR/y9XjiYP1CTvviNjcy96IHrOnqS
 qHmzJX8iHh/bpUTcFv6yk7SKn6LSGxqVOneuCcNvg4WsBi70m1AHHD+wNQPUCtTXS6lHq9vDX7zR
 wzaat9jKXJ3I3RDgkzRRLReOgStpiUwRUzdmer0PidZRVcCtIOv6el70wDwvJvE752zikuL3crd5
 /4mcbsnPO4gmlon0wntOg80Uyc6coNd81ZEO5buh+VcMct77ZVXsRuIud4CURt7gKPp+UWolfmlE
 nHzoYj21ZVDMoIgNWn430BrYKRIMH5PYlJ6msa8AQfvbAAcNboGMF/Fxo/X6XmqvNfTSwUAkxiG7
 LYJYGLdNDMAwQI4IiKGAgU6k29BfS+0MNkJDYh86dBg/zT+1ONqYrJcgTZxpOVGri/SRwf76h+kq
 UFSYgKm/pM6vxr7M+8aR5VVzrpkds8/8WcEoSDlGW6U0ExkT3bB6DFBpWbZ4dZ9IF+VJtM6yqcQz
 n3pDjFaNFBlKB9JYJHgSqlro7kn29MJQDCwYLw7AdP0JcH6uznjDOb+6aQ2/8pu3m2fb8Xr0w8wr
 wf5B59OHmf63eskGnlll6QJMlmUdKW0xOjA3omHy7kjuDOBx07w56tXte3uJow1MwFQ7JDL1S+nV
 +ih4p9A2MXS+PS6byPv4x9NsOYCMc9LLSUmUtqKhhetZxC++JABxVf64QYMOa5LuILwsDmzuDtcM
 YHsHcLIFTxDAe9fgjuYAnPpdHB9LDiNVkxQ1av2OdP9Hc7rTkUIsV/qmMEXi1Iwnmz4te2oYvkBT
 W+pG1pFjSaJSLmpULbVw==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
To: willy@infradead.org
Date: Tue, 22 Oct 2024 23:28:14 +0800
X-OQ-MSGID: <20241022152813.3896117-2-eadavis@qq.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <ZxeXBwLCsIwNYmlP@casper.infradead.org>
References: <ZxeXBwLCsIwNYmlP@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 22 Oct 2024 13:13:59 +0100, Matthew Wilcox wrote:
 > On Tue, Oct 15, 2024 at 12:50:05PM +0800, Edward Adam Davis wrote: > > There
 is a race condition when accessing ipimap and ipbmap. > > > > C [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [162.62.58.216 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1t3Goa-0006XL-RP
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix null-ptr-deref in
 write_special_inodes
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz,
 syzkaller-bugs@googlegroups.com, eadavis@qq.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 lizhi.xu@windriver.com, guohui.study@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 22 Oct 2024 13:13:59 +0100, Matthew Wilcox wrote:
> On Tue, Oct 15, 2024 at 12:50:05PM +0800, Edward Adam Davis wrote:
> > There is a race condition when accessing ipimap and ipbmap.
> > 
> >         CPU1                              CPU2
> > 	====                              ====
> > 	jfs_umount
> > 	sbi->ipimap = NULL;               lmLogSync
> 
> how are we unmounting the filesystem while still writing to it?
Based on the test logs when I reproduced the problem,
[   77.691713][ T7747] jfs sbi: ffff88801d8b0000, jfs_umount
[   77.706091][ T7749] jfs sbi: ffff88801d8b0000, write_special_inodes
[   77.706976][ T7749] jfs ipbmap: 0000000000000000, ipimap: 0000000000000000, write_special_inodes
[   77.708233][ T7749] Oops: general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN PTI
[   77.709985][ T7749] KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
[   77.711133][ T7749] CPU: 2 PID: 7749 Comm: rpeml Not tainted 6.10.3-yocto-standard-00118-g7bc0a34d8159 #1
[   77.712466][ T7749] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
[   77.712614][ T7765] loop4: detected capacity change from 0 to 32768
[   77.713219][ T7749] RIP: 0010:write_special_inodes+0x126/0x203
[   77.715528][ T7749] Code: 48 c1 e0 2a 80 3c 02 00 74 08 4c 89 f7 e8 72 02 c3 f7 4c 8b 73 10 b8 ff ff 37 00 48 c1 e0 2a 49 8d 7e 30 48 89 fa 48 c1 ea 03 <80> 3c 02 00 74 05 e8 4f 02 c3 f7 49 8b 7e 30 c
[   77.718177][ T7749] RSP: 0018:ffffc9001229fbe8 EFLAGS: 00010206
[   77.719011][ T7749] RAX: dffffc0000000000 RBX: ffff88801d8b0000 RCX: 0000000000000000
[   77.720088][ T7749] RDX: 0000000000000006 RSI: ffffffff816ef99b RDI: 0000000000000030
[   77.721187][ T7749] RBP: ffff88810a012000 R08: 0000000000000005 R09: 0000000000000000
[   77.722284][ T7749] R10: 0000000080000000 R11: 0000000000000001 R12: ffffffff81c2be90
[   77.723383][ T7749] R13: ffff88801d8b0028 R14: 0000000000000000 R15: ffff88801d8b0038
[   77.724474][ T7749] FS:  00007f8e58b94740(0000) GS:ffff888063680000(0000) knlGS:0000000000000000
[   77.725712][ T7749] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   77.726621][ T7749] CR2: 00007fffc26cc6e8 CR3: 0000000108778000 CR4: 00000000000006f0
[   77.727715][ T7749] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   77.728813][ T7749] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   77.729901][ T7749] Call Trace:
[   77.730354][ T7749]  <TASK>
[   77.730764][ T7749]  ? die_addr.cold+0xd/0x12
[   77.731400][ T7749]  ? exc_general_protection+0x147/0x240
[   77.732177][ T7749]  ? asm_exc_general_protection+0x26/0x30
[   77.732992][ T7749]  ? __pfx_filemap_flush+0x10/0x10
[   77.733712][ T7749]  ? vprintk+0x8b/0xa0
[   77.734286][ T7749]  ? write_special_inodes+0x126/0x203
[   77.735036][ T7749]  ? write_special_inodes+0xf0/0x203
[   77.735775][ T7749]  lmLogSync+0xe8/0x71e
[   77.736360][ T7749]  ? __pfx_lmLogSync+0x10/0x10
[   77.737032][ T7749]  ? dquot_writeback_dquots+0x24f/0xb40
[   77.737810][ T7749]  ? __pfx_dquot_writeback_dquots+0x10/0x10
[   77.738631][ T7749]  jfs_syncpt.cold+0x10/0x15
[   77.739277][ T7749]  jfs_sync_fs+0x88/0xb0
[   77.739884][ T7749]  ? __pfx_jfs_sync_fs+0x10/0x10
[   77.740582][ T7749]  sync_filesystem+0x115/0x290
[   77.741255][ T7749]  generic_shutdown_super+0x83/0x360
[   77.741998][ T7749]  kill_block_super+0x40/0xa0
[   77.742652][ T7749]  deactivate_locked_super+0xc6/0x1b0
[   77.743405][ T7749]  deactivate_super+0xec/0x110
[   77.744080][ T7749]  cleanup_mnt+0x224/0x450
[   77.744707][ T7749]  task_work_run+0x156/0x250

As long as the test runs for a long time, there may be situations where sbi
uses the same address (of course, on two different CPUs), at this point,
the null pointer dereference issue will be triggered.
Based on the tests I conducted later, both T7747 and T7749 triggered the
same path when running cleanup_mnt.

BR,
Edward



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
