Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3655782E4CC
	for <lists+jfs-discussion@lfdr.de>; Tue, 16 Jan 2024 01:25:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rPXGp-0002nV-Ev;
	Tue, 16 Jan 2024 00:25:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sashal@kernel.org>) id 1rPXGm-0002nO-5I
 for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:25:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9GlqOaUUWtGpiJ4hqEeXgr387l+h+c0UngEWdB6Kuno=; b=m3hQiFEM0hicsBOqq99aLaVTvS
 XFTBS/3C89kl7rglYfByCDs0qtkQyGQuGs7iC05hqfUotWjNqWRlOD/TN9AZfjeGLWLrDZn2M5a8q
 rn3H/tDm29RskHR9UYycSacTjZA8xYPnzOkD5mZpV683+6KEIVX2Jaz7g8nUrL9U0IXY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9GlqOaUUWtGpiJ4hqEeXgr387l+h+c0UngEWdB6Kuno=; b=ULrmCKovqndpQKxghBKE/gVLw/
 ml81PlPh0VjS9lBinWlBiMbSCF/9KQSfCbiboVXr2cuJdiQgO1w+AtQZboED4Us5sgAfnovsdO59A
 LOnAaWumq7+mL3A3md2VK/BT60/6FscJOZuJQ5ALvKAxpTvEP4YYaxSkA1zGAlmbcbuM=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rPXGj-0002wz-Rb for jfs-discussion@lists.sourceforge.net;
 Tue, 16 Jan 2024 00:25:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 44EEDB80D5A;
 Tue, 16 Jan 2024 00:25:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03883C433C7;
 Tue, 16 Jan 2024 00:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705364718;
 bh=elxGgaAJp91wigfr4MN4CaHWnMDnWa3eqNr7Po8FhTk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aU+/a56vcxKkhK+rdMNn5Jf5E4AJBwSuSMHV2Mo/4QsNv/DWblOdvJn1lIMgTds25
 bNGM4swf6L3z+V5Z+r2lPjhyGp3NvJl2qyI0UKuuYqX1V+4kNZUKBB1Zk4ioasTVEO
 mx80iZ9R9P4z1NvA4hAV87XxJZWpKeuRPVCBIOvgb37yffzh9U76EBQj16hfhpPmnp
 6mYQt3gfkXqXOaX6CZHX2pJtDuoQhp7BkTsicasbZY5JcKnXhh1mC7ZAcYmeHI7ETC
 7bHj8gKJ9U0G8jTtWxx6RgivN7MnlWjYBUW3qyWgO2bIF3dJrhc94nDd/PZb4ArZmv
 5jU+vtM1wdrHQ==
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon, 15 Jan 2024 19:24:44 -0500
Message-ID: <20240116002512.215607-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116002512.215607-1-sashal@kernel.org>
References: <20240116002512.215607-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.73
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Osama Muhammad <osmtendev@gmail.com> [ Upstream commit
 27e56f59bab5ddafbcfe69ad7a4a6ea1279c1b16 ] Syzkaller reported the following
 issue: Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.68.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rPXGj-0002wz-Rb
Subject: [Jfs-discussion] [PATCH AUTOSEL 6.1 02/14] UBSAN:
 array-index-out-of-bounds in dtSplitRoot
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
Cc: Sasha Levin <sashal@kernel.org>, Osama Muhammad <osmtendev@gmail.com>,
 jfs-discussion@lists.sourceforge.net, ghandatmanas@gmail.com,
 shaggy@kernel.org, syzbot+d4b1df2e9d4ded6488ec@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Osama Muhammad <osmtendev@gmail.com>

[ Upstream commit 27e56f59bab5ddafbcfe69ad7a4a6ea1279c1b16 ]

Syzkaller reported the following issue:

oop0: detected capacity change from 0 to 32768

UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dtree.c:1971:9
index -2 is out of range for type 'struct dtslot [128]'
CPU: 0 PID: 3613 Comm: syz-executor270 Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:151 [inline]
 __ubsan_handle_out_of_bounds+0xdb/0x130 lib/ubsan.c:283
 dtSplitRoot+0x8d8/0x1900 fs/jfs/jfs_dtree.c:1971
 dtSplitUp fs/jfs/jfs_dtree.c:985 [inline]
 dtInsert+0x1189/0x6b80 fs/jfs/jfs_dtree.c:863
 jfs_mkdir+0x757/0xb00 fs/jfs/namei.c:270
 vfs_mkdir+0x3b3/0x590 fs/namei.c:4013
 do_mkdirat+0x279/0x550 fs/namei.c:4038
 __do_sys_mkdirat fs/namei.c:4053 [inline]
 __se_sys_mkdirat fs/namei.c:4051 [inline]
 __x64_sys_mkdirat+0x85/0x90 fs/namei.c:4051
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fcdc0113fd9
Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffeb8bc67d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000102
RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007fcdc0113fd9
RDX: 0000000000000000 RSI: 0000000020000340 RDI: 0000000000000003
RBP: 00007fcdc00d37a0 R08: 0000000000000000 R09: 00007fcdc00d37a0
R10: 00005555559a72c0 R11: 0000000000000246 R12: 00000000f8008000
R13: 0000000000000000 R14: 00083878000000f8 R15: 0000000000000000
 </TASK>

The issue is caused when the value of fsi becomes less than -1.
The check to break the loop when fsi value becomes -1 is present
but syzbot was able to produce value less than -1 which cause the error.
This patch simply add the change for the values less than 0.

The patch is tested via syzbot.

Reported-and-tested-by: syzbot+d4b1df2e9d4ded6488ec@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?extid=d4b1df2e9d4ded6488ec
Signed-off-by: Osama Muhammad <osmtendev@gmail.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 fs/jfs/jfs_dtree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 92b7c533407c..f3d3e8b3f50c 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -1970,7 +1970,7 @@ static int dtSplitRoot(tid_t tid,
 		do {
 			f = &rp->slot[fsi];
 			fsi = f->next;
-		} while (fsi != -1);
+		} while (fsi >= 0);
 
 		f->next = n;
 	}
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
