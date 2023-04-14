Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 517336E24CE
	for <lists+jfs-discussion@lfdr.de>; Fri, 14 Apr 2023 15:54:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pnJrz-0005wW-MT;
	Fri, 14 Apr 2023 13:53:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <anupnewsmail@gmail.com>) id 1pnJry-0005wQ-Jr
 for jfs-discussion@lists.sourceforge.net;
 Fri, 14 Apr 2023 13:53:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0qGRdodWbglm/4nLuGPq0WWdg9oIMDzxL1+BodNRkNI=; b=KFbB2zSgh4XuhHCEfWBY+ssw9b
 os/oGB22oGwbDcLLzLwJ+/nmlWqjldBfXQ+6uQ17u+Yd3OZ1UiCEHsd993PhpFmyFobg/Fposw9ji
 oWwx7qcSLoYOgNeXmfMfW+I3I4imuxHaZypgHigwAzaAZIpsM/BD+Os5Cv+Lr6phWRsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0qGRdodWbglm/4nLuGPq0WWdg9oIMDzxL1+BodNRkNI=; b=c
 0PBw/XNU8Q+uG0KhOQAIMdvrxNdAX5aKkg+DlAIiHqjRF3XnkUpyV59mK3kd6+Xx8o5wZVX+lwNuF
 KUXQoUM6cax09kjA3/4amsf4DFBL6TSSk2NmwosyNvium73aeA7wa/Yawc/6Y8ACUL1dXrcZJydwg
 QhGTLINpBQb2fnl0=;
Received: from mail-pj1-f48.google.com ([209.85.216.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pnJrw-0004lU-AC for jfs-discussion@lists.sourceforge.net;
 Fri, 14 Apr 2023 13:53:43 +0000
Received: by mail-pj1-f48.google.com with SMTP id g6so1480657pjx.4
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 14 Apr 2023 06:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1681480414; x=1684072414;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=0qGRdodWbglm/4nLuGPq0WWdg9oIMDzxL1+BodNRkNI=;
 b=dlVo8j/WgNCwLlT2hLLArgJlgTvV+mnNkOGmjAYpoTVnIzbheBW1QCUREs8TexfUUC
 7bhaWBC6OpRohj1KH9cl+oEtbisH77S4LnhqZ4U48MZ+ZwOBe7nsvnEYWmY1qrk8cFPn
 O0gka6p/8+5a411fUhdLMGW3s8ik/Ne8spOrP4/JlYc7CIEb1CHJQ1bzwvFI3RGxAmDB
 Awa7Zor/LRs5g0EvTc9JxtdshpAPFoO0BK+1EIXg38hyCEW1eus3GYKHRrP9nYfgrLdm
 4SVbCyisHJVGx460lh4tbOqYrOTtNZGUn+2zz/CUfGdS46V5BBtW/P0FJyp7Eki03wSn
 2qzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681480414; x=1684072414;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0qGRdodWbglm/4nLuGPq0WWdg9oIMDzxL1+BodNRkNI=;
 b=A7K0aWfHEhRzM/lkld1WibQXZTAAZxohj46IccLupFR3TyPLp1kC2Vp0n3jHuJ0yMc
 PcAhakjI1LE8p5oLGlqJwH6I54uJtUX/ACfjMw6oEdsythUs+4dCq1G2dtZJWOMVQFZ2
 UOhLLoBVYeX7Z9eBwJZCEo5tMqbYJKHph0hsDh60sjRlcFvd2RTITHPMIPHnPIrR5t5s
 Qnj/E4QUEYg3M1oxofbcNEJSAy9llUvjSiiUvWi6AqZU8IRe4Zsyl3EjhyZqvBj18GNs
 MmL68muIXiVXNjlkQbTejTJS9bl/5IHDI3rQwaP2HbQtkCoo8OH3zhfx2hagKSKh1Qmn
 +lcg==
X-Gm-Message-State: AAQBX9eMA45Iw5LF0yUc/r+7gWt4AXqMt1fj08xOw2/wsMW0BVHW1x03
 QBOQ2i5+RfmvLAtiYJpHyKE=
X-Google-Smtp-Source: AKy350am3+b1JoU2ZPTWq0qpA4UU4l44h0EG3UkOfJ9NGeFylot9I1+e/KeBsqU5tVSVPFNx1B4p9g==
X-Received: by 2002:a17:902:f9c8:b0:19d:553:746b with SMTP id
 kz8-20020a170902f9c800b0019d0553746bmr2587385plb.66.1681480414461; 
 Fri, 14 Apr 2023 06:53:34 -0700 (PDT)
Received: from yoga ([2400:1f00:13:fe48:30c1:6c25:8f15:18bc])
 by smtp.gmail.com with ESMTPSA id
 o12-20020a1709026b0c00b001a229e52c1asm3086455plk.231.2023.04.14.06.53.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Apr 2023 06:53:34 -0700 (PDT)
Date: Fri, 14 Apr 2023 19:23:28 +0530
From: anupsharma <anupnewsmail@gmail.com>
To: shaggy@kernel.org, r33s3n6@gmail.com, mudongliangabcd@gmail.com,
 liushixin2@huawei.com, wuhoipok@gmail.com
Message-ID: <ZDla2Nuyq2QLdo96@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzkaller reported the following issue: option from the mount
 to silence this warning.
 =======================================================
 find_entry called with index = 0 read_mapping_page failed [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anupnewsmail[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.48 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1pnJrw-0004lU-AC
Subject: [Jfs-discussion] [PATCH] fs: jfs: fixed UBSAN: shift-out-of-bounds
 in dbFree
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzkaller reported the following issue:
         option from the mount to silence this warning.
=======================================================
find_entry called with index = 0
read_mapping_page failed!
ERROR: (device loop0): txCommit:
ERROR: (device loop0): remounting filesystem as read-only
================================================================================
UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:381:12
shift exponent 134217736 is too large for 64-bit type 'long long'
CPU: 1 PID: 5068 Comm: syz-executor350 Not tainted 6.3.0-rc2-syzkaller-00069-g0ddc84d2dd43 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 03/02/2023
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
 ubsan_epilogue lib/ubsan.c:217 [inline]
 __ubsan_handle_shift_out_of_bounds+0x3c3/0x420 lib/ubsan.c:387
 dbFree+0x46e/0x650 fs/jfs/jfs_dmap.c:381
 txFreeMap+0x96a/0xd50 fs/jfs/jfs_txnmgr.c:2510
 xtTruncate+0xe5c/0x3260 fs/jfs/jfs_xtree.c:2467
 jfs_free_zero_link+0x46e/0x6e0 fs/jfs/namei.c:758
 jfs_evict_inode+0x35f/0x440 fs/jfs/inode.c:153
 evict+0x2a4/0x620 fs/inode.c:665
 __dentry_kill+0x436/0x650 fs/dcache.c:607
 shrink_dentry_list+0x39c/0x6a0 fs/dcache.c:1201
 shrink_dcache_parent+0xcd/0x480
 do_one_tree+0x23/0xe0 fs/dcache.c:1682
 shrink_dcache_for_umount+0x7d/0x120 fs/dcache.c:1699
 generic_shutdown_super+0x67/0x340 fs/super.c:472
 kill_block_super+0x7e/0xe0 fs/super.c:1398
 deactivate_locked_super+0xa4/0x110 fs/super.c:331
 cleanup_mnt+0x426/0x4c0 fs/namespace.c:1177
 task_work_run+0x24a/0x300 kernel/task_work.c:179
 exit_task_work include/linux/task_work.h:38 [inline]
 do_exit+0x68f/0x2290 kernel/exit.c:869
 do_group_exit+0x206/0x2c0 kernel/exit.c:1019
 __do_sys_exit_group kernel/exit.c:1030 [inline]
 __se_sys_exit_group kernel/exit.c:1028 [inline]
 __x64_sys_exit_group+0x3f/0x40 kernel/exit.c:1028
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x41/0xc0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7fa87e2289b9
Code: Unable to access opcode bytes at 0x7fa87e22898f.
RSP: 002b:00007fff4bfe3938 EFLAGS: 00000246 ORIG_RAX: 00000000000000e7
RAX: ffffffffffffffda RBX: 00007fa87e2a3330 RCX: 00007fa87e2289b9
RDX: 000000000000003c RSI: 00000000000000e7 RDI: 0000000000000001
RBP: 0000000000000001 R08: ffffffffffffffc0 R09: 00007fa87e29de40
R10: 00007fff4bfe3850 R11: 0000000000000246 R12: 00007fa87e2a3330
R13: 0000000000000001 R14: 0000000000000000 R15: 0000000000000001
 </TASK>
================================================================================

db_l2nbperpage which is used as a shift exponent to get the buffer
for the current dmap will be less than and equal to 64. 

Tested via syzbot.

Reported-by: syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=2a70a453331db32ed491f5cbb07e81bf2d225715

Signed-off-by: Anup Sharma <anupnewsmail@gmail.com>
---
 fs/jfs/jfs_dmap.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..d2cf56dd8f91 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -184,7 +184,10 @@ int dbMount(struct inode *ipbmap)
 		err = -EINVAL;
 		goto err_release_metapage;
 	}
-
+	if (bmp->db_l2nbperpage >= 64) {
+		err = -EINVAL;
+		goto err_release_metapage;
+	}
 	bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
 	bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
 	bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
