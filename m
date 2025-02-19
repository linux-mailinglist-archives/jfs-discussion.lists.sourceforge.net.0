Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF416A3C1A3
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Feb 2025 15:14:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tkkpq-00037Q-7h;
	Wed, 19 Feb 2025 14:13:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tkkpo-00037G-Ng
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 14:13:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wkS7epA2A5s0pfsFXj5MssIur8auQ5akBvEzcoo0TMM=; b=V5eJJnY47ImvCqevlLExRrdq/i
 Oi6Mt8UZu58kbv9jGdgKvC+djJz+BaALZMin3fADCAgQ8f9ck7+z/vRt/Xb41abQtj4RXaKyO8xrt
 +KNtOuKz2NfHLYSHAO3RrP5IkrG29iOOqvd/0Tp6GtpgWbc2haoGdXTgNJOZKUD/54Lw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wkS7epA2A5s0pfsFXj5MssIur8auQ5akBvEzcoo0TMM=; b=SLiIVytBuyZCWQ2/fOjDRxDG09
 Rl4ke7GkcBrkCLETq2jx/rvsbnLx4N1VyDZp8NuvxqLFIe3EBe+1KqXKqli50L9TMoKUtdAkqskEl
 v1/p/vWrlDGB+Fd5JAsLra6TbzitDxqp/KX4g1+Kpd0wvMxIRzCQjXBMhd2OMVjnnLTo=;
Received: from out203-205-221-155.mail.qq.com ([203.205.221.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tkkpn-0007my-H6 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Feb 2025 14:13:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1739974112; bh=wkS7epA2A5s0pfsFXj5MssIur8auQ5akBvEzcoo0TMM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ttczPi8UI3TtYX5ns+d/b4GUUertymizOFyBsVeJEYfmyqQRcc+1kae9Qc+5y9EDJ
 jotX7dCSYpfUzEjfo8bu3veaXVJfUj4yjLKxCIxYwoXcJTyCSg+fuQpPCKh/bSYMzH
 5VJD26O8bdiJdTyjx2064M23s9UJ9TseCYzRlVnc=
Received: from pek-lxu-l1.wrs.com ([114.244.57.157])
 by newxmesmtplogicsvrsza36-0.qq.com (NewEsmtp) with SMTP
 id 21E8E872; Wed, 19 Feb 2025 22:08:30 +0800
X-QQ-mid: xmsmtpt1739974110tgo10yank
Message-ID: <tencent_83C97263B064441765B762E6CDD360637605@qq.com>
X-QQ-XMAILINFO: NBOcPERDMH3AumCsObGr+Qx4l4zN3gpDjrf7APL71K86202YEhR2Y6WPTtGEfZ
 6nlnelOYcMeEI6j3sNPN/JPRJq6XZPyPL581jK9ZTTwjEO6mf7CaXvRRJArhD9/9zIvgpc8ABiRO
 elvKPTXmttPi9OHFQS3BDuk3LqhYgCPrYhTqEMQTBrvCg/ULRpWMtKVoGFN07bMD6n56w6dPHeyH
 PQ7g7Jym965CLVvEG2LjIR0O3/6QxAnCva/VO759VUHD4s/gqxfviYOcRvBV4/c8RE+hlPvJAKhO
 SVMtHE2bzG2LIACvvnt3R5czT8ctVFSX1U7yv/uApN/ZLp9sz898AeUuIVseVD3CUxs68/E+t4mA
 PIc+/OdDnT57OVlNU8ynD8g5lT2vrnW4j4AZ5U0L69rXGfmndOb53mB+j+ifEMaTPHt4dDf6rffR
 2bSLXuE/kKovznF3ZEZn6YphuYly8k8QuM41pcbnZQ3Je06rzbHpvQqXRZz7K/QCXKmmVLE5bRtf
 WnjRr7TT6hGSwf3FB5UJguNP+hLMHr3IgwOw9OAlCwK9gaC3d4M7CveFknU2qOQQryYs5AW8NLYM
 OkBDcFZ8co6JO4LTTvKg4maitHXkRPilP59aAsvBz+455jHJ54rEAQS8upi7VCHKJnlgWW3HxLim
 KLmyUguZ971FvzZn1JyhxF+65sCkHyg3jkaUhSO1smww2esAPI3sYi5nWxj9uJviTK7851aENfur
 qO8x6/HuMmi6IKC4ZrEQnhWZhr6u+zZzmG+zrNwaCJyWhDj/tbM9fhOhsrTmRwazCaKOJj1UrSyL
 U49HyAyYBD8BES/5UvFD5sZE4H0wTfk8KM7OLrayHJvr9Gonjt35LKFRysImiyN39McGXCHf36ER
 KuSN1fJgS4+jeR9B7UKo+uJeUu6il9XpTEwEdlfNfwvDKaNc9NSnc=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
To: syzbot+df6cdcb35904203d2b6d@syzkaller.appspotmail.com
Date: Wed, 19 Feb 2025 22:08:31 +0800
X-OQ-MSGID: <20250219140830.1594645-2-eadavis@qq.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <67b5d07e.050a0220.14d86d.00e6.GAE@google.com>
References: <67b5d07e.050a0220.14d86d.00e6.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported a uninit-value in diFree. [1] When
 print_hex_dump()
 is called to print the first 32 bytes of imap, the first 8 members in struct
 dinomap are the first 32 bytes of imap, because in_diskblock and in_maxag
 are not initialized when im [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.221.155 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.155 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.155 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1tkkpn-0007my-H6
Subject: [Jfs-discussion] [PATCH] jfs: set diskblock and maxag to zero when
 creating imap
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
in_diskblock and in_maxag are not initialized when imap is created.

When creating imap, set in_diskblock and in_maxag to 0 to prevent this
issue from happening.

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
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_imap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index a360b24ed320..ff32b614a09b 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -134,6 +134,8 @@ int diMount(struct inode *ipimap)
 		imap->im_agctl[index].numfree =
 		    le32_to_cpu(dinom_le->in_agctl[index].numfree);
 	}
+	imap->im_diskblock = 0;
+	imap->im_maxag = 0;
 
 	/* release the buffer. */
 	release_metapage(mp);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
