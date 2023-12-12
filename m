Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E092480E0F2
	for <lists+jfs-discussion@lfdr.de>; Tue, 12 Dec 2023 02:43:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rCrnP-00010r-Pl;
	Tue, 12 Dec 2023 01:42:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1rCrnO-00010l-4N
 for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Dec 2023 01:42:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FD7duTuFK+lQgjiTKG+9TgQ2tzx4vfTI1j+uY0lwi8Y=; b=EGk3fdD2ObwhnzdHOZDaeyba18
 JjxajrKtpy8u+sea+4ym59k5cVM21riTxV1s3APkhO5INkrDQ4RoZvYMdrade8u1kXPIOfSPdS8At
 3/9XqCQwu0QCX6z2Cq/0wu4/a04+y8DaH2Dc8SY08v/bY6vKO6bd0jfPZ+qWuCy7jtno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FD7duTuFK+lQgjiTKG+9TgQ2tzx4vfTI1j+uY0lwi8Y=; b=mmev3kfoOG9przsvx5mYumNvCn
 bLy2u8Mr4XlRLUfwHm9cCkLHyGNF3BkQX2EJoT3+CMWRjZmLqGHoeVEsvqFoEcdEaCU+2xSODiN0N
 abkgnNiAvl0s/zeOKNRuWYio3xTUkCBlbLPapgaZck2yvF3q9LqSj6/yDO/TnGoMZfNU=;
Received: from out203-205-251-73.mail.qq.com ([203.205.251.73])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rCrnM-0003xs-HE for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Dec 2023 01:42:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1702345355; bh=FD7duTuFK+lQgjiTKG+9TgQ2tzx4vfTI1j+uY0lwi8Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=qTMHue2/abKBXlxEGLkRwyYlOQ4s+j8EARUxvwnwO6nrdvic8kWX+ihlzFVtTlrvg
 L8RwcqbiriSjaiXD8mZcCregfprjcpEFQkTAYuwDZJwyFTwFYaFu/9RjrdkHMwa94m
 m6T8S39BBqnzMLGqV51uQ8bH1jwuBkhbcy8FYHJM=
Received: from pek-lxu-l1.wrs.com ([111.198.225.215])
 by newxmesmtplogicsvrszc5-2.qq.com (NewEsmtp) with SMTP
 id 915A4E59; Tue, 12 Dec 2023 09:36:21 +0800
X-QQ-mid: xmsmtpt1702344981t7qa9e586
Message-ID: <tencent_B86ECD2ECECC92A7ED86EF92D0064A499206@qq.com>
X-QQ-XMAILINFO: NyTsQ4JOu2J2zOZ5ZNYHLqT4KfOHLzba1FvVOT7bRfSrE8dwbJH2SiwehFmpQn
 76d7hNEbFs9hUl7z7ICNcOFl1JD7IImxGHSv8oMYzQDgkbSSKRR0r6xzbsb4Bh0jiFADOgsJEE3x
 TWdXfWm4Eo7SU6xF4yNgyGRjz5Um7gxZiYNdb7IByhy+owTzPpIxllnLPrKfaD8vL7ZbRDYtAKxe
 SAx7plUbfsn32bOA+v/6lnvenN4YeGYawJQvGSYOjlHsBgVjXriPdkAAFKo8VcrQRdCy/XfK1vUF
 naI5zjRXVAAZRU5IqrQqc4mTzmDMN7Epfk5Iz2TRT795vyofaTxGlWikWCTumVx+9cO1KWghHrpf
 XQ2Xay0oQJNszywQAt0jb6PHGdqGTbdYJMIW4JMBcxWN482XUYZ7/Eik1mr6XcUdikFn7rH8uhvJ
 TGdLpfbqeknDxxB3YeIvt6gYL0LcTPd6verJq60Mk19x3tBIth2Th+nji7hwA9pGzcfbcpx15arJ
 9foVcX8rfCotnGBYCP/7rDLssOhO6CqX/YOML0TyIzuzhuQZpX2ixFuiLiUPP0B6gW9FUhtJckuv
 LbgCFyVn2PO+0rW3l8yBHWEo2RrECCNBueXMY+A19c8hwxcEQlRR/LfNfyRV/A5cDeEeDufYP841
 9Q6OmOIlqFDN3vBB2zv5/sn6ExFZjWfd8rP0+VFcFUywqwhDYJ4RzvxJ3lwmXaBazYRyeUvmZJO1
 Bs/bzob2W+06LxlhOVxs+WnQ+S6Ppu+Etm4DcrVSqZiIOPCe/h3PRj8XL85l7v/0vj7xvQr3G25a
 0j0jfeP+e5ky0AT3iUiIVdweE+kQxLvhia8TLgL59I8LCca6hu/ZsAcOJnkKXr66Ufe34Jj002O4
 /sGKqqpWqNv+x6VSVNmzmVN5breqdB37U2BJXD2I6t4iP5J8j8+VlTf8kHD0O2Ip4KHxiCig0I
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
To: syzbot+553d90297e6d2f50dbc7@syzkaller.appspotmail.com
Date: Tue, 12 Dec 2023 09:36:22 +0800
X-OQ-MSGID: <20231212013621.2119245-2-eadavis@qq.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <00000000000062a4cc060c2217de@google.com>
References: <00000000000062a4cc060c2217de@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [Syz report] UBSAN: array-index-out-of-bounds in
 fs/jfs/jfs_imap.c:2360:2
 index -878706688 is out of range for type 'struct iagctl[128]' CPU: 1 PID:
 5065 Comm: syz-executor282 Not tainted 6.7.0-rc4-sy [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.251.73 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [203.205.251.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1rCrnM-0003xs-HE
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 diNewExt
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
Cc: linux-fsdevel@vger.kernel.org, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

[Syz report]
UBSAN: array-index-out-of-bounds in fs/jfs/jfs_imap.c:2360:2
index -878706688 is out of range for type 'struct iagctl[128]'
CPU: 1 PID: 5065 Comm: syz-executor282 Not tainted 6.7.0-rc4-syzkaller-00009-gbee0e7762ad2 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 11/10/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_out_of_bounds+0x11c/0x150 lib/ubsan.c:348
 diNewExt+0x3cf3/0x4000 fs/jfs/jfs_imap.c:2360
 diAllocExt fs/jfs/jfs_imap.c:1949 [inline]
 diAllocAG+0xbe8/0x1e50 fs/jfs/jfs_imap.c:1666
 diAlloc+0x1d3/0x1760 fs/jfs/jfs_imap.c:1587
 ialloc+0x8f/0x900 fs/jfs/jfs_inode.c:56
 jfs_mkdir+0x1c5/0xb90 fs/jfs/namei.c:225
 vfs_mkdir+0x2f1/0x4b0 fs/namei.c:4106
 do_mkdirat+0x264/0x3a0 fs/namei.c:4129
 __do_sys_mkdir fs/namei.c:4149 [inline]
 __se_sys_mkdir fs/namei.c:4147 [inline]
 __x64_sys_mkdir+0x6e/0x80 fs/namei.c:4147
 do_syscall_x64 arch/x86/entry/common.c:51 [inline]
 do_syscall_64+0x45/0x110 arch/x86/entry/common.c:82
 entry_SYSCALL_64_after_hwframe+0x63/0x6b
RIP: 0033:0x7fcb7e6a0b57
Code: ff ff 77 07 31 c0 c3 0f 1f 40 00 48 c7 c2 b8 ff ff ff f7 d8 64 89 02 b8 ff ff ff ff c3 66 0f 1f 44 00 00 b8 53 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007ffd83023038 EFLAGS: 00000286 ORIG_RAX: 0000000000000053
RAX: ffffffffffffffda RBX: 00000000ffffffff RCX: 00007fcb7e6a0b57
RDX: 00000000000a1020 RSI: 00000000000001ff RDI: 0000000020000140
RBP: 0000000020000140 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000286 R12: 00007ffd830230d0
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000

[Analysis]
When the agstart is too large, it can cause agno overflow.

[Fix]
After obtaining agno, if the value is invalid, exit the subsequent process.

Reported-and-tested-by: syzbot+553d90297e6d2f50dbc7@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_imap.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index a037ee59e398..cc5819b3ec9a 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -2179,6 +2179,9 @@ static int diNewExt(struct inomap * imap, struct iag * iagp, int extno)
 	/* get the ag and iag numbers for this iag.
 	 */
 	agno = BLKTOAG(le64_to_cpu(iagp->agstart), sbi);
+	if (agno > MAXAG || agno < 0)
+		return -EIO;
+
 	iagno = le32_to_cpu(iagp->iagnum);
 
 	/* check if this is the last free extent within the
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
