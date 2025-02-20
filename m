Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D7CA3D78B
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Feb 2025 11:58:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tl4F8-00080o-LF;
	Thu, 20 Feb 2025 10:57:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tl4F6-00080h-NZ
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 10:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=odwZp9Z8xIMju+pCsGHH8ZjGFNxI2nF5rOdnRbiIXro=; b=iEznlE/cHUkxzjcU1TBw4iwMEC
 /q1neVuJSpV2p6V4IbYZPV/sczxeBo7aCIxya5TDi/zl7kbDOREPVgmhSB3uA8WaAEs6sRyvM9QA2
 chA17SYEHNqACENtQHs95G1TKEzud2LiDz2tOmYgYe3xZT7y8Y+UDe+PHS1ERfu9ZWZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=odwZp9Z8xIMju+pCsGHH8ZjGFNxI2nF5rOdnRbiIXro=; b=Vyl8Fjl8JaymEfBd26Is2rDNGG
 rbUZb/V5o0OmUKD74dbxE49wQFQmLcJgLGsrskdPNy8EODdsXg8VGaM4Fu2fMw2+7R4pRgPCHsKnj
 TmglqmuxuOi7sRdzlItglBI9wzK/kfafzy48kbwbDskkWLZmOjye/Rqx9BbybK8ECOmw=;
Received: from out203-205-221-202.mail.qq.com ([203.205.221.202])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tl4F4-0004t0-Rp for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 10:57:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1740049026; bh=odwZp9Z8xIMju+pCsGHH8ZjGFNxI2nF5rOdnRbiIXro=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eRt3EUJWxOavpdMlmLRZ7mhf6iVKE85iiFbHwraTYUmM/ghOkoSDvIV0k0CKT7Jn0
 wZnPTSh8yYzMGjaZW7vGoLIRWkkGwqfCOXnqgOu1g+0Kl2uuh7voXv8e9Zp6jnSdfp
 dxLOCcbs0Hl9Oqvmd/mgYL1PFtQS3GdvUtNIaSh8=
Received: from pek-lxu-l1.wrs.com ([114.244.57.157])
 by newxmesmtplogicsvrszc11-0.qq.com (NewEsmtp) with SMTP
 id E2C0E25E; Thu, 20 Feb 2025 18:56:44 +0800
X-QQ-mid: xmsmtpt1740049004tuormpf61
Message-ID: <tencent_B2A58C0DE192505DFEDD889955CFD58DA207@qq.com>
X-QQ-XMAILINFO: NafziRg7Bx69kwZHI7Dzm5Kz+VynHXEGcfBu7ol1O+aJB+yjqEYqVTuiMARVBH
 qXRS0yuyV9I1H5Nw2PLZ+UseJAEDOHYYA8w50WQjxhFJnKq7RFs9TBuhXUzfZNZeenGrKswb4NxG
 mmCRdFvAHqnFU/RJuG/HSGIR8qyGbABWQHh+AWeNZ86PzkFlTNcvCsy824lxzaA7YWCfeHTXfyCv
 ODBRnVgZUwr2p6DKciEskBBCcal0KC+Kyy5gayDYBQJeCMcfyh/and76ESnbToKfaNN80wzJg2hr
 U/JNlNE+M1PU7UtB11cg8vHse3QnmfZZYT6jd2GsAdg7A2CQJt4o0HkWt7K1zOm51hm92+ebPTa5
 2I8qZeUd5z3p4ErMyKqAWOP7QJBZLptxHBqrPWsangz76ObnMzx7N3hk5Guv/jKPnCbatSIcwwBu
 oUfSJlPO+c1w0WmV5mdsHzkHr8EfWiIdXyAZksDrQSQoaCLjY6vGVS1f/h6+QBpBNVyhw7xecX6I
 XLU97WSM6586zDMk79v1utkkH68kQ8VHRBf0Pju95+x3Tr8DSCEb2+PrsUy7VuU8cD8pLKfbPih0
 VypribhaXvw/Ce8ajAEWzTWP0XarZL8f5uoBeIWjP/EBjqiXHAXhglCk/k2ZgrhoSi7fW3oqURPL
 5Yu4ryLwSmThjY8hA1hGxpeQXIsLWjo8amkTv3QRWJMJUDNckNi7wQ70YBX5mqk7HmAohbFTxe7j
 F7cLoxn4fHXEbWbB17QEK0LY6gB7HIVhH84hYHMD1e3LdCbJbCJsrifd6nTiWy01qEvv6PSHc2r5
 uZbNWzLArVHKUszZTBhz3ytmCAPVa3to5ura1or8YU2ZFFUM+/VK8UMOElcbvjNtFUebujsxo8jw
 lhNKPU+ADvJY7YI+VISeHVOT0BF/JMGVbFtJYBeNENZxpyfTM4FqI=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
To: dave.kleikamp@oracle.com
Date: Thu, 20 Feb 2025 18:56:45 +0800
X-OQ-MSGID: <20250220105644.2282263-2-eadavis@qq.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <046f91fc-dc84-48de-b2e0-9f072283facd@oracle.com>
References: <046f91fc-dc84-48de-b2e0-9f072283facd@oracle.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported a uninit-value in diFree. [1] When
 print_hex_dump()
 is called to print the first 32 bytes of imap, the first 8 members in struct
 dinomap are the first 32 bytes of imap, because in_numinos, in_numfree,
 in_diskblock and in_maxag are [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.202 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.202 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.202 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1tl4F4-0004t0-Rp
Subject: [Jfs-discussion] [PATCH V2] jfs: Initialized first 8 members of the
 dinomap when creating imap
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot reported a uninit-value in diFree. [1]

When print_hex_dump() is called to print the first 32 bytes of imap, the
first 8 members in struct dinomap are the first 32 bytes of imap, because
in_numinos, in_numfree, in_diskblock and in_maxag are not initialized when
imap is created.

When creating imap, set in_numinos, in_numfree, in_diskblock and in_maxag
to 0 to prevent this issue from happening.

[1]
BUG: KMSAN: uninit-value in hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
 hex_dump_to_buffer+0x888/0x1100 lib/hexdump.c:171
 print_hex_dump+0x13d/0x3e0 lib/hexdump.c:276
 diFree+0x5ba/0x4350 fs/jfs/jfs_imap.c:876
 jfs_evict_inode+0x510/0x550 fs/jfs/inode.c:156
 evict+0x723/0xd10 fs/inode.c:796
 iput_final fs/inode.c:1946 [inline]
 iput+0x97b/0xdb0 fs/inode.c:1972
 txUpdateMap+0xf3e/0x1150 fs/jfs/jfs_txnmgr.c:2367
 txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
 jfs_lazycommit+0x627/0x11d0 fs/jfs/jfs_txnmgr.c:2733
 kthread+0x6b9/0xef0 kernel/kthread.c:464
 ret_from_fork+0x6d/0x90 arch/x86/kernel/process.c:148
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244

Uninit was created at:
 slab_post_alloc_hook mm/slub.c:4121 [inline]
 slab_alloc_node mm/slub.c:4164 [inline]
 __kmalloc_cache_noprof+0x8e3/0xdf0 mm/slub.c:4320
 kmalloc_noprof include/linux/slab.h:901 [inline]
 diMount+0x61/0x7f0 fs/jfs/jfs_imap.c:105
 jfs_mount+0xa8e/0x11d0 fs/jfs/jfs_mount.c:176
 jfs_fill_super+0xa47/0x17c0 fs/jfs/super.c:523
 get_tree_bdev_flags+0x6ec/0x910 fs/super.c:1636
 get_tree_bdev+0x37/0x50 fs/super.c:1659
 jfs_get_tree+0x34/0x40 fs/jfs/super.c:635
 vfs_get_tree+0xb1/0x5a0 fs/super.c:1814
 do_new_mount+0x71f/0x15e0 fs/namespace.c:3560
 path_mount+0x742/0x1f10 fs/namespace.c:3887
 do_mount fs/namespace.c:3900 [inline]
 __do_sys_mount fs/namespace.c:4111 [inline]
 __se_sys_mount+0x71f/0x800 fs/namespace.c:4088
 __x64_sys_mount+0xe4/0x150 fs/namespace.c:4088
 x64_sys_call+0x39bf/0x3c30 arch/x86/include/generated/asm/syscalls_64.h:166
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xcd/0x1e0 arch/x86/entry/common.c:83

Reported-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=df6cdcb35904203d2b6d
Tested-by: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
V1 -> V2: add missing others two fields of dinomap

 fs/jfs/jfs_imap.c | 4 ++++
 fs/jfs/jfs_imap.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index a360b24ed320..0cedaccb7218 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -134,6 +134,10 @@ int diMount(struct inode *ipimap)
 		imap->im_agctl[index].numfree =
 		    le32_to_cpu(dinom_le->in_agctl[index].numfree);
 	}
+	imap->im_diskblock = 0;
+	imap->im_maxag = 0;
+	imap->im_enuminos = 0;
+	imap->im_enumfree = 0;
 
 	/* release the buffer. */
 	release_metapage(mp);
diff --git a/fs/jfs/jfs_imap.h b/fs/jfs/jfs_imap.h
index dd7409febe28..9af1da2e4591 100644
--- a/fs/jfs/jfs_imap.h
+++ b/fs/jfs/jfs_imap.h
@@ -144,6 +144,8 @@ struct inomap {
  */
 #define	im_diskblock	im_imap.in_diskblock
 #define	im_maxag	im_imap.in_maxag
+#define	im_enuminos	im_imap.in_numinos
+#define	im_enumfree	im_imap.in_numfree
 
 extern int diFree(struct inode *);
 extern int diAlloc(struct inode *, bool, struct inode *);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
