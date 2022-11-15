Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D42F26299F5
	for <lists+jfs-discussion@lfdr.de>; Tue, 15 Nov 2022 14:22:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouvsp-0004bc-HO;
	Tue, 15 Nov 2022 13:21:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liaochang1@huawei.com>) id 1oullQ-0003r7-Q4
 for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Nov 2022 02:33:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RYv8PbYu2PHK0NjQFTHVtdcu8ZHP+IFS6J5Lg3l3r38=; b=Xzc76X4KR8zHA+jYlE/OHvrNkD
 FJbjmJqn9KU8RhNjXzEASwPp5G4e8SFgI7W5MWvoTwABq0gX6YSujT4rKXslLy9R+RfN9DGAHbDGi
 h1EreW/p1TEu3H8bw4CSiWrUG0QLmvi/mz2bExB1NOsXbRjC2Kzbn/hAfMfCY5VipelE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RYv8PbYu2PHK0NjQFTHVtdcu8ZHP+IFS6J5Lg3l3r38=; b=K
 Jr+uKlPnoGdtQXQjx8hXgIgWsi15VYCL4203U+TTk7jvlzgXqhTAcX+nwVpUQF/Nf8DR7/EYOTmnL
 CehC9WjAORZTqxfkMnDSFIfCvzrYa/tEFIELUVvDEBaY/KNY226pV+qT9jN4OjxrSduyXqqFh8H4o
 xHHpRm+HkZooZ6VA=;
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oullO-0004Vm-0v for jfs-discussion@lists.sourceforge.net;
 Tue, 15 Nov 2022 02:33:28 +0000
Received: from kwepemi500012.china.huawei.com (unknown [172.30.72.56])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4NB9Fl4N0kzRpDv;
 Tue, 15 Nov 2022 10:32:59 +0800 (CST)
Received: from huawei.com (10.67.174.53) by kwepemi500012.china.huawei.com
 (7.221.188.12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 15 Nov
 2022 10:33:16 +0800
To: <shaggy@kernel.org>
Date: Tue, 15 Nov 2022 10:30:09 +0800
Message-ID: <20221115023009.251044-1-liaochang1@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.53]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500012.china.huawei.com (7.221.188.12)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: BUG: KASAN: slab-out-of-bounds in dtSearch+0x1d92/0x2000 Read
 of size 1 at addr ffff888134497f94 by task syz-executor.2/8793 CPU: 0 PID:
 8793 Comm: syz-executor.2 Tainted: G W 6.0.0-07994-ge8bc52cb8df8 #9 Hardware
 name: QEMU Standard PC (i440FX + PIIX, 1996),
 BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org
 04/01/2014 Call [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1oullO-0004Vm-0v
X-Mailman-Approved-At: Tue, 15 Nov 2022 13:21:45 +0000
Subject: [Jfs-discussion] [PATCH] jfs: Fix out-of-bounds access on dtSearch
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
From: Liao Chang via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Liao Chang <liaochang1@huawei.com>
Cc: jfs-discussion@lists.sourceforge.net, liaochang1@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

BUG: KASAN: slab-out-of-bounds in dtSearch+0x1d92/0x2000
Read of size 1 at addr ffff888134497f94 by task syz-executor.2/8793

CPU: 0 PID: 8793 Comm: syz-executor.2 Tainted: G        W
6.0.0-07994-ge8bc52cb8df8 #9
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org 04/01/2014
Call Trace:
 <TASK>
 dump_stack_lvl+0xcd/0x134
 print_report.cold+0x2ba/0x719
 kasan_report+0xb1/0x1e0
 dtSearch+0x1d92/0x2000
 jfs_lookup+0x17c/0x2f0
 __lookup_slow+0x24c/0x460
 walk_component+0x33f/0x5a0
 link_path_walk.part.0.constprop.0+0x715/0xd80
 path_lookupat+0x92/0x760
 filename_lookup+0x1d2/0x590
 user_path_at_empty+0x42/0x60
 __x64_sys_chdir+0xb7/0x260
 do_syscall_64+0x35/0x80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

The out-of-bounds access occurs in macro ciToUpper, which converts the
unicode character in ciKey.name into uppercase, this upper operation
will stop when it meets a terminal character(digit 0), so it needs to
set the last character to zero to ensure upper can stop in valid range.

Signed-off-by: Liao Chang <liaochang1@huawei.com>
---
 fs/jfs/jfs_dtree.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 92b7c533407c..0c3af64abcfd 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -592,6 +592,7 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
 	/* uppercase search key for c-i directory */
 	UniStrcpy(ciKey.name, key->name);
 	ciKey.namlen = key->namlen;
+	ciKey.name[ciKey.namlen] = 0;
 
 	/* only uppercase if case-insensitive support is on */
 	if ((JFS_SBI(sb)->mntflag & JFS_OS2) == JFS_OS2) {
-- 
2.17.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
