Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FC4955544
	for <lists+jfs-discussion@lfdr.de>; Sat, 17 Aug 2024 05:56:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sfAXn-0007x9-K4;
	Sat, 17 Aug 2024 03:55:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1sfAXi-0007wn-Ul
 for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Aug 2024 03:55:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7wOUZF/BCD945GOv9YpvSpZ0D3vTmc0qCyK3wiLG2uw=; b=WTDoD3/swcL6f0wg+l9uuKUeQ5
 cZ3/cn1WCQgHwTPdL528z5YgqoNWNHAjRrf9jVmYWOD0ArCm0KqhoUn6p2wBtmsn1j22JSdRDpshA
 gmaLqplorWHxFdMR9mAnMS4Rpa1k7SjkziSsy1OCodlbRyVYiNutg7tKc0tOREWydMXw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7wOUZF/BCD945GOv9YpvSpZ0D3vTmc0qCyK3wiLG2uw=; b=TGI9+jff6SYmapYZelaFRA0ohZ
 YgTJ3JwoqQ47I2n9DwEh5/s7J9lHziLPjFi/PFwybIyvs785knok/WidDpLlabuYvCu8uUZnUqhCq
 E9m5ZsVkWIv1v03LrPhIo4OWLe0nS+SCHFwB2JbCwkWecMRcTh0G3/Z5JAYj6FE2LfUw=;
Received: from out203-205-221-239.mail.qq.com ([203.205.221.239])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sfAXh-0007ue-0r for jfs-discussion@lists.sourceforge.net;
 Sat, 17 Aug 2024 03:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1723866939; bh=7wOUZF/BCD945GOv9YpvSpZ0D3vTmc0qCyK3wiLG2uw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iROSiIhyszkyOTgzIy3AkR0pctdPRfogx3Dbk/tH3pp0gnXihdeNClKubG6FcVbO/
 dQ7G5AGJXqCETSTYZOOMqA1QvWke+cMjqfyJ+x6v/xpERhMDi9Qh6XGYkICEi0Ezgd
 dvJoJBc9s9qYr4sI0OaLN0SZIO0zx7KgfT2cK9eA=
Received: from pek-lxu-l1.wrs.com ([111.198.225.4])
 by newxmesmtplogicsvrszc19-0.qq.com (NewEsmtp) with SMTP
 id DDEAEEEF; Sat, 17 Aug 2024 11:55:30 +0800
X-QQ-mid: xmsmtpt1723866930trq3amui7
Message-ID: <tencent_964B0C7439761367DC3D5337CA968C369E09@qq.com>
X-QQ-XMAILINFO: M/NR0wiIuy70peDTgidQYKpSJdPj3sqEH/CBcm6p5m0d+YnztFj4J+RskCxKOL
 bguKQAyuNtfySQmreMY4fSDS/I7uRFjkFwTdbz5rK2HuDwCKJVka8jQtIGS00x/N2MSixzUXwbdF
 qSEHbP26hHbeJgvEMw8E9xB4PISYAmOvFEicw2SRN7zjrdBmCZeFxVvnBd6gpuUnjslZASYaUcpw
 47HB8i06CjEhg1OVsY9s52Q5+L76yaB2z1V5oJkY0QPM4oKTwTnF84ZJoKhgK5GLICpL7fVw4FwL
 WeRU7gfVkBLpO/13ftuf7jHmDGQqgny8sL1cSbYOz9LMN+dYjrX76883lOzhSc8fmViBEW3CVFq0
 cMp9YTG81YzclPhleTpDxd9ayK+t7ahbvzaXgxNnshIfUVGfOQupadlpo7PkS481O50h3QERoxqK
 A/nCT5zqo0ON5QQI8jYgftXRD5jO0muLN3E+pO8VoQmM26UeCkppYNX05ALAKmnNdWtnrht6JX2r
 6s4LtodVy8y/HlvTaaMPMdH0PRhaqUQPrjed0bzpX3NTstxpJhM2zDYCg9mYAG4KU5e12/grhv1N
 +aqz6a/kr4544Vw5GuU/3oePSzuwnd4opn7m3pgGHOgTPhVd31+N/vZztouxT9fJQ5y9zWFIgeCT
 v+ZbhZ7Y3wE0SR3tq0gjMve2VHhxtVUyh1HMUxSLcUnyRU/s45kF+Huz6GEN4DC7WUUqjoFD16HQ
 iTxg/TDR8jVkbVwAgCU0Ss3Ot6mA445W8XlZt34rFVNkWs/Ak7I5F/741aCjt0TzZXkLa+3aHX8R
 8dU8/49Xy4HztbVqWQVN/Ds7U51CNCM6C4/Jzw5pXz6ogOJMGj614tvpbtT/1h2C2M/UEttAmT+9
 bSpO3EaU0j4OHN4gNWhwnOoPv+8jAI7B3d+Pc8AcZh6foRI0Ctu6+ld0Zm5QKTAPXT+bnjV2JcBv
 MX5hIvjcU=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
To: syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com
Date: Sat, 17 Aug 2024 11:55:31 +0800
X-OQ-MSGID: <20240817035530.1724646-2-eadavis@qq.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <00000000000012a63d061fccab65@google.com>
References: <00000000000012a63d061fccab65@google.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [syzbot reported]
 ==================================================================
 BUG: KASAN: slab-use-after-free in __mutex_lock_common
 kernel/locking/mutex.c:587
 [inline] BUG: KASAN: slab-use-aft [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qq.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.239 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [203.205.221.239 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.205.221.239 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 3.2 HELO_DYNAMIC_IPADDR    Relay HELO'd using suspicious hostname (IP
 addr 1)
X-Headers-End: 1sfAXh-0007ue-0r
Subject: [Jfs-discussion] [PATCH] jfs: Fix uaf in dbFreeBits
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

[syzbot reported]
==================================================================
BUG: KASAN: slab-use-after-free in __mutex_lock_common kernel/locking/mutex.c:587 [inline]
BUG: KASAN: slab-use-after-free in __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
Read of size 8 at addr ffff8880229254b0 by task syz-executor357/5216

CPU: 0 UID: 0 PID: 5216 Comm: syz-executor357 Not tainted 6.11.0-rc3-syzkaller-00156-gd7a5aa4b3c00 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 06/27/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:93 [inline]
 dump_stack_lvl+0x241/0x360 lib/dump_stack.c:119
 print_address_description mm/kasan/report.c:377 [inline]
 print_report+0x169/0x550 mm/kasan/report.c:488
 kasan_report+0x143/0x180 mm/kasan/report.c:601
 __mutex_lock_common kernel/locking/mutex.c:587 [inline]
 __mutex_lock+0xfe/0xd70 kernel/locking/mutex.c:752
 dbFreeBits+0x7ea/0xd90 fs/jfs/jfs_dmap.c:2390
 dbFreeDmap fs/jfs/jfs_dmap.c:2089 [inline]
 dbFree+0x35b/0x680 fs/jfs/jfs_dmap.c:409
 dbDiscardAG+0x8a9/0xa20 fs/jfs/jfs_dmap.c:1650
 jfs_ioc_trim+0x433/0x670 fs/jfs/jfs_discard.c:100
 jfs_ioctl+0x2d0/0x3e0 fs/jfs/ioctl.c:131
 vfs_ioctl fs/ioctl.c:51 [inline]
 __do_sys_ioctl fs/ioctl.c:907 [inline]
 __se_sys_ioctl+0xfc/0x170 fs/ioctl.c:893
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83

Freed by task 5218:
 kasan_save_stack mm/kasan/common.c:47 [inline]
 kasan_save_track+0x3f/0x80 mm/kasan/common.c:68
 kasan_save_free_info+0x40/0x50 mm/kasan/generic.c:579
 poison_slab_object+0xe0/0x150 mm/kasan/common.c:240
 __kasan_slab_free+0x37/0x60 mm/kasan/common.c:256
 kasan_slab_free include/linux/kasan.h:184 [inline]
 slab_free_hook mm/slub.c:2252 [inline]
 slab_free mm/slub.c:4473 [inline]
 kfree+0x149/0x360 mm/slub.c:4594
 dbUnmount+0x11d/0x190 fs/jfs/jfs_dmap.c:278
 jfs_mount_rw+0x4ac/0x6a0 fs/jfs/jfs_mount.c:247
 jfs_remount+0x3d1/0x6b0 fs/jfs/super.c:454
 reconfigure_super+0x445/0x880 fs/super.c:1083
 vfs_cmd_reconfigure fs/fsopen.c:263 [inline]
 vfs_fsconfig_locked fs/fsopen.c:292 [inline]
 __do_sys_fsconfig fs/fsopen.c:473 [inline]
 __se_sys_fsconfig+0xb6e/0xf80 fs/fsopen.c:345
 do_syscall_x64 arch/x86/entry/common.c:52 [inline]
 do_syscall_64+0xf3/0x230 arch/x86/entry/common.c:83
 entry_SYSCALL_64_after_hwframe+0x77/0x7f 

[Analysis] 
There are two paths (dbUnmount and dbDiscardAG) that generate race
condition when accessing bmap, which leads to the occurrence of uaf.

Use the lock s_umount to synchronize them, in order to avoid uaf caused
by race condition.

Reported-and-tested-by: syzbot+3c010e21296f33a5dc16@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=3c010e21296f33a5dc16
Signed-off-by: Edward Adam Davis <eadavis@qq.com>
---
 fs/jfs/jfs_dmap.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cb3cda1390ad..a409ae18454a 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1645,7 +1645,9 @@ s64 dbDiscardAG(struct inode *ip, int agno, s64 minlen)
 		 * call jfs_issue_discard() itself */
 		if (!(JFS_SBI(sb)->flag & JFS_DISCARD))
 			jfs_issue_discard(ip, tt->blkno, tt->nblocks);
+		down_read(&sb->s_umount);
 		dbFree(ip, tt->blkno, tt->nblocks);
+		up_read(&sb->s_umount);
 		trimmed += tt->nblocks;
 	}
 	kfree(totrim);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
