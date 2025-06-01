Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9D7ACA37C
	for <lists+jfs-discussion@lfdr.de>; Mon,  2 Jun 2025 01:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R9N9E75e6LN26gaMVtR6TS+GQslHUV8khR7ctgkZAYY=; b=HeqgVryC3O8j/ASoh5xseipE+8
	RQiTH/Xz6+TO6tasnM/ji4ABeh6If2X1YkbsW42xL7Hy1PQ2u+C/e15AwCf2GsK+gVTbVhQVNdjEv
	qYWjNKQjK7cu8l+NiZkOFGL0RLQWdYGcT/jWyckiMZD9pkZaxTwkNdMVWIfn9ldRdBqc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uLsNP-0006sp-Ni;
	Sun, 01 Jun 2025 23:46:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1uLsNO-0006sj-Mv
 for jfs-discussion@lists.sourceforge.net;
 Sun, 01 Jun 2025 23:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UN57r75QyRpftHb+JBFf/D16sV8rZlOG8KmcE4uSUfw=; b=gZraBdpEjXmYbVvAFNLOZFuynG
 aXtA5OP29zjNEBH38XKaxVAHenPoY4QsLJfQ7wH5FEb7zaNBpJ89TGCKKK4yeu6M2SweZCQXGwept
 m1imwBUNAJUxRdLEAaxOKATcv68dzQcW5AHKca7SkbyescDd/seEE07brFwfoz79phi0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UN57r75QyRpftHb+JBFf/D16sV8rZlOG8KmcE4uSUfw=; b=NVTjijzKgaaWdM+zNdp8n/B8ha
 92ueq9CMNDzkTPXGWZpxIac3PdK7e1f7nF0mI+Z294lh9VzOasKeubl5xSZ6P5UesbjS5cRpS4Rwq
 kAyy94u1nhLomrevoqn4f9hkA7UarMgmhUsD+dQ3TCWNLUbG3QlwRHI6W8Hd7Ecw2/C0=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uLsNN-0000kz-NS for jfs-discussion@lists.sourceforge.net;
 Sun, 01 Jun 2025 23:46:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6658E5C4AF8;
 Sun,  1 Jun 2025 23:43:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7A67C4CEE7;
 Sun,  1 Jun 2025 23:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748821551;
 bh=lx0sLTxwVKT7MceorPuxK8d6JHSF7evmGLh8BNW5m1s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bjjck/oiiWxS72ej4z6vSwRT1SrXPZqnx8VpV2TloYBLIGL73iMHlXVENlBlkcWT8
 drPKoHvLWrqLQWpJau0reOOSX05KDWs7GoArsD42e2HVgQMPgFUVDtZpSvY2q6a72t
 RTeOPLMLc19z60Y+DayYJC/apGl3QKNyMQXPehfQBgUrEcUL+g5NgXds2qqrhV98pr
 iCE4ZsAgpS+oHrdhHFlhsdxtHHiy2uw7qHg8l4XzDaemh/I3EVpZM8pbcv8Q+9xQMN
 goZsIYaURM5t7eBhcDe8txOqyTxa3kf2eEyLzDaMzDSZEHUdhRNjLLahiGS0a0UZ+L
 uINFjA2NrDY4A==
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Date: Sun,  1 Jun 2025 19:45:04 -0400
Message-Id: <20250601234515.3519309-13-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250601234515.3519309-1-sashal@kernel.org>
References: <20250601234515.3519309-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.293
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Dylan Wolff <wolffd@comp.nus.edu.sg> [ Upstream commit
 a4685408ff6c3e2af366ad9a7274f45ff3f394ee ] [ Syzkaller Report ] 
 Content analysis details:   (-5.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in sa-trusted.bondedsender.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [139.178.84.217 listed in bl.score.senderscore.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1uLsNN-0000kz-NS
Subject: [Jfs-discussion] [PATCH AUTOSEL 5.4 13/22] jfs: Fix null-ptr-deref
 in jfs_ioc_trim
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
From: Sasha Levin via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Sasha Levin <sashal@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, eadavis@qq.com,
 Dylan Wolff <wolffd@comp.nus.edu.sg>, linux-kernel@vger.kernel.org,
 Jiacheng Xu <stitch@zju.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Dylan Wolff <wolffd@comp.nus.edu.sg>

[ Upstream commit a4685408ff6c3e2af366ad9a7274f45ff3f394ee ]

[ Syzkaller Report ]

Oops: general protection fault, probably for non-canonical address
0xdffffc0000000087: 0000 [#1
KASAN: null-ptr-deref in range [0x0000000000000438-0x000000000000043f]
CPU: 2 UID: 0 PID: 10614 Comm: syz-executor.0 Not tainted
6.13.0-rc6-gfbfd64d25c7a-dirty #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Sched_ext: serialise (enabled+all), task: runnable_at=-30ms
RIP: 0010:jfs_ioc_trim+0x34b/0x8f0
Code: e7 e8 59 a4 87 fe 4d 8b 24 24 4d 8d bc 24 38 04 00 00 48 8d 93
90 82 fe ff 4c 89 ff 31 f6
RSP: 0018:ffffc900055f7cd0 EFLAGS: 00010206
RAX: 0000000000000087 RBX: 00005866a9e67ff8 RCX: 000000000000000a
RDX: 0000000000000001 RSI: 0000000000000004 RDI: 0000000000000001
RBP: dffffc0000000000 R08: ffff88807c180003 R09: 1ffff1100f830000
R10: dffffc0000000000 R11: ffffed100f830001 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000001 R15: 0000000000000438
FS:  00007fe520225640(0000) GS:ffff8880b7e80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005593c91b2c88 CR3: 000000014927c000 CR4: 00000000000006f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
<TASK>
? __die_body+0x61/0xb0
? die_addr+0xb1/0xe0
? exc_general_protection+0x333/0x510
? asm_exc_general_protection+0x26/0x30
? jfs_ioc_trim+0x34b/0x8f0
jfs_ioctl+0x3c8/0x4f0
? __pfx_jfs_ioctl+0x10/0x10
? __pfx_jfs_ioctl+0x10/0x10
__se_sys_ioctl+0x269/0x350
? __pfx___se_sys_ioctl+0x10/0x10
? do_syscall_64+0xfb/0x210
do_syscall_64+0xee/0x210
? syscall_exit_to_user_mode+0x1e0/0x330
entry_SYSCALL_64_after_hwframe+0x77/0x7f
RIP: 0033:0x7fe51f4903ad
Code: c3 e8 a7 2b 00 00 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 89 f8 48
89 f7 48 89 d6 48 89 ca 4d
RSP: 002b:00007fe5202250c8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00007fe51f5cbf80 RCX: 00007fe51f4903ad
RDX: 0000000020000680 RSI: 00000000c0185879 RDI: 0000000000000005
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fe520225640
R13: 000000000000000e R14: 00007fe51f44fca0 R15: 00007fe52021d000
</TASK>
Modules linked in:
---[ end trace 0000000000000000 ]---
RIP: 0010:jfs_ioc_trim+0x34b/0x8f0
Code: e7 e8 59 a4 87 fe 4d 8b 24 24 4d 8d bc 24 38 04 00 00 48 8d 93
90 82 fe ff 4c 89 ff 31 f6
RSP: 0018:ffffc900055f7cd0 EFLAGS: 00010206
RAX: 0000000000000087 RBX: 00005866a9e67ff8 RCX: 000000000000000a
RDX: 0000000000000001 RSI: 0000000000000004 RDI: 0000000000000001
RBP: dffffc0000000000 R08: ffff88807c180003 R09: 1ffff1100f830000
R10: dffffc0000000000 R11: ffffed100f830001 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000001 R15: 0000000000000438
FS:  00007fe520225640(0000) GS:ffff8880b7e80000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00005593c91b2c88 CR3: 000000014927c000 CR4: 00000000000006f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Kernel panic - not syncing: Fatal exception

[ Analysis ]

We believe that we have found a concurrency bug in the `fs/jfs` module
that results in a null pointer dereference. There is a closely related
issue which has been fixed:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d6c1b3599b2feb5c7291f5ac3a36e5fa7cedb234

... but, unfortunately, the accepted patch appears to still be
susceptible to a null pointer dereference under some interleavings.

To trigger the bug, we think that `JFS_SBI(ipbmap->i_sb)->bmap` is set
to NULL in `dbFreeBits` and then dereferenced in `jfs_ioc_trim`. This
bug manifests quite rarely under normal circumstances, but is
triggereable from a syz-program.

Reported-and-tested-by: Dylan J. Wolff<wolffd@comp.nus.edu.sg>
Reported-and-tested-by: Jiacheng Xu <stitch@zju.edu.cn>
Signed-off-by: Dylan J. Wolff<wolffd@comp.nus.edu.sg>
Signed-off-by: Jiacheng Xu <stitch@zju.edu.cn>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

**YES** This commit should be backported to stable kernel trees. Here's
my extensive analysis: ## Code Analysis The commit adds a crucial NULL
pointer check in `jfs_ioc_trim()` function: ```c
down_read(&sb->s_umount); bmp = JFS_SBI(ip->i_sb)->bmap; - if (minlen >
bmp->db_agsize || + if (bmp == NULL || + minlen > bmp->db_agsize ||
start >= bmp->db_mapsize || range->len < sb->s_blocksize) {
up_read(&sb->s_umount); return -EINVAL; } ``` ## Why This Should Be
Backported ### 1. **Critical Bug Fix with Clear User Impact** - **Kernel
Panic**: The bug causes a general protection fault leading to kernel
panic when `bmp` is NULL - **Syzkaller Report**: This is a security-
relevant bug discovered by syzkaller, indicating it's triggerable from
userspace - **Race Condition**: The commit message clearly describes a
concurrency bug where `JFS_SBI(ipbmap->i_sb)->bmap` can be set to NULL
in `dbFreeBits` while being dereferenced in `jfs_ioc_trim` ### 2.
**Minimal and Safe Fix** - **Single Line Addition**: The fix only adds
`bmp == NULL ||` to an existing validation check - **No Architectural
Changes**: No complex logic changes or new features - **Follows Existing
Pattern**: Uses the same error handling path (`return -EINVAL`) already
established - **Proper Cleanup**: Correctly calls
`up_read(&sb->s_umount)` before returning ### 3. **Matches Stable Tree
Criteria** Comparing with the similar commits marked "YES": - **Like
Similar Commit #1 (fm10k)**: Fixes NULL pointer dereference by adding
proper error checking - **Like Similar Commit #2 (ssb)**: Addresses the
same pattern of missing NULL checks leading to crashes - **Like Similar
Commit #3 (bdev)**: Similar NULL pointer protection pattern - **Like
Similar Commit #5 (jfs dtInsert)**: Another JFS fix with similar
validation pattern ### 4. **Related Context Shows Importance** The
related commit `d6c1b3599b2f` ("jfs: Fix uaf in dbFreeBits") addressed a
similar race condition in the same subsystem, but as the commit message
notes: "unfortunately, the accepted patch appears to still be
susceptible to a null pointer dereference under some interleavings." ###
5. **Low Risk Assessment** - **Contained to JFS**: Only affects JFS
filesystem operations - **IOCTL Interface**: Only triggered through
FITRIM ioctl, not normal filesystem operations - **Early Return**: The
fix returns early with a standard error code, preventing further
execution - **No Performance Impact**: The NULL check is minimal
overhead ### 6. **Security Implications** - **Userspace Triggerable**:
The crash can be triggered from userspace via the FITRIM ioctl -
**Denial of Service**: Successful exploitation leads to kernel
panic/system crash - **No Privilege Escalation**: While this is a crash
bug, it demonstrates the importance of proper input validation ##
Conclusion This commit fixes a critical NULL pointer dereference that
causes kernel panics, uses a minimal and safe approach, and follows the
same patterns as other commits successfully backported to stable trees.
The fix addresses a security-relevant bug that can be triggered from
userspace, making it an important candidate for stable backporting.

 fs/jfs/jfs_discard.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_discard.c b/fs/jfs/jfs_discard.c
index 5f4b305030ad5..4b660296caf39 100644
--- a/fs/jfs/jfs_discard.c
+++ b/fs/jfs/jfs_discard.c
@@ -86,7 +86,8 @@ int jfs_ioc_trim(struct inode *ip, struct fstrim_range *range)
 	down_read(&sb->s_umount);
 	bmp = JFS_SBI(ip->i_sb)->bmap;
 
-	if (minlen > bmp->db_agsize ||
+	if (bmp == NULL ||
+	    minlen > bmp->db_agsize ||
 	    start >= bmp->db_mapsize ||
 	    range->len < sb->s_blocksize) {
 		up_read(&sb->s_umount);
-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
